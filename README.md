<img width="2720" height="880" alt="vantra_electronics_bolt_logo" src="https://github.com/user-attachments/assets/e6dae741-a5b8-43e5-b90d-29560182e0b7" />

# Executive Summary 
**The Problem** <br>

Since its founding, Vantra Electronics has experienced significant revenue growth, followed by a sustained decline in sales in subsequent years. This shift in performance has raised concerns prompting the investigation of this phenomenon. The Chief Commerical Officer has commissioned this analysis to determine the primary drivers of declining revenue and identify opportunities to restore sustainable growth. The analysis will be of the period between 2019 and 2022, where this phenomenon has ocurred. As requested, the following questions will be primary in exploring the fluctuations in sales figures.  

**Key Business Questions**
- What caused Vantra's initial revenue surge?
- What factors contributed to the subsequent decline?
- Which products and brands are driving or dragging performance?
- Which geographic markets offer the greatest growth opportunities?
- How does customer loyalty relate to purchasing behavior?
- Are refunds materially affecting revenue?
- Which factors should management prioritize to restore growth?

**Root causes identified:**

🟢Three areas of strength

| Initiative | Data Insight | Strategic Impact |
|----------|----------|----------|
| Strong Apple Brand   | Apple accounts for roughly 50% of Vantra's revenue and has demonstrated a loyal customer following, having the most purchases out of all brands year after year.     | Leaning into selling more Apple products will lead to greater profitability.   |
| Loyalty Program    | Loyalty Program demonstrates improved market performance against non-loyalty purchases in recent years for revenue, AOV, and order count. | Continue loyalty program and emphasize growing loyalty customer base.     |
| | |


🔴 Three areas of action

| Issue | Effects | Mitigation Strategy |
|----------|----------|----------|
| Bose Underperformance    | Bose has as a 90% contraction in demand the last year, following repeated underperformance.     | Discontinuation of Bose line to better adjust to consumer tastes.     |
| Overreaching Geographic Coverage    | Data suggests over 64% of customer base is focused in the US. Opportunity to specialize in one market will allow better market penetration.      | Hone in and target customer base based on geography to encourage customer satisfaction and loyalty.     |
| | |



# Table of Content
- [**Company Background:**](https://github.com/bpananalytics/elist_analysis/blob/main/README.md#company-background) 

- [**Sales Overview:**](https://github.com/bpananalytics/elist_analysis/blob/main/README.md#sales-overview) Evaluation of historical sales patterns, both globally and by region, focusing on Revenue, Average Order Value (AOV), and Order Count.  
- [**Product Trend:**](https://github.com/bpananalytics/elist_analysis/blob/main/README.md#product-trend) An analysis of Company's various product lines, understanding their impact on sales. 
- [**Loyalty Program:**](https://github.com/bpananalytics/elist_analysis/blob/main/README.md#loyalty-program) An assessment of the pilot loyalty program and its impact based on sales.  
- [**Refund Analysis:**](https://github.com/bpananalytics/elist_analysis/blob/main/README.md#refund-analysis) An analysis of refunds from purchases made during the four years of the study.
- [**Recommendation:**](https://github.com/bpananalytics/elist_analysis/blob/main/README.md#recommendations) A summary of actionable steps to implement in light of this study's findings. 
- **Marketing Channel Effectiveness**

# Company Background 
Vantra Electronics is a global e-commerce company founded in 2018, specializing in consumer electronics like laptops, smartphones, monitors, and headphones. It operates a digital marketplace through its website and mobile app, featuring products from multiple manufacturers alongside third-party sellers, with a footprint spanning North America, EMEA, APAC, and LATAM.

Vantra primarily serves digitally engaged consumers seeking reliable, high-quality electronics from established brands. Its core customer is a tech-savvy, repeat purchaser who values convenience, product quality, and trusted brands, with loyalty-program members representing an important opportunity for long-term customer retention and increased lifetime value. Vantra’s customer strategy therefore focuses not only on acquiring new customers, but also on strengthening repeat purchasing, cross-selling complementary products, and building lasting customer relationships. To attract this customer base, Vantra has rolled out a loyalty program with offers of gratuitous refund policies to encourage tech-savvy customers to continually try-and-buy its products. 

Vanta has to this date built a customer base of nearly 88,000 across 194 countries, driving over 108,000 transactions and generating $28M in revenue. That growth has come quickly, but Vantra is now navigating headwinds tied to post-pandemic demand normalization. 

# About the Data

<p align="center"><img width="898" height="560" alt="ecommerce_schema_diagram_v3" src="https://github.com/user-attachments/assets/91a7ca56-31cd-4083-a677-be3c84aa8879" /></p>

## Dataset 
The dataset contains 108,000 purchase records spanning January 2019 through December 2022. The data was sourced from Vantra Electronics' proprietary relational database and contains transaction-level information on customers, products, brands, geographic markets, loyalty membership, and refunds. Because Vantra operates internationally, transaction values have been standardized to USD to facilitate cross-market and longitudinal comparisons.

## Revenue Definition
Revenue is defined as the recorded value of products purchased and excludes taxes, shipping charges, and other undisclosed fees or surcharges. Where applicable, refunds are treated separately from the original transaction value.
To better understand Vantra's performance on sales, we focus on three north star metrics. 

- **Revenue** is the aggregate value of each customer order made within a given month, converted to USD if in other currencies. 
- **Average Order Value (AOV**) is the aggregate value of each month's orders in USD, averaged out per order. It highlights the average market basket of a consumer. 
- **Order Count** or Units Sold is the count of orders having been purchased in any given month.

## Analytical Assumptions
- All transactions are standardized to USD using the dataset's exchange-rate methodology. Exchange-rate fluctuations are not separately modeled.
- Revenue is analyzed in nominal USD; inflation-adjusted revenue is not calculated.
- Product pricing reflects the recorded transaction value and does not incorporate unobserved fees, taxes, or surcharges.
- Customer IDs are assumed to consistently identify the same customer throughout the analysis period.
- Geographic classifications are assumed to accurately represent the customer's market at the time of purchase.
- Loyalty-program status is treated as an observed customer characteristic; the analysis does not establish that loyalty membership causes higher spending.

## Data Quality & Limitations
- The dataset was reviewed for missing values, duplicates, inconsistencies, and anomalous trends.
- A significant change in recorded refund activity occurs after 2021 and may reflect a change in data collection or recording practices.
- The dataset does not contain sufficient information to determine profitability because product-level costs and margins are unavailable.
- Revenue trends should therefore not be interpreted as equivalent to changes in profit.
- Observed relationships between loyalty membership and customer value should be interpreted as associations rather than causal effects.


# Sales Overview

<p align="center"><img width="768" height="157" alt="image" src="https://github.com/user-attachments/assets/9e1b4c00-5435-4a85-a169-6eb93e2426db" /></p>

## Revenue Returns to Pre-Pandemic Levels 

<p align="center"><img width="785" height="430" alt="image" src="https://github.com/user-attachments/assets/9a5a3fc7-ead5-436b-9545-b5ff3a36cdc6" /></p>

### The Insight
2020 was an exceptional growth year for Vantra, with revenue increasing 62% year over year. Revenue subsequently declined toward pre-2020 levels through 2022, suggesting that the 2020 surge may have reflected temporary market conditions rather than a sustained shift in Vantra's underlying growth trajectory.

### Evidence
The 2020 revenue increase was driven by both higher order volume and increased average order value (AOV). AOV increased approximately 30% in 2020 before returning toward 2019 levels by 2022. Order volume followed a similar pattern: orders increased sharply in 2020, continued growing more moderately in 2021, and then moved back toward 2019 levels in 2022. Together, these trends indicate that the 2020 revenue increase was not attributable to a single factor. Both transaction volume and customer spend per order temporarily increased before normalizing.

The timing of this change is consistent with the broader disruption to consumer behavior, supplier availability, and retail markets during the COVID-19 pandemic. However, the available transaction data alone cannot establish the extent to which these external factors caused Vantra's performance.

### Business Implication
Vantra appears to be returning to a more normalized post-pandemic market environment rather than experiencing a sustained deterioration in performance. The exceptional results achieved in 2020 should therefore be treated as an unusual period rather than a sustainable operating baseline.

For management, the key question is whether Vantra can generate durable growth without relying on the temporary market conditions that benefited the business in 2020. Future performance should be evaluated against pre-pandemic benchmarks while monitoring whether changes in order volume, AOV, customer retention, product mix, and geographic demand are creating sustainable sources of growth.

The current data do not indicate an immediate structural warning sign, but they do suggest that repeating 2020-level performance will require a new source of competitive advantage rather than a return to pandemic-era market conditions.

## Seasonality

<img width="1802" height="347" alt="image" src="https://github.com/user-attachments/assets/722ff278-0ffc-46b9-96da-2f89b00a0ae0" />

**Summer, marked by the months of July, August, and September show upward trajectory** on Revenue, AOV, and Order Count. This suggests that consumer are more apt to spend and make purchases during Q3 months of high activity. Preparing marketing campaigns geared towards this season will capture consumer demands during their time of least resistance to purchasing. 


# Brands and Products 

## Apple as the lead brand
<p align="center"><img width="742" height="530" alt="image" src="https://github.com/user-attachments/assets/080afd44-c848-4965-864c-21b611d16f4f" /></p>

**Among brands, Apple dominates in sales, accounting for 50% of Vantra's total profit, and 76% of all branded sales across the entire time period from 2019 to 2022.** Part of this market dominance may be attributed to Company's diverse shelf of products like the Airpods, the Macbook, and the iPhone; the former two being the most popular product of the Brand. By order count, Airpod headphones outperforms all other products with 48,000 units sold. However, it should be noted that by revenue, the order placement for these two products are reversed, where the gaming monitor is sold at a greater pricepoint and hence generates more revenue than the Airpod headphones. In addition, Apple has outperformed all other brands year after year since 2019, with 27% of Company's revenue coming from Airpods and 22% coming from Macbook. Accounting for nearly 50% of Vantra's total revenue coming from Apple products alone between the years 2019-2022, Apple consumption demands is remarkably high and sticky. Even with demand falling post-2020 with increased supply competition, the strong preference of Apple still outweighs other product line, demonstrating a substantial brand loyalty. Capitalizing on the Apple brand and image by selling more of their highyly demanded products would suggest a likely boost to revenue growth.  

## Bose as worst-performing brand
<p align="center"><img width="890" height="319" alt="bose_growth_rate_table" src="https://github.com/user-attachments/assets/0041c7e9-5783-451d-aa05-9000c8d3ea2d" /></p>

**Bose has experienced negative growth rate in revenue over the years**, with staggering 91% revenue contraction in 2022 compared to 2021, of which also experienced a substantial revenue contraction. Removal of the Bose product line will result in better catering to shifting consumer demands and open valuable operational resources and capacity towards better selling more profitable brands like Apple. With the year over year declining trend for Bose, this would be a conservative choice that can be safely made to increase the bottom line. 


## Gaming Monitors among Big Ticket Items
<p align="center"><img width="646" height="222" alt="image" src="https://github.com/user-attachments/assets/2e980e85-7dee-4bb6-b6df-454338253360" /></p>

Among items sold, **gaming monitor seems to generate the most revenue**, bringing in 9.8 million dollars. Next most lucrative SKU is Apple's Airpod Headphones with 7.7 million dollars in sales, followed by Macbook Air Laptop. When reviewing sales by order count, Apple Airpod Headphones outperforms gaming monitors by two-folds. This suggests that while gaming monitors are profitable in its pricing, airpod headphones are succeeding by sheer demand. Possible reasons may include portability factors, higher likeliness or need of replacement, lower price range for gifting, or brand stickiness from Apple. 

# Loyalty Program

<p align="center"><img width="768" height="439" alt="image" src="https://github.com/user-attachments/assets/bdb4c834-c7d4-4e12-8b70-b87e62163272" /></p>

**The loyalty program has seen an upward trend in revenue**, contrast to purchasing behavior of non-loyalty customers. Net revenue generated for loyalty program customers up 613% in 2020, just one year into effect. Following 2020 revenue boon, loyalty program still exhibits benefits in retaining customers, with greater order counts coming from loyalty program than that of non-loyalty customers for consecutive years of 2021 and 2022. As such, the loyalty program has demonstrated a positive trend towards better sales performance.  

<img width="1437" height="846" alt="image" src="https://github.com/user-attachments/assets/f09740bb-8e0a-40bc-9ce2-9062d24dde31" />

Looking more closely to performance, the loyalty program has experienced a few successes, in which Apple Airpods and Samsung Webcam has more buyers coming from the loyalty program than not. This demonstrates early success in the program, especially for Apple Airpods which accounts for second-most revenue generating item for the Company. More than half of this highly sought product is accounted for by loyalty customers. 

<img width="1817" height="383" alt="image" src="https://github.com/user-attachments/assets/24c48754-6428-4ec3-839f-3c6447ce8fee" />

By 2022, **Loyalty Program customers has outperformed Non-loyalty customers on all marks** for revenue, AOV, and order count. Loyalty Program customers are making more orders at higher value points than non-loyal customers. This has demonstrated success in the loyalty program, with 2021 being a pivotal year where consumers have adapted, embraced, and sees value in using the program. To capitalize on this effect more, Company should consider boosting enrollment in this program and incentivize new patrons to join. 

## Refund Analysis

<img width="1421" height="825" alt="image" src="https://github.com/user-attachments/assets/8b860ffb-33f1-48a9-89b9-91ec5f325d40" />

**Refunds were made with much overlap during the revenue boon during the year 2020 and 2021**, after which buyers are conservative with their purchasing and buy only what they needed. As such, from August 2021 to end of 2022, no refunds were requested by buyers. Of which, the bulk of revenue loss from refunds were from Macbook air (33%), gaming monitors (29%), and Apple Airpod (19%). However, by volume, the most refunded product is Apple Airpods accounting for 49% of the returned items. The least refunded products were the bose headphones followed by the Apple iphone. The former being niche in appeal while the latter having a functional necessity for everyday use. While the loyalty program issues slightly more refunds by volume, non-loyalty accounts for a larger share of revenue loss, representing 62% of all refunded revenue. Unsurprisingly, North America accounted for 56% of the refunds, followed by EMEA and APAC, paralleling Company's customer base. Most refunded items have a delivery time between 5-10 days, but at similar levels. As such, it is unlikely that delivery speed is a factor in any of the refunds. 

  Interesting to note however, refunds were absent from the data following 2021, which could suggest improper documentation or a processing issue with billing. Absence of this data may skew the analysis for refunds and hence may not capture the entire picture. Additional research into procedural documentation and billing confirmation may be suggested to better understand whether or not the analysis may be missing information. 

# Recommendations

| Recommendation | Priority | Department | Expected Impact |
| - | - | - | - |
| | | | 





## **Expansion of Apple Product Line**


## **Center Customer Base**

<p align="center"><img width="800" height="480" alt="revenue_by_country_area_chart" src="https://github.com/user-attachments/assets/73401007-5bb6-4757-bae8-793c5a29ec0f" /></p>

Of the highest top ten consumer base, Company has **64% of revenue coming from the United States**. This suggests that specializing towards a specific demographic like the US may enable further market penetration and allow for better allocation of logistical resources such as currency exchange, shipping, and localization. 

## **Optimize Summer marketing**


