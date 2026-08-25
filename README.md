# Agricultural Production in Brazil — LSPA

## Overview

This project explores agricultural production in Brazil using data from the **LSPA (Systematic Survey of Agricultural Production)** conducted by IBGE.

The objective was to combine **exploratory data analysis** with a business-oriented perspective on Brazilian agriculture, using Power BI and R to investigate production, cultivated area, yield, products, and geographic distribution.

## Data Preparation

The original data was provided in Excel spreadsheets containing four main datasets:

- Production
- Planted Area
- Harvested Area
- Yield

The data was imported into **Power BI** and transformed using **Power Query**. The transformations included restructuring the tables, removing unnecessary rows and columns, promoting headers, handling missing values, unpivoting columns, renaming fields, filtering records, and converting data types.

The same transformation process was applied to the four datasets to create a consistent structure for analysis.

## Dashboard

The final Power BI report contains three pages:

### 1. Overview

Provides a general view of Brazilian agricultural production, including:

- Total production
- Harvested-to-planted area ratio
- Average yield
- Production evolution over time
- Yield evolution over time
- Production by Brazilian state
- Product filtering

The page also includes a time-series forecast to explore possible short-term trends in production and yield.

### 2. Product Contribution

Explores the contribution of different agricultural products to total Brazilian production through two bar charts: one comparing production and another comparing average yield, allowing analysis of the relative importance and productivity of each crop.

### 3. Production Evolution

Uses a **Ribbon Chart** to explore how the position and production of different agricultural products evolved over time.

## Geographic Visualization with R

The Brazilian state-level production map was developed in **R** and integrated into the Power BI report.

The visualization was created using:

- `ggplot2` — data visualization
- `geobr` — Brazilian geographic data
- `dplyr` — data manipulation
- `ggspatial` — map annotations and spatial elements

The map uses a continuous color scale to represent agricultural production across Brazilian states.

## Tools & Technologies

- **Power BI**
- **Power Query**
- **DAX**
- **R**
- **ggplot2**
- **geobr**
- **dplyr**
- **ggspatial**
- **Microsoft Excel**

## Data Source

The data used in this project was obtained from the **Brazilian Institute of Geography and Statistics (IBGE)** through the **LSPA — Levantamento Sistemático da Produção Agrícola**.

Official IBGE data source:

[IBGE — LSPA](https://sidra.ibge.gov.br/tabela/6588)

The LSPA provides information on agricultural area, production, and average yield for the crops covered by the survey. 

Author: Nicolas Zafred Paiva
