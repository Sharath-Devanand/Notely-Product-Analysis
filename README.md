# Notely - Product Feature Analysis  

##  Project Background  
Notely (fictitious product) is a cross-platform note-taking productivity tool, launched in 2023. It supports features like sharing notes, folder organization, and template-based note creation.  

This project simulates a **product analytics case study**, with a synthetic dataset designed to evaluate how a data analyst might support product strategy.  

**Note:** Notely and the dataset are entirely fictitious, generated for the purpose of this project. This work is not affiliated with any existing product or company.  

---

## Objectives  
As a product data analyst, the project focuses on answering high-level questions around product strategy:  

- **User Segmentation** → country, device types, demographics  
- **Onboarding & Activation** → signup-to-first-action rates, activation drivers  
- **Retention** → features correlated with user stickiness and long-term usage  
- **Feature Adoption** → usage patterns of notes, folders, templates, sharing  
- **Funnel Analysis (Planned)** → identifying drop-offs in the user journey  

---

## Data  
The synthetic dataset (generated with the help of LLMs) is modeled to represent common product analytics use cases.  

**Tables included:**  
- **Users** → country, device, join date, age  
- **Events** → user activity logs  
- **Notes** → metadata on notes (folders, shared, templates, favorites)  
- **Templates** → predefined note templates  
- **Folders** → folder-to-user and folder-to-note mapping  

---

## Current Work  
Completed analyses:  
- Defined **performance metrics**: engagement, activity status, retention flags (D7/D14), stickiness (DAU/MAU).  
- **User segmentation**: demographics across country, device, and age distribution.  
- **Activation patterns**: time-to-first-note, role of folders/templates in speeding up onboarding.  
- **Retention drivers**: identified features most associated with longer-term retention.  
- **Feature adoption trends**: share of users engaging with multiple features, template usage distribution.  

---

## Future Work  
- Funnel analysis (Signup → First Note → Feature Usage)  
- Cohort-based retention visualizations  
- Additional feature impact modeling  

---

## Tools  
- **SQL (BigQuery)** → data extraction & transformation  
- **Python** → statistical analysis  
- **Looker** → reporting & dashboards  

---

## Next Steps  
This repository will be updated with additional insights, visualizations, and reports as I continue building out the analysis.  
