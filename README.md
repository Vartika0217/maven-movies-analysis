# 🎬 Maven Movies SQL Analysis

This project showcases a series of SQL queries used to analyze the **Maven Movies** database, a fictional DVD rental dataset. The goal is to extract business insights related to staff, inventory, customer activity, film diversity, and payment trends — useful for operations, fraud monitoring, and customer engagement strategies.

---

## 📌 Project Overview

The SQL queries in this project answer specific business questions such as:

- Who are the staff members and which stores do they work at?
- How is inventory distributed across stores?
- How many active customers does each store serve?
- What is the exposure in case of a data breach?
- How diverse is the film offering?
- What are the film replacement costs?
- What are the average and maximum customer payments?
- Who are the top customers by rental volume?

Each query is labeled and documented in the main SQL file.

---

## 🗂️ File Structure

Maven_Analysis.sql/
├── Maven_Analysis.sql # Main SQL script with all analytical queries
├── data/
│ └── Mavenmovies(3).sql # Database dump file for import
└── README.md # Project documentation


## 🛠️ Technologies Used

- **SQL** (MySQL syntax)
- **MySQL Workbench**
- **VS code & GitHub**


## 📂 Dataset

The Maven Movies dataset is a sample relational database simulating a DVD rental business. It includes tables like:

- `staff`, `store`, `customer`, `inventory`
- `film`, `category`, `rental`, `payment`

> ⚠️ If the `maven_movies.sql` file is included in this repo, GitHub may not preview it due to size, but it can still be downloaded and imported locally.
