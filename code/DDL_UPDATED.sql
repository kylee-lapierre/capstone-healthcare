-- Join Tables

-- State Table
CREATE TABLE [State](
    StateID INT PRIMARY KEY IDENTITY(1,1), 
    StateName VARCHAR(50) NOT NULL
)

-- County Table
CREATE TABLE County(
    CountyID INT PRIMARY KEY IDENTITY(1,1),
    CountyName VARCHAR(50) NOT NULL
)

-- Question Table
CREATE TABLE Question(
    QuestionID INT PRIMARY KEY IDENTITY(1,1),
    Question VARCHAR(150) NOT NULL
)

-- Response Table
CREATE TABLE Response(
    ResponseID INT PRIMARY KEY IDENTITY(1,1),
    Response VARCHAR(50) NOT NULL
)

-- Category Table
CREATE TABLE Category(
    CategoryID INT PRIMARY KEY IDENTITY(1,1),
    Category VARCHAR(50)
    )
    
-- Break Out Table
CREATE TABLE BreakOut(
    BreakOutID INT PRIMARY KEY IDENTITY(1,1),
    CategoryID INT NOT NULL,
    CONSTRAINT FK_BreakOut_CategoryID
        FOREIGN KEY (CategoryID)
        REFERENCES Category(CategoryID),
    BreakOut VARCHAR(60)
)


-- Main tables

-- Hospital Table
CREATE TABLE Hospital(
    HospitalID INT PRIMARY KEY IDENTITY(1,1),
    StateID INT NOT NULL,
    CONSTRAINT FK_Hospital_StateID
        FOREIGN KEY (StateID)
        REFERENCES [State](StateID),
    Different_Establishments VARCHAR(150) NOT NULL,
    Establishment_Size VARCHAR(50) NOT NULL,
    Total_Establishments INT NOT NULL,
    Employee_Size INT NOT NULL
);

-- BRFSS Coverage Table
CREATE TABLE Coverage(
    CoverageID INT PRIMARY KEY IDENTITY(1,1),
    StateID INT NOT NULL,
    CONSTRAINT FK_Coverage_StateID
        FOREIGN KEY (StateID)
        REFERENCES [State](StateID),
    QuestionID INT NOT NULL,
    CONSTRAINT FK_Coverage_QuestionID
        FOREIGN KEY (QuestionID)
        REFERENCES Question(QuestionID),
    ResponseID INT NOT NULL,
    CONSTRAINT FK_Coverage_ResponseID
        FOREIGN KEY (ResponseID)
        REFERENCES Response(ResponseID),
    BreakOutID INT NOT NULL,
    CONSTRAINT FK_Coverage_BreakOutID
        FOREIGN KEY (BreakOutID)
        REFERENCES BreakOut(BreakOutID),
    Data_Value FLOAT NOT NULL,
    Sample_Size INT NOT NULL
)

-- BRFSS SMART Table
CREATE TABLE Metro(
    MetroID INT PRIMARY KEY IDENTITY(1,1),
    QuestionID INT NOT NULL,
    CONSTRAINT FK_Metro_QuestionID
        FOREIGN KEY (QuestionID)
        REFERENCES Question(QuestionID),
    ResponseID INT NOT NULL,
    CONSTRAINT FK_Metro_ResponseID
        FOREIGN KEY (ResponseID)
        REFERENCES Response(ResponseID),
    Location_Desc VARCHAR(50) NOT NULL,
    Data_Value FLOAT NOT NULL,
    Sample_Size INT NOT NULL
)

-- SAHIE Table
CREATE TABLE Sahie(
    SahieID INT PRIMARY KEY IDENTITY(1,1),
    StateID INT NOT NULL,
    CONSTRAINT FK_Sahie_StateID
        FOREIGN KEY (StateID)
        REFERENCES [State](StateID),
    CountyID INT NOT NULL,
    CONSTRAINT FK_Sahie_CountyID
        FOREIGN KEY (CountyID)
        REFERENCES County(CountyID),
    Age_Cat VARCHAR(50) NOT NULL,
    Race_Cat VARCHAR(50) NOT NULL,
    Sex_Cat VARCHAR(50) NOT NULL,
    Income_Cat VARCHAR(50) NOT NULL,
    Num_Demo VARCHAR(50) NOT NULL, 
    Num_Demo_MOE VARCHAR(50) NOT NULL,
    NUI VARCHAR(50) NOT NULL,
    NUI_MOE VARCHAR(50) NOT NULL,
    NI VARCHAR(50) NOT NULL,
    NI_MOE VARCHAR(50) NOT NULL,
    PCTUI_Demo VARCHAR(50) NOT NULL,
    PCTUI_Demo_MOE VARCHAR(50) NOT NULL,
    PCTI_Demo VARCHAR(50) NOT NULL,
    PCTI_Demo_MOE VARCHAR(50) NOT NULL,
    PCTUI VARCHAR(50) NOT NULL,
    PCTUI_MOE VARCHAR(50) NOT NULL,
    PCTI VARCHAR(50) NOT NULL,
    PCTI_MOE VARCHAR(50) NOT NULL
)

-- PublicCoverageMinnesota Table
CREATE TABLE PublicCoverageMinnesota(
    PublicID INT PRIMARY KEY IDENTITY(1,1),
    CountyID INT NOT NULL,
    CONSTRAINT FK_PublicCoverage_CountyID
        FOREIGN KEY (CountyID)
        REFERENCES County(CountyID),
   StateID INT NOT NULL,
    CONSTRAINT FK_PublicCoverage_StateID
        FOREIGN KEY (StateID)
        REFERENCES [State](StateID),
    Medicare VARCHAR(50) NOT NULL,
    [Medicare<19]  VARCHAR(50) NOT NULL,
    [Medicare19-64] VARCHAR(50) NOT NULL,
    [Medicare65+] VARCHAR(50) NOT NULL,
    Medicaid VARCHAR(50) NOT NULL,
    [Medicaid<19] VARCHAR(50) NOT NULL,
    [Medicaid19-64] VARCHAR(50) NOT NULL,
    [Medicaid65+] VARCHAR(50) NOT NULL,
    VA VARCHAR(50) NOT NULL,
    [VA<19] VARCHAR(50) NOT NULL,
    [VA19-64] VARCHAR(50) NOT NULL,
    [VA65+] VARCHAR(50) NOT NULL,
    Below_138_Poverty VARCHAR(50) NOT NULL,
    AtorAbove_138_Poverty VARCHAR(50) NOT NULL,
    Fulltime_Yearround VARCHAR(50) NOT NULL,
    [Fulltime<6Y] VARCHAR(50) NOT NULL,
    [Fulltime6-18Y] VARCHAR(50) NOT NULL,
    [Fulltime19-25Y] VARCHAR(50) NOT NULL,
    [Fulltime26-34Y] VARCHAR(50) NOT NULL,
    [Fulltime35-44Y] VARCHAR(50) NOT NULL,
    [Fulltime45-54Y] VARCHAR(50) NOT NULL,
    [Fulltime55-64Y] VARCHAR(50) NOT NULL,
    [Fulltime65-74Y] VARCHAR(50) NOT NULL,
    [Fulltime75+] VARCHAR(50) NOT NULL,
    Public_Insurance_Alone VARCHAR(50) NOT NULL,
    Medicare_Alone VARCHAR(50) NOT NULL,
    Medicaid_Alone VARCHAR(50) NOT NULL,
    VA_Alone VARCHAR(50) NOT NULL
)

-- PrivateCoverageMinnesota Table
CREATE TABLE PrivateCoverageMinnesota(
    PrivateID INT PRIMARY KEY IDENTITY(1,1),
    CountyID INT NOT NULL,
    CONSTRAINT FK_PrivateCoverage_CountyID
        FOREIGN KEY (CountyID)
        REFERENCES County(CountyID),
    StateID INT NOT NULL,
    CONSTRAINT FK_PrivateCoverage_StateID
        FOREIGN KEY (StateID)
        REFERENCES [State](StateID),
    Employer VARCHAR(50) NOT NULL,
    [Employer<19]  VARCHAR(50) NOT NULL,
    [Employer19-64] VARCHAR(50) NOT NULL,
    [Employer65+] VARCHAR(50) NOT NULL,
    Direct_Purchase VARCHAR(50) NOT NULL,
    [Direct_Purchase<19] VARCHAR(50) NOT NULL,
    [Direct_Purchase19-64] VARCHAR(50) NOT NULL,
    [Direct_Purchase65+] VARCHAR(50) NOT NULL,
    Military VARCHAR(50) NOT NULL,
    [Military<19] VARCHAR(50) NOT NULL,
    [Military19-64] VARCHAR(50) NOT NULL,
    [Military65+] VARCHAR(50) NOT NULL,
    Below_138_Poverty VARCHAR(50) NOT NULL,
    AtorAbove_138_Poverty VARCHAR(50) NOT NULL,
    Fulltime_Yearround VARCHAR(50) NOT NULL,
    [Fulltime<6Y] VARCHAR(50) NOT NULL,
    [Fulltime6-18Y] VARCHAR(50) NOT NULL,
    [Fulltime19-25Y] VARCHAR(50) NOT NULL,
    [Fulltime26-34Y] VARCHAR(50) NOT NULL,
    [Fulltime35-44Y] VARCHAR(50) NOT NULL,
    [Fulltime45-54Y] VARCHAR(50) NOT NULL,
    [Fulltime55-64Y] VARCHAR(50) NOT NULL,
    [Fulltime65-74Y] VARCHAR(50) NOT NULL,
    [Fulltime75+] VARCHAR(50) NOT NULL,
    Private_Insurance_Alone VARCHAR(50) NOT NULL,
    Employer_Alone VARCHAR(50) NOT NULL,
    Direct_Purchase_Alone VARCHAR(50) NOT NULL,
    Military_Alone VARCHAR(50) NOT NULL
)

-- HealthInsurancePop
CREATE TABLE HealthInsurance(
    HealthID INT PRIMARY KEY IDENTITY(1,1),
    StateID INT NOT NULL,
    CONSTRAINT FK_HealthInsurance_StateID
        FOREIGN KEY (StateID)
        REFERENCES [State](StateID),
    CountyID INT NOT NULL,
    CONSTRAINT FK_HealthInsurance_CountyID
        FOREIGN KEY (CountyID)
        REFERENCES County(CountyID),
    Population_Category VARCHAR(50) NOT NULL,
    Total_Population INT NOT NULL,
    Under_6Y INT NOT NULL,
    _6_to_18Y INT NOT NULL,
    _19_to_25Y INT NOT NULL,
    _26_to_34Y INT NOT NULL,
    _35_to_44Y INT NOT NULL,
    _45_to_54Y INT NOT NULL,
    _55_to_64Y INT NOT NULL,
    _65_to_74Y INT NOT NULL,
    _75_and_Older INT NOT NULL,
    Male INT NOT NULL,
    Female INT NOT NULL,
    White INT NOT NULL,
    African_American INT NOT NULL,
    American_Indian INT NOT NULL,
    Asian INT NOT NULL,
    Pacific_Islander INT NOT NULL,
    Some_Other_Race INT NOT NULL,
    Hispanic INT NOT NULL,
    Native_Born INT NOT NULL,
    Foreign_Born INT NOT NULL,
    Naturalized INT NOT NULL,
    Not_A_Citizen INT NOT NULL,
    Less_Than_High_School INT NOT NULL,
    High_School_or_Equivalent INT NOT NULL,
    Some_College INT NOT NULL,
    Bachelors_or_Higher INT NOT NULL,
    Under_25000S INT NOT NULL,
    _25000_to_49999S INT NOT NULL,
    _50000_to_74999S INT NOT NULL,
    _75000_to_99999S INT NOT NULL,
    Over_100000S INT NOT NULL
)

-- PopDemographic
CREATE TABLE PopDemo(
    PopDemoID INT PRIMARY KEY IDENTITY(1,1),
    StateID INT NOT NULL,
    CONSTRAINT FK_PopDemo_StateID
        FOREIGN KEY (StateID)
        REFERENCES [State](StateID),
    Total_Population INT NOT NULL, 
    Male INT NOT NULL, 
    Female INT NOT NULL, 
    Under_5Y INT NOT NULL, 
    _5_to_9Y INT NOT NULL, 
    _10_to_14Y INT NOT NULL, 
    _15_to_19Y INT NOT NULL, 
    _20_to_24Y INT NOT NULL, 
    _25_to_34Y INT NOT NULL, 
    _35_to_44Y INT NOT NULL, 
    _45_to_54Y INT NOT NULL, 
    _55_to_59Y INT NOT NULL,
    _60_to_64Y INT NOT NULL, 
    _65_to_74Y INT NOT NULL, 
    _75_to_84Y INT NOT NULL, 
    _85_and_Older INT NOT NULL, 
    Hispanic INT NOT NULL, 
    White INT NOT NULL, 
    African_American INT NOT NULL, 
    American_Indian INT NOT NULL, 
    Asian INT NOT NULL, 
    Pacific_Islander INT NOT NULL, 
    Some_Other_Race INT NOT NULL
)

-- NHIS Table
CREATE TABLE Nhis(
    NhisID INT PRIMARY KEY IDENTITY(1,1),
    URBRRL INT NOT NULL,
    INCGRP_A INT NOT NULL,
    YRSINUS_A FLOAT NULL,
    CITZNSTP_A INT NOT NULL,
    NOTCOV_A INT NOT NULL,
    RSNHIMISS_A FLOAT NULL,
    RSNHIJOB_A FLOAT NULL,
    EDUC_A INT NOT NULL,
    HISDETP_A INT NOT NULL,
    HISP_A INT NOT NULL,
    SEX_A INT NOT NULL,
    AGEP_A INT NOT NULL,
    NATUSBORN_A INT NOT NULL,
    VADISB_A FLOAT NULL,
    AFVET_A INT NOT NULL,
    MARITAL_A INT NOT NULL,
    ORIENT_A INT NOT NULL,
    MHTHDLY_A INT NOT NULL,
    PAYWORRY_A INT NOT NULL,
    PAYBLL12M_A INT NOT NULL,
    RSNHIOTH_A FLOAT NULL,
    RSNHIWAIT_A FLOAT NULL,
    RSNHIMEET_A FLOAT NULL,
    RSNHICONF_A FLOAT NULL,
    RSNHIELIG_A FLOAT NULL,
    RSNHIWANT_A FLOAT NULL,
    RSNHICOST_A FLOAT NULL
)

-- Health Model Table
CREATE TABLE HealthModel(
    HealthModelID INT PRIMARY KEY IDENTITY(1,1),
    [State] VARCHAR(50) NOT NULL,
    County VARCHAR(50) NOT NULL,
    Insurance_Category VARCHAR(50) NOT NULL,
    Total_Population INT NOT NULL,
    Under_6Y INT NOT NULL,
    _6_to_18Y INT NOT NULL,
    _19_to_25Y INT NOT NULL,
    _26_to_34Y INT NOT NULL,
    _35_to_44Y INT NOT NULL,
    _45_to_54Y INT NOT NULL,
    _55_to_64Y INT NOT NULL,
    _65_to_74Y INT NOT NULL,
    _75_and_Older INT NOT NULL,
    Male INT NOT NULL,
    Female INT NOT NULL,
    White INT NOT NULL,
    African_American INT NOT NULL,
    American_Indian INT NOT NULL,
    Asian INT NOT NULL,
    Pacific_Islander INT NOT NULL,
    Some_Other_Race INT NOT NULL,
    Hispanic INT NOT NULL,
    Native_Born INT NOT NULL,
    Foreign_Born INT NOT NULL,
    Naturalized INT NOT NULL,
    Not_A_Citizen INT NOT NULL,
    Less_Than_High_School INT NOT NULL,
    High_School_or_Equivalent INT NOT NULL,
    Some_College INT NOT NULL,
    Bachelors_or_Higher INT NOT NULL,
    Under_25000S INT NOT NULL,
    _25000_to_49999S INT NOT NULL,
    _50000_to_74999S INT NOT NULL,
    _75000_to_99999S INT NOT NULL,
    Over_100000S INT NOT NULL,
    [Year] INT NOT NULL
)

-- Test Demographic Data
CREATE TABLE TestDemo(
    PopDemoID INT PRIMARY KEY IDENTITY(1,1),
    StateID INT NOT NULL,
    CONSTRAINT FK_PopDemo_StateID
        FOREIGN KEY (StateID)
        REFERENCES [State](StateID),
    CountyID INT NOT NULL,
    CONSTRAINT FK_HealthInsurance_CountyID
        FOREIGN KEY (CountyID)
        REFERENCES County(CountyID),
    Total_Population INT NOT NULL, 
    Male INT NOT NULL, 
    Female INT NOT NULL, 
    Under_5Y INT NOT NULL, 
    _5_to_9Y INT NOT NULL, 
    _10_to_14Y INT NOT NULL, 
    _15_to_19Y INT NOT NULL, 
    _20_to_24Y INT NOT NULL, 
    _25_to_34Y INT NOT NULL, 
    _35_to_44Y INT NOT NULL, 
    _45_to_54Y INT NOT NULL, 
    _55_to_59Y INT NOT NULL,
    _60_to_64Y INT NOT NULL, 
    _65_to_74Y INT NOT NULL, 
    _75_to_84Y INT NOT NULL, 
    _85_and_Older INT NOT NULL, 
    Hispanic INT NOT NULL, 
    White INT NOT NULL, 
    African_American INT NOT NULL, 
    American_Indian INT NOT NULL, 
    Asian INT NOT NULL, 
    Pacific_Islander INT NOT NULL, 
    Some_Other_Race INT NOT NULL
)