# 📊 Project Background: Vanguard Lifestyle Marketing Audit

**Vanguard Lifestyle** is a rapidly scaling D2C premium subscription brand, competing in the saturated luxury wellness market. With a massive **$40.01 Million** annual marketing budget, the company was aggressively chasing market share but suffering from diminishing returns.

**The mission was to stop the "Budget Bleed."** Vanguard was facing a critical **"Vanity Metric" crisis**: the marketing team was celebrating high social engagement (likes/shares) while Customer Acquisition Costs (CAC) were skyrocketing. I was brought in to audit the **8,000-record campaign dataset**, aiming to pivot the strategy from a "Spray and Pray" awareness model to a "Precision Conversion" engine. My goal was to identify the high-value cohorts actually driving revenue and cut the dead weight from the ad spend.

Insights and recommendations are provided on the following key areas:

* **Channel Efficiency** (The Referral vs. Social Media Battle)
* **Demographic Targeting** (Unlocking the 31-45 "Power User" Cohort)
* **Campaign Strategy** (Moving from "Awareness" to "Conversion")
* **Income Sensitivity** (The High-Value Wallet Share)

https://github.com/user-attachments/assets/ac2bddb9-efbb-4a5c-85b3-601bd2aedcc2

**PowerQuery M Code regarding data preparation process ovarious tables can be found [[here]](https://github.com/mehedibhai101/Digital_Marketing_Campaign_Analytics/tree/main/Data%20Cleaning).**

**DAX queries regarding various analytical calculations can be found [[here]](https://github.com/mehedibhai101/Digital_Marketing_Campaign_Analytics/tree/main/DAX%20Calculations).**

**An interactive Power BI dashboard used to report and explore analysis can be found [[here]](https://app.powerbi.com/view?r=eyJrIjoiZWI3ZGEwMjUtOWMxZS00OGY0LTgxZGUtMmY4OWZmMDhkZjE5IiwidCI6IjAwMGY1Mjk5LWU2YTUtNDYxNi1hNTI4LWJjZTNlNGUyYjk4ZCIsImMiOjEwfQ%3D%3D).**

---

# 🏗️ Data Structure & Initial Checks

The marketing analytics engine is built on a comprehensive dataset of **8,000 individual campaign interactions**, tracking the full customer journey from "Impression" to "Purchase."

* **`Customer Profiles`:** Detailed demographics including `Age`, `Gender`, `Income` (up to $150k), and `Loyalty Points`.
* **`Campaign Metrics`:** Performance data for 5 key channels (Referral, PPC, SEO, Email, Social Media), tracking `AdSpend`, `CTR` (15.5% avg), and `Conversion Rates`.
* **`Outcome Data`:** The critical `Conversion` flag (1 = Purchase) and `Campaign Type` (Awareness, Consideration, Conversion, Retention).

---

# 📋 Executive Summary

### Overview of Findings

Vanguard’s digital initiatives generated **7,012 conversions** from a **$40M investment**, yielding an average conversion rate of **10.44%**. However, the analysis exposed a massive inefficiency: The **Referral Channel** is the most efficient revenue driver (1,518 conversions), yet the budget was diluted across underperforming Social Media campaigns. Critically, the **31-45 Age Demographic** emerged as the "Golden Cohort," driving **30% of all conversions**, proving that the brand’s broad-targeting strategy was missing its most lucrative audience.

---

# 🔍 Insights Deep Dive

### 🎯 Channel Efficiency (The Referral Powerhouse)

* **Referral Dominance.** The **Referral channel** generated the highest volume of conversions (**1,518**), outperforming Social Media (**1,319**) by a significant margin. This suggests that "Word of Mouth" and influencer affiliates are the strongest trust signals for the brand.
* **PPC Consistency.** **PPC (Pay-Per-Click)** remains a strong contender with **1,461 conversions**, validating the continued investment in high-intent search terms.
* **Social Media Lag.** Despite high engagement (Shares/Likes), **Social Media** had the lowest conversion efficiency relative to spend, indicating it serves better as a brand-building tool than a direct sales driver.

<img width="552" height="375" alt="Image" src="https://github.com/user-attachments/assets/212c5edf-ee65-436c-a77a-0acd04c2b8ab" />

### 👥 Demographic Targeting (The 31-45 Sweet Spot)

* **The "Prime" Spender.** The **31-45 Age Group** is the absolute powerhouse, responsible for **2,114 conversions**. This demographic likely represents established professionals with disposable income.
* **The "Silver Economy" Opportunity.** The **46-60 Age Group** follows closely with **1,969 conversions**. Targeting this group with "Quality" and "Longevity" messaging could yield high ROI.
* **Youth Underperformance.** The **18-30 Age Group** shows significantly lower engagement (1,556 conversions), suggesting that ad spend targeting Gen Z platforms might be wasted for this specific premium price point.

<img width="732" height="375" alt="Image" src="https://github.com/user-attachments/assets/0ba3ba63-9007-4b1a-bd4a-ae75d9f29cab" />

### 🧲 Campaign Strategy (Awareness vs. Action)

* **The "Conversion" King.** Campaigns specifically tagged as **"Conversion"** (i.e., "Buy Now" CTAs) generated **1,939 purchases**, vastly outperforming "Awareness" campaigns (**1,701**).
* **Retention Value.** **"Retention" campaigns** (targeting existing customers) drove **1,671 conversions**, highlighting the untapped potential of maximizing Customer Lifetime Value (CLV) through email marketing.
* **Funnel Friction.** "Consideration" campaigns performed on par with "Awareness," suggesting a potential leak in the mid-funnel where users are interested but not compelled to buy.

<img width="1201" height="361" alt="Image" src="https://github.com/user-attachments/assets/a9b6be9c-793c-4e36-aa53-48b99ff4e734" />

### 💸 Income Sensitivity (High-Value Acquisition)

* **The Affluent Customer.** Customers in the **$100k-$150k Income Bracket** converted at the highest rate, generating **2,740 purchases**. This correlates with the premium positioning of Vanguard's products.
* **The "Middle-Market" Core.** The **$50k-$100k bracket** is also highly active (**2,625 conversions**), representing the volume engine of the business.
* **Low-Income Disparity.** The **<$50k bracket** generated only **1,647 conversions**, indicating that the current pricing strategy effectively walls off this demographic.

<img width="733" height="376" alt="Image" src="https://github.com/user-attachments/assets/2f33704f-c026-4ebf-89fe-362b30421edc" />

---

# 🚀 Recommendations:

* **Budget Reallocation:** Shift **20% of the Social Media budget** ($1.5M approx) into **Referral and PPC channels** to capitalize on the higher conversion efficiency.
* **"Prime" Targeting:** Launch a dedicated campaign targeting the **31-45 Age Demographic** with messaging focused on "Lifestyle Upgrade" and "Exclusivity," as they are the proven decision-makers.
* **Funnel Optimization:** Stop over-investing in generic "Awareness." Rebrand 50% of Awareness assets to **"Conversion-focused"** creatives with direct "Shop Now" calls-to-action.
* **High-Value Tiers:** Create "Platinum Tier" offers specifically for the **$100k+ income segment**, marketed via Email and Direct Mail to maximize the high conversion rate in this bracket.

---

## ⚠️ Assumptions and Caveats:

* **Conversion Definition:** "Conversion" (1/0 flag) is assumed to represent a **confirmed purchase**.
* **Income Data:** The dataset is capped at **$150,000**; any customers with income above this threshold are assumed to be included in the highest bracket.
* **AdSpend Attribution:** It is assumed that the `AdSpend` column represents the direct cost attributed to that specific customer journey.

---

## 📂 Repository Structure

```
Digital_Marketing_Campaign_Analytics/
│
├── Dashboard/                             # Final visualization and reporting outputs
│   ├── assets/                            # Visual elements used in reports (logos, icons, etc.)
│   │   ├── Icons/                         # Collection of icons used in KPI Cards/Buttons
│   │   ├── background.jpg                 # Image used as the dashboard background
│   │   └── Theme.json                     # Custom Power BI color palette for dashboard
│   │
│   ├── live_dashboard.md                  # Links to hosted Power BI Service report
│   └── static_overview.pdf                # Exported PDF version of the final dashboard for quick viewing
│
├── Data Cleaning/                         # Power Query M Codes for cleaning tables of the dataset.
│
├── Dataset/                               # The data foundation of the project
│   └── campaign_data.csv                  # Marketing performance data used to analyze campaign & audience
│
├── DAX Calculations/                      # Business logic and analytical formulas
│   ├── calculated_column.md               # Definitions for static row-level logic (e.g., hour buckets)
│   └── measures.md                        # Dynamic aggregation formulas (e.g., Total Revenue, MoM Growth)
│
├── LICENSE                                # Legal terms for code and data usage
└── README.md                              # Project background, summary and key insights
``` 

---

## 🛡️ License

This project is licensed under the [MIT License](LICENSE). You are free to use, modify, and distribute it with proper attribution.

---

## 🌟 About Me

Hi! I’m **Mehedi Hasan**, well known as **Mehedi Bhai**, a Certified Data Analyst with strong proficiency in *Excel*, *Power BI*, and *SQL*. I specialize in data visualization, transforming raw data into clear, meaningful insights that help businesses make impactful data-driven decisions.


Let’s connect:

[![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge\&logo=linkedin\&logoColor=white)](https://www.linkedin.com/in/mehedi-hasan-b3370130a/)
[![YouTube](https://img.shields.io/badge/YouTube-red?style=for-the-badge\&logo=youtube\&logoColor=white)](https://youtube.com/@mehedibro101?si=huk7eZ05dOwHTs1-)
