# Mtcars Shiny App & Presentation

This project is part of the Johns Hopkins Data Science specialization.  
It explores the built-in **mtcars** dataset in R and demonstrates the use of **Shiny** for building interactive web applications, along with a reproducible pitch created in R Markdown.

---

## 📊 App Overview
The Shiny app allows users to:
- Select a variable from the `mtcars` dataset (`mpg`, `hp`, `wt`, or `disp`).
- Adjust the number of bins with a slider.
- View an interactive histogram of the selected variable.
- See summary statistics (sample size, mean, standard deviation).

---

## 🚀 Live App
You can try the live app here:  
👉 [Click here to view the app](https://m5ov0p-daniel-ak1lu.shinyapps.io/project-12/)

---

## 📑 Presentation
The reproducible pitch presentation was created with **Slidy**.  
It explains the app’s functionality, code structure, and provides examples of R features used.  

The presentation includes:
- Introduction and motivation.
- App features and screenshots.
- Code explanation.
- Link to the live Shiny app.

---

## 📂 Files in this Repository
- `app.R` → Shiny app code.  
- `MtcarsPresentation.Rmd` → R Markdown presentation source.  
- `MtcarsPresentation.html` → Knitted HTML presentation (for easy viewing).  
- `README.md` → This file.  

---

## ▶️ Running Locally
To run the app locally in RStudio:
```r
library(shiny)
runApp("app.R")
