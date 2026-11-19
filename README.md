<img width="700" alt="Vantra Electronics logo" src="https://github.com/user-attachments/assets/e6dae741-a5b8-43e5-b90d-29560182e0b7" />

# Vantra Electronics: Sales Analysis (2019–2022)
## About this project

**Vantra** is an end-to-end analytics project built on a messy dataset of 108,000 e-commerce orders (2019–2022) from a global electronics retailer. I first analyzed it the traditional way, cleaning in Excel and charting in Tableau. I then rebuilt it the way a data team would, so every number is reproducible, tested, and documented.

**What I built**
- **A tested data pipeline:** raw orders → cleaned staging → 5 business-ready tables, using dbt and BigQuery, with automated tests and CI on every change
- **Analysis that answers business questions:** what drove the 2020 surge and the decline since, which products and customers matter most, and whether the loyalty program works
- **Statistics and a model:** a cohort-based significance test that reversed my own earlier finding, and a refund-risk classifier
- **A dashboard and public docs** so anyone can explore the results and the pipeline

**Highlights**
- Fixed ~1,400 Excel-corrupted IDs, 3 conflicting date formats, and 96 duplicate rows, with every fix in version-controlled SQL
- Revenue reconciles to the cent ($28,078,739.20) across every table
- Delivered in 6 days across 17 merged pull requests, tracked on a project board with a decision log, risk register, and retrospective

**Stack:** SQL · dbt · BigQuery · Python · Tableau · GitHub

| Start here | |
|---|---|
| 📊 [Findings](https://github.com/bpananalytics/Vantra_Electronics_Analysis/blob/main/full_analysis.md) | What the data says, in one screen |
| 📈 [Dashboard](https://public.tableau.com/app/profile/brian.pan7659/viz/Vantra_Dashboard/Dashboard1) | Interactive view of revenue and segments |
| 🔧 [Pipeline](https://github.com/bpananalytics/vantra_dbt) | How the data was modeled and tested |
| 🗂️ [Project management](https://github.com/bpananalytics/vantra_dbt/tree/main/project) | Plan, decisions, risks, and retrospective |

## Key findings

<p align="center"><img width="700" alt="Revenue trend, 2019–2022" src="https://github.com/user-attachments/assets/9a5a3fc7-ead5-436b-9545-b5ff3a36cdc6" /></p>

- **2020 was a surge, not a new baseline.** Revenue grew 62% in 2020, then fell back toward 2019 levels by 2022.
- **Apple carries half the business.** Apple is 50% of revenue; AirPods lead on volume, the gaming monitor on revenue ($9.8M).
- **Bose is fading.** Revenue fell 91% in 2022, on top of a decline the year before (on low volume).
- **Loyalty members come back less often.** Compared with non-members who started the same year, members were 2–5 points less likely to buy again in 2020–2022.
- **The U.S. dominates.** Among the top ten markets, the U.S. drives 64% of revenue.

> **I tested my own finding, and it reversed.** My first pass called the loyalty program a strength. But members were mostly newer customers, who'd had less time to return. Comparing customers who started in the same year, members repeated *less* (chi-square tests, p < 0.0001). → [**See the test**](notebooks/loyalty_test.ipynb)

## Recommendations

| Recommendation | Priority |
|---|---|
| Invest in Apple, especially AirPods and MacBook, while building a next tier of brands | High |
| Phase out Bose after a quick check for any product worth keeping | High |
| Redesign the loyalty incentive to reward repeat purchases before growing enrollment | High |
| Reconcile the post-2021 refund data gap with Accounting | High |
| Front-load campaigns into June and October, ahead of seasonal peaks | Medium |

## Data

108K orders, January 2019 – December 2022, in USD. Revenue excludes $0 and missing-price orders and keeps refunds. Refunds stop being recorded after August 2021, so refund findings cover earlier orders only. → [Data details and assumptions](full_analysis.md#about-the-data)

**Tools:** SQL · BigQuery · dbt · Python (pandas, SciPy) · Tableau
