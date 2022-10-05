# Characteristics of Health Insurance and Access to Care across the United States and Minnesota


### Intro
During the coronavirus pandemic and even some previous years, we have seen some concerning decreases in healthcare coverage. This project report reflects on data gathered from several sources including the U.S. Census Bureau and the Behavioral Risk Factor Surveillance System (BRFSS),  from which we have used to analyze healthcare more precisely. Specifically, we examine factors behind lacking health insurance or lacking sufficient access to healthcare. Additionally, we devise a machine learning model which predicts an individual’s insurance status based on various demographic factors. 
In an increasingly diverse country, it is critical to not only track health insurance coverage overall, but also by various demographic groups. For this reason, a significant portion of our analysis takes into account numerous demographic factors such as age, race, sex, population, income level, etc. Additionally, we attempt to explain the ‘why’ behind the scenes of health insurance coverage. For instance, we analyze a large collection of data gathered by the National Health Interview Survey, which provides extensive information on not only demographic details but also reasons for lacking health insurance or access thereof.  The primary objective of our research is to identify trends or patterns of health insurance coverage so that resources can be best allocated to areas or groups where coverage is less common/accessible. For the purpose of this work, we define sufficient access to healthcare as those who do not delay or avoid seeking healthcare services due to cost or location. Uninsured refer to those who do not have any type of health insurance. 



### Exploratory Questions
  * How do unisurance rates vary among various demographics such as race, age, sex, population, income, educational attainment level?
  * How does access to healthcare vary at a national level and by county?
  * How does access to healthcare vary among Minnesota counties?
  * Do rates of uninsurance vary based on offered coverage types? 
  * Does the rate of uninsurance vary for individuals based on the number of hospitals in their county?
  * Can we predict which areas will have more or less coverage based on demographics, income, hospital count or other factors?
  * For those who are covered, is their coverage sufficient for their health needs?



### Initial datasets:
  * Census SAHIE 
      * [2019 Small Area Health Insurance Estimates (SAHIE) using the American Community Survey (ACS) ](https://www.census.gov/data/datasets/time-series/demo/sahie/estimates-acs.html)
  * BRFSS: Healthcare Access/Coverage
      * [BRFSS: Table of Health Care Access/Coverage | Chronic Disease and Health Promotion Data & Indicators (cdc.gov)](https://chronicdata.cdc.gov/Behavioral-Risk-Factors/BRFSS-Table-of-Health-Care-Access-Coverage/f7a2-7inb)
  * Healthcare estimates by demographics & population (Census)
      * [S2701: SELECTED CHARACTERISTICS OF... - Census Bureau Table](https://data.census.gov/cedsci/table?q=health%20insurance&g=0400000US27,27%240500000&tid=ACSST1Y2021.S2701&moe=false)
      * Private health insurance: [S2703: PRIVATE HEALTH INSURANCE... - Census Bureau Table](https://data.census.gov/cedsci/table?q=health%20insurance&g=0400000US27,27%240500000&tid=ACSST1Y2021.S2703)
      * Public health insurance: [S2704: PUBLIC HEALTH INSURANCE... - Census Bureau Table](https://data.census.gov/cedsci/table?q=health%20insurance&g=0400000US27,27%240500000&tid=ACSST1Y2021.S2704)
   * [Hopsital count by county in Minnesota for 2019](https://data.census.gov/cedsci/table?q=hospital%20cb&g=0400000US27,27%240500000)
   * [Behavioral Risk Factors: Selected Metropolitan Area Risk Trends (SMART) MMSA Prevalence Data (Subset for 2019)](https://chronicdata.cdc.gov/Behavioral-Risk-Factors/Behavioral-Risk-Factors-Selected-Metropolitan-Area/j32a-sa6u/data)
   * [National Health Interview Survey](https://www.cdc.gov/nchs/nhis/index.htm)
   * [Population estimates and demographics by county for Minnesota for 2019](https://data.census.gov/cedsci/table?q=county%20population&g=0400000US27,27%240500000&tid=ACSDP1Y2021.DP05&moe=false)



### Entity Relationship Diagram:
![CapstoneERD](https://user-images.githubusercontent.com/110693932/192833067-60242816-bda7-4ec2-93db-b53e26b6bf7e.png)



### Data Platform Diagram:
![Data_Platform_Diagram](https://user-images.githubusercontent.com/110693932/192818805-a0e8ec38-2a1c-4a01-8849-2e7805281b0c.png)


### Requirements to Run Code Folder Contents:
* Azure Databricks for .ipynb files
* Azure Data Studio for .sql file
* [Required Libraries](https://github.com/kylee-lapierre/capstone-healthcare/blob/main/code/Required%20Libraries)
* User name(s) for populating SQL tables
* Password(s) for populatin SQL tables
* App token for CDC Data API (instructions at: https://dev.socrata.com/foundry/chronicdata.cdc.gov/f7a2-7inb)
