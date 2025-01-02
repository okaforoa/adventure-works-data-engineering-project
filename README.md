
# Azure Data Engineering Project: End-to-End Data Pipeline and Reporting

## Overview

This project demonstrates the implementation of an end-to-end data pipeline using Microsoft Azure tools and technologies. The architecture includes data ingestion, transformation, storage, and reporting using services like Azure Data Factory, Azure Data Lake Gen2, Databricks, Azure Synapse Analytics, and Power BI. The solution showcases how to process raw data, transform it into meaningful insights, and present it using a reporting dashboard.

## Solution Architecture

The solution architecture follows these steps:
1. **Data Source**: Data is ingested from an external HTTP source.
2. **Data Ingestion**: Azure Data Factory orchestrates the data ingestion process.
3. **Raw Data Storage**: Data is stored in Azure Data Lake Gen2 (Bronze Layer).
4. **Data Transformation**: Azure Databricks is used to transform raw data (Silver and Gold Layers).
5. **Serving Layer**: Transformed data is stored in Azure Synapse Analytics.
6. **Reporting**: Power BI consumes the data from Azure Synapse to create interactive dashboards.

![Solution Architecture](image.png)

## Repository Structure

```
|-- AdventureWorks_Report.pbix          # Power BI report file
|-- Create External Table.sql           # SQL script for creating an external table
|-- Create External Tables and Data Sources.sql # SQL script for setting up data sources
|-- Create Schema.sql                   # SQL script for creating database schema
|-- Create Views Gold.sql               # SQL script for creating views on the Gold layer
|-- silver_layer.ipynb                  # Databricks notebook for processing the Silver layer
|-- image.png                           # Solution architecture diagram
|-- README.md                           # Project documentation
```

## Prerequisites

- **Azure Subscription**: Access to Azure Data Factory, Data Lake Gen2, Synapse Analytics, and Databricks.
- **Power BI Desktop**: For report creation and visualization.
- **Python and Jupyter Notebook**: For running the Databricks notebook.

## Setup Instructions

### 1. Data Ingestion
- Use the `Azure Data Factory` to set up a pipeline to pull data from the external HTTP source into the Azure Data Lake Gen2 (Raw/Bronze layer).

### 2. Raw Data Store
- Store the ingested data in the Bronze layer of Azure Data Lake Gen2.

### 3. Data Transformation
- **Silver Layer**: Process the raw data using the `silver_layer.ipynb` notebook. 
- **Gold Layer**: Use the SQL scripts (`Create Views Gold.sql`) to prepare the data for analytics and reporting.

### 4. Serving Layer
- Deploy the transformed data into Azure Synapse Analytics using the provided SQL scripts (`Create External Table.sql`, `Create External Tables and Data Sources.sql`, `Create Schema.sql`).

### 5. Reporting
- Open the `AdventureWorks_Report.pbix` file in Power BI Desktop and connect it to the Azure Synapse database for real-time insights.

## Features

- **Scalable Data Pipeline**: Built using Azure-native tools.
- **Efficient Data Processing**: Leverages Databricks for data transformation.
- **Interactive Reporting**: Power BI dashboards for actionable insights.
- **Best Practices**: Implements modern data engineering practices like ELT and layer separation.

## Technologies Used

- **Azure Data Factory**: Data orchestration and ingestion.
- **Azure Data Lake Gen2**: Data storage (Bronze, Silver, and Gold layers).
- **Azure Databricks**: Data transformation and enrichment.
- **Azure Synapse Analytics**: Serving layer for analytical workloads.
- **Power BI**: Visualization and reporting.

## Usage

1. Follow the setup instructions to deploy the data pipeline.
2. Run the `silver_layer.ipynb` notebook in Databricks for data transformation.
3. Execute the SQL scripts in Azure Synapse to create schemas, external tables, and views.
4. Open the Power BI report to visualize the data.

## Contact

For any questions or issues, feel free to reach out!
