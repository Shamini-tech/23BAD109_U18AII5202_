Lab Experiments – Data Visualization and Multivariate Analysis
Author

Roll Number: 23BAD109

This repository contains all lab exercises from Experiment 1 to Experiment 7 covering data visualization, multivariate analysis, and over-plotting reduction techniques in R.

Experiment 1 – Implementation of Data Charts

Objective: Create and analyze various data charts for visualizing student performance.

Scenario: Dataset contains student scores from internal tests and final grades. Visualization enables pattern recognition and grade distribution analysis.

Tools Used: R, ggplot2, dplyr

In-Lab Tasks Performed:

Bar chart: Subject-wise average internal marks

Line chart: Performance trend across internal tests

Pie chart: Grade distribution

Outcome: Identified subject-wise performance patterns, trends between internal tests, and grade distribution.

Repository Link: EX 1 – Data Charts

Experiment 2 – Implementation of Data Visualization Techniques

Objective: Apply various visualization techniques to analyze e-commerce transactions.

Scenario: Dataset contains transaction amounts and dates. Visualization highlights distribution and monthly trends.

Tools Used: R, ggplot2, dplyr, lubridate

In-Lab Tasks Performed:

Histogram: Distribution of transaction amounts

Boxplot: Identify outliers and spread

Heatmap: Monthly sales intensity

Outcome: Enabled understanding of transaction patterns, outliers, and sales trends across months.

Repository Link: EX 2 – Data Visualization Techniques

Experiment 3 – Designing Multivariate Patterns

Objective: Explore and visualize relationships among multiple health indicators.

Scenario: Dataset contains Age, BMI, Glucose Level, and Blood Pressure.

Tools Used: R, ggplot2, GGally, dplyr

In-Lab Tasks Performed:

Created Age_Group variable

Scatter plot matrix for multivariate visualization

Correlation matrix for numeric indicators

Outcome: Revealed relationships among health indicators and differences across age groups.

Repository Link: EX 3 – Designing Multivariate Patterns

Experiment 4 – Visual Encoding of Data

Objective: Apply visual encoding techniques to traffic accident data.

Scenario: Dataset contains Accident Type, Severity, and Location.

Tools Used: R, ggplot2

In-Lab Tasks Performed:

Encoded Severity using color

Encoded Frequency using point size

Encoded Accident Type using shape

Outcome: Quickly identified high-risk locations, severity patterns, and accident types.

Repository Link: EX 4 – Visual Encoding of Data

Experiment 5 – Interactive Dashboard Design using Power BI

Objective: Design an interactive dashboard for monitoring key academic and operational metrics.

Scenario: AI-based Smart Campus System tracks attendance, performance, and resource utilization.

Tools Used: Microsoft Power BI, campus dataset

In-Lab Tasks Performed:

KPI cards for attendance and performance

Filters by department and semester

Linked views and drill-down analysis

Outcome: Enabled administrators to monitor metrics, analyze trends, and make data-driven decisions.

Repository Link: EX 5 – Dashboard Design

Experiment 6 – Implementation of Multivariate Displays

Objective: Visualize and analyze relationships among Sales, Profit, Customer Segment, and Region.

Scenario: Adventure Works retail dataset requires pattern discovery and segment-wise analysis.

Tools Used: R, GGally, ggplot2, lattice

In-Lab Tasks Performed:

Parallel coordinates plot for Sales vs Profit by Customer Segment

Bubble chart with size = Sales, color = Region

Trellis display of Sales vs Profit by Region

Outcome: Revealed trends and patterns across segments and regions for data-driven decision-making.

Repository Link: EX 6 – Multivariate Displays

Experiment 7 – Over-Plotting Reduction Techniques in R

Objective: Reduce visual clutter in large-scale datasets for better clarity.

Scenario: Social media analytics dataset contains Likes, Comments, Shares, Post Reach, and Engagement. Large datasets caused over-plotting in scatter plots.

Tools Used: R, hexbin package

Techniques Implemented:

Alpha Blending: Reduced opacity to reveal dense regions

Jittering: Added noise to prevent overlap

Hexbin Aggregation: Represented density via hexagonal bins

Outcome: Over-plotting reduction allowed accurate interpretation and visualization of engagement patterns.

Files Included:

overplotting_lab.R – R script

7.social_media_interactions.csv – Dataset

README.md – Experiment documentation

Repository Link: EX 7 – Over-Plotting Reduction
