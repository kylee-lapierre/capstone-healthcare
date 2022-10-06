# Characteristics of Health Insurance and Access to Care across the United States and Minnesota


### Intro
During the coronavirus pandemic and even some previous years, we have seen some concerning decreases in healthcare coverage. This project report reflects on data gathered from several sources including the U.S. Census Bureau and the Behavioral Risk Factor Surveillance System (BRFSS),  from which we have used to analyze healthcare more precisely. Specifically, we examine factors behind lacking health insurance or lacking sufficient access to healthcare. Additionally, we devise a machine learning model which predicts an individual’s insurance status based on various demographic factors. 

In an increasingly diverse country, it is critical to not only track health insurance coverage overall, but also by various demographic groups. For this reason, a significant portion of our analysis takes into account numerous demographic factors such as age, race, sex, population, income level, etc. Additionally, we attempt to explain the ‘why’ behind the scenes of health insurance coverage. For instance, we analyze a large collection of data gathered by the National Health Interview Survey, which provides extensive information on not only demographic details but also reasons for lacking health insurance or access thereof.  The primary objective of our research is to identify trends or patterns of health insurance coverage so that resources can be best allocated to areas or groups where coverage is less common/accessible. For the purpose of this work, we define sufficient access to healthcare as those who do not delay or avoid seeking healthcare services due to cost or location. Uninsured refer to those who do not have any type of health insurance. 

### Table of Contents
 1. [Exploratory Questions](https://github.com/kylee-lapierre/capstone-healthcare#exploratory-questions)
 2. [Initial Datasets](https://github.com/kylee-lapierre/capstone-healthcare#initial-datasets)
 3. [Entity Relationship Diagram](https://github.com/kylee-lapierre/capstone-healthcare#entity-relationship-diagram)
 4. [Data Platform Diagram](https://github.com/kylee-lapierre/capstone-healthcare#data-platform-diagram)
 5. [Selected Visualizations](https://github.com/kylee-lapierre/capstone-healthcare#selected-visualizations)
 6. [Requirements to Run Code Folder Contents](https://github.com/kylee-lapierre/capstone-healthcare#requirements-to-run-code-folder-contents)

### Exploratory Questions
  * How do unisurance rates vary among various demographics such as race, age, sex, population, income, educational attainment level?
  * How does access to healthcare vary at a national level and by county?
  * How does access to healthcare vary among Minnesota counties?
  * Do rates of uninsurance vary based on offered coverage types? 
  * Does the rate of uninsurance vary for individuals based on the number of hospitals in their county?
  * Can we predict the coverage level for a county based on demographics, income or other factors?
  * For those who are covered, is their coverage sufficient for their health needs?



### Initial datasets:
  * [2019 Small Area Health Insurance Estimates (SAHIE) using the American Community Survey (ACS) ](https://www.census.gov/data/datasets/time-series/demo/sahie/estimates-acs.html)
  * [BRFSS: Table of Health Care Access/Coverage | Chronic Disease and Health Promotion Data & Indicators (cdc.gov)](https://chronicdata.cdc.gov/Behavioral-Risk-Factors/BRFSS-Table-of-Health-Care-Access-Coverage/f7a2-7inb)
  * Healthcare estimates by demographics & population (Census)
      * [S2701: SELECTED CHARACTERISTICS OF... - Census Bureau Table](https://data.census.gov/cedsci/table?q=health%20insurance&g=0400000US27,27%240500000&tid=ACSST1Y2021.S2701&moe=false)
      * Private health insurance: [S2703: PRIVATE HEALTH INSURANCE... - Census Bureau Table](https://data.census.gov/cedsci/table?q=health%20insurance&g=0400000US27,27%240500000&tid=ACSST1Y2021.S2703)
      * Public health insurance: [S2704: PUBLIC HEALTH INSURANCE... - Census Bureau Table](https://data.census.gov/cedsci/table?q=health%20insurance&g=0400000US27,27%240500000&tid=ACSST1Y2021.S2704)
   * [Hospital count by county in Minnesota for 2019](https://data.census.gov/cedsci/table?q=hospital%20cb&g=0400000US27,27%240500000)
   * [Behavioral Risk Factors: Selected Metropolitan Area Risk Trends (SMART) MMSA Prevalence Data (Subset for 2019)](https://chronicdata.cdc.gov/Behavioral-Risk-Factors/Behavioral-Risk-Factors-Selected-Metropolitan-Area/j32a-sa6u/data)
   * [National Health Interview Survey](https://www.cdc.gov/nchs/nhis/index.htm)
   * [Population estimates and demographics by county for Minnesota for 2019](https://data.census.gov/cedsci/table?q=county%20population&g=0400000US27,27%240500000&tid=ACSDP1Y2021.DP05&moe=false)
   * [Counties in United States](https://github.com/grammakov/USA-cities-and-states/blob/master/us_cities_states_counties.csv)


### Entity Relationship Diagram:
![CapstoneERD](https://user-images.githubusercontent.com/110693932/192833067-60242816-bda7-4ec2-93db-b53e26b6bf7e.png)



### Data Platform Diagram:
![Data_Platform_Diagram](https://user-images.githubusercontent.com/110693932/192818805-a0e8ec38-2a1c-4a01-8849-2e7805281b0c.png)

### Selected Visualizations:
 #### National Data
![Unisurance Rate by State, Age Group, and Income Level](https://user-images.githubusercontent.com/101714650/194357634-19fe8387-c7f5-4008-8074-a7875620c78d.png)

![Insurance Survey Responses by Income Group](https://user-images.githubusercontent.com/101714650/194362332-34a20d1c-d980-499b-8872-e21fee836622.png)

![Worry Over Healthcare Cost](https://user-images.githubusercontent.com/101714650/194363791-d6cd3b99-cf09-4c03-b756-a228fc6f7e75.png)

 #### Minnesota Data
![Uninsurance Rate by County in Minnesota](https://user-images.githubusercontent.com/101714650/194358211-016aea66-788e-455a-b86f-1e8fa92d0387.png)

![Public Insurance, Twin Cities](https://user-images.githubusercontent.com/101714650/194359930-bf6c5036-96c9-4506-a22f-8804fb7ec9ef.png)

![Fulltime Working Public Insurance Enrollees, Twin Cities](https://user-images.githubusercontent.com/101714650/194359724-a33c9e93-1649-4edc-8517-9f50c927283d.png)

![Hospital Type MN](https://user-images.githubusercontent.com/101714650/194361759-52540f1a-4176-475a-80be-ef01fe9ebc8e.png)

 ### Machine Learning Model
 * First model: predicts the insured and uninsured section in each county for 2020
 ![Confusion-Matrix](https://user-images.githubusercontent.com/110693932/194364260-75a7b630-06c9-4ccc-bed7-fe960ceaf835.png)
 
 * Second model: predicts the uninsured population that earns less than $25,000 for 2020
 ![ElasticNet](https://user-images.githubusercontent.com/110693932/194364282-1c5d1535-2654-4903-997a-1edb362573f0.png)




### Requirements to Run Code Folder Contents:
* Azure Databricks for .ipynb files
* Azure Data Studio for .sql file
* [Required Libraries](https://github.com/kylee-lapierre/capstone-healthcare/blob/main/code/Required%20Libraries)
* User name(s) for populating SQL tables
* Password(s) for populating SQL tables
* App token for CDC Data API (instructions at: https://dev.socrata.com/foundry/chronicdata.cdc.gov/f7a2-7inb)
