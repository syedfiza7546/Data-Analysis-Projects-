select location, date, new_cases, total_deaths, total_cases_per_million, population from PortfolioProject.dbo.CovidDeaths
Where continent is not null
order by 1,2


--select * from PortfolioProject.dbo.CovidVaccinations

select location, date, population,  total_deaths_per_million, total_cases_per_million, 
(total_deaths_per_million/total_cases_per_million)*100 as PercentPopulationInfected,
(total_deaths/population)*100 as Pop_Deaths_percent
from PortfolioProject.dbo.CovidDeaths
--where location like '%india%'
order by 1,2

--Highest Death Rate
select location, population, max(cast(total_deaths as int)) as HighestDeathCount,  
max((total_deaths/population))*100 as PercentPopulationDeaths
from PortfolioProject.dbo.CovidDeaths
Where continent is not null
and population  is not null
and total_deaths is not null
group by location, population
order by PercentPopulationDeaths desc

-- CONTINENT WISE DATA
select continent,  max(cast(total_deaths as int)) as HighestDeathCount,  
max((total_deaths/population))*100 as PercentPopulationDeaths
from PortfolioProject.dbo.CovidDeaths
Where continent is not null
and population  is not null
and total_deaths is not null
group by continent
order by PercentPopulationDeaths desc

-- GLOBAL NUMBERS
select  date, sum(new_cases)as NewCasesPerDay, sum(cast(new_deaths as int))as NewDeathsPerDay, sum(cast(new_deaths as int))/sum(new_cases)*100 as NewDeathsPercent
from PortfolioProject.dbo.CovidDeaths
Where continent is not null
and NewCasesPerDay is not null
group by date
order by 3


-- TOTAL POPULATION VS VACCINATIONS USING CTE
	
with popvsvac (Continent, Location,  Population, NewVaccinations, RollingPeopleVaccinated)
as
(
select dea.continent, dea.location,  dea.population, vac.new_vaccinations,
sum(cast(vac.new_vaccinations as int))over (partition by dea.location order by dea.date) as RollingPeopleVaccinated
from PortfolioProject.dbo.CovidDeaths dea
Join PortfolioProject.dbo.CovidVaccinations vac
      on dea.location = vac.location
	  and dea.date=vac.date
	  Where dea.continent is not null
	  and vac.new_vaccinations is not null
	 -- order by 2,3,4,6
	  )
	  select *,(RollingPeopleVaccinated)/Population*100
	  from popvsvac


-- TOTAL POPULATION VS VACCINATIONS USING Temp table
	
DROP Table if exists #TotalPopVac
CREATE TABLE #TotalPopVac
(
Continent nvarchar(255), 
Location nvarchar(255),  
Population numeric, 
NewVaccinations numeric, 
RollingPeopleVaccinated numeric
)
insert into #TotalPopVac
select dea.continent, dea.location,  dea.population, vac.new_vaccinations,
sum(cast(vac.new_vaccinations as int))over (partition by dea.location order by dea.date) as RollingPeopleVaccinated
from PortfolioProject.dbo.CovidDeaths dea
Join PortfolioProject.dbo.CovidVaccinations vac
      on dea.location = vac.location
	  and dea.date=vac.date
	  Where dea.continent is not null
	  and vac.new_vaccinations is not null
	 -- order by 2,3,4,6
	  select *, (RollingPeopleVaccinated)/Population* 100 as 
	  from #TotalPopVac

	
-- ## PERCENTAGE OF MAX PEOPLE VACCINATED
WITH VaccinationData AS (
SELECT
        dea.continent,
        dea.location,
        dea.population,
        vac.new_vaccinations,
        SUM(CAST(vac.new_vaccinations AS INT)) OVER (PARTITION BY dea.location ORDER BY dea.date) AS RollingPeopleVaccinated
    FROM
        PortfolioProject.dbo.CovidDeaths dea
    JOIN
        PortfolioProject.dbo.CovidVaccinations vac ON dea.location = vac.location AND dea.date = vac.date
    WHERE
        dea.continent IS NOT NULL AND vac.new_vaccinations IS NOT NULL
)
SELECT
    vd.continent,
    vd.location,
    vd.population,
    vd.new_vaccinations,
    vd.RollingPeopleVaccinated,
    (vd.RollingPeopleVaccinated / vd.population) * 100 AS PercentagePeopleVaccinated,
    MAX(vd.RollingPeopleVaccinated) OVER (PARTITION BY vd.location) AS MaxPeopleVaccinated
FROM
    VaccinationData vd;
