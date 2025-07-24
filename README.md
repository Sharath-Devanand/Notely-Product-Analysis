# Notely - Product Feature Analysis


## Project Background



Launched in 2023, Notely is a fresh off the market note-taking productivity tool with cross-platform accessibility. It comes with build-in features to share notes, categorise notes to folders, built from templates and more.

As a product data analyst, I am tasked with the following high-level questions to address product strategy - 

1. **User Segmentation** based on country and device types
2. **Onboarding & Activation** process optimisation
3. **Retention Analysis** to extract key features driving retention
4. **Feature Adoption** to evaluate feature’s impact on engagement
5. **Funnel Analysis** to identify critical drop-off points in user journey

(Note - The product/organisation is fictious, solely used for this project purposes and is not associated with any current market products. )

---

Dataset Information

The dataset is fictitious and synthesised with the help of public LLMs (Claude.ai). The database comprises of these following tables

1. Events - event logs comprising of _?_  event types made by a user at a given timestamp
2. Notes - created at, user, favourite, shared, folder, from template
3. Users - country, device, joined date, age (date of birth)
4. Templates - template name, category
5. Folders - notes, users

The code to generate the dataset can be found here.

---

Defining Performance Measures

Before addressing the above sections, I set out to define performance metrics to support in delivering insights with clarity.

1. Engagement - 
2. User Type - 
3. Activity status - 
4. D7, D14 retention - 

---

User Segmentation

1. What are the demographics of users - platform, country, age

The users database presents a mobile first note-taking application with over _?_ %.  

In terms of geographical distribution, the users are equally distributed across ten countries. Owing to the reason of the user data synthesised artificially, it is observed to have failed to model realistic scenarios where, the country of origin has a higher user base or the more technology-inclined cities (such as Bay Area, San Francisco, London, Tokyo, Bangalore) present a denser user base.

Users range from the age of 17 till the age of 70 indicating the simple productivity tool guides everyday tasks across ages.

1. Are desktop users more engaged than mobile or tablet?
2. Are the younger population more active?

---

Onboarding & Activation

1. What % of users create their first note within 1 day?
2. Do users who create folders or use templates activate faster?
3. Signup to first note creation rate

Retention

1. Day 1 / 7 / 14 / 30 retention
2. Which features correlate with Day 7 or Day 14 retention?
3. Are users more engaged when they use reminders or favourite notes?
4. Are users who use more features more likely to stay?
5. Churn rate, reactivation rate
6. Retained_day_7 / retained_day_14 flags
7. Stickiness: DAU ÷ MAU

Feature Adoption

1. What % of users use each feature?
2. What templates are used most often (to-do, grocery, recipe)?
3. How many users share notes, and does it improve retention?
4. What % of users use >1 feature (folders, reminders, templates)?
5. Feature adoption curves over time
6. Time-to-first-template, first-folder, etc.

Funnel Analysis

**Funnel:**

- Sign up → Create first note → Any feature (Add to folder)

**Key Questions:**

- Where is the biggest drop-off?
- What % of users complete the full funnel?
- How does funnel performance vary by segment (platform, acquisition source)?


## Executive Background


## Data Description






## Analysis & Insights



## Recommendations



## Assumptions and Caveats




## Technical Tools
1. SQL - Data Analysis, Exploration
2. Python - Statistical Analysis
3. Tableau - Report, Dashboard Visualisation
