# World Life Expectancy Analysis 📊

## Overview

The **World Life Expectancy Analysis** project examines global trends in life expectancy, adult mortality, GDP, and socio-economic factors over 15 years. Using SQL for data analysis, the project aims to identify patterns in health outcomes and understand how socio-economic factors like GDP influence life expectancy trends across countries and regions.

This project is structured around two datasets:

1. Life-Expectancy Cleaned.csv: A cleaned version of the raw data with removed duplicates, updated missing life expectancy values, and adjusted status based on conditions.
2. Life-Expectancy EDA.csv: Enhanced data used for exploratory analysis, including additional calculated fields for detailed insights.

### 

### Project Goals:

1. **Analyse Life Expectancy and Mortality Trends**:
    
    Track life expectancy and adult mortality rates by country and year over 15 years to identify long-term trends and changes in health outcomes.
    
2. **Examine Rolling Mortality Totals**:
    
    Calculate the rolling total of adult mortality for each country over the 15 years, providing insight into cumulative mortality patterns and their evolution.
    
3. **Explore Country-Level Comparisons**:
    
    Compare life expectancy and adult mortality across countries over the 15 years to understand regional health disparities and how they have changed over time.
    

### **Features**

1. **Data Cleaning and Transformation**
    
    **Cleaning Steps**:
    
    - Removed duplicates and corrected missing values.
    - Generated the **life-expectancy cleaned.csv** dataset for consistent analysis.
2. **SQL-Based Analysis**
    
    Using SQL, the following types of analysis are performed:
    
    - Aggregating life expectancy and adult mortality by country and year.
    - Identifying and removing duplicate records.
    - Imputing missing data (for life expectancy and adult mortality) based on neighbouring years.
3. **Exploratory Data Analysis (EDA)**
    - Using the **life-expectancy EDA.csv** dataset, additional metrics such as:
        - Average life expectancy by year.
        - Yearly fluctuations in life expectancy.
        - Trends in adult mortality and GDP over time.

---

### **Repository Contents**

| **File/Folder Name** | **Description** |
| --- | --- |
| **Data/Life-Expectancy Cleaned.csv** | Cleaned dataset for reliable analysis. |
| **Data/Life-Expectancy EDA.csv** | Enhanced dataset with additional calculated fields for EDA |
| SQL | SQL scripts for data cleaning and exploratory analysis. |
| **README.md** | Project overview and detailed instructions. |
