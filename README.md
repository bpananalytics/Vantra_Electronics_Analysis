<img width="2720" height="880" alt="vantra_electronics_bolt_logo" src="https://github.com/user-attachments/assets/e6dae741-a5b8-43e5-b90d-29560182e0b7" />

# Executive Summary 
#### The Problem <br>

Since its founding, Vantra Electronics has experienced significant revenue growth, followed by a sustained decline in sales in subsequent years. This shift in performance has raised concerns prompting the investigation of this phenomenon. The Chief Commerical Officer has commissioned this analysis to determine the primary drivers of declining revenue and identify opportunities to restore sustainable growth. The analysis will be of the period between 2019 and 2022, where this phenomenon has ocurred. As requested, the following questions will be primary in exploring the fluctuations in sales figures.  

#### Key Business Questions
- [**What contributed to Vantra's initial revenue surge and its decline?**](https://github.com/bpananalytics/Vantra_Electronics_Analysis#revenue-returns-to-pre-pandemic-levels)
- [**Which products and brands are driving or dragging performance?**](https://github.com/bpananalytics/Vantra_Electronics_Analysis#brands-and-products)
- [**Which geographic markets offer the greatest growth opportunities?**](https://github.com/bpananalytics/Vantra_Electronics_Analysis#geography)
- [**How does customer loyalty relate to purchasing behavior?**](https://github.com/bpananalytics/Vantra_Electronics_Analysis#loyalty-program)
- [**Which factors should management prioritize to restore growth?**](https://github.com/bpananalytics/Vantra_Electronics_Analysis#recommendations)
  

#### 🟢Three Areas of Strength

| Initiative | Data Insight | Strategic Implications |
|----------|----------|----------|
| Strong Apple Brand   | Apple accounts for roughly 50% of Vantra's revenue and has demonstrated a loyal customer following, having the most purchases out of all brands year after year.     | Leaning into selling more Apple products will lead to greater profitability.   |
| Loyalty Program    | Loyalty Program demonstrates improved market performance against non-loyalty purchases in recent years for revenue, AOV, and order count. | Continued loyalty program promotion will yield more profit and projected revenue growth.     |
| High Market Activity in Summer and Autumn | More revenue hikes during the months of July, August, September, November, and December. | Front-load marketing campaign spending in June and October will help gear up for high spending season. 

#### 🔴Three Areas for Action

| Issue | Effects | Mitigation Strategy |
|----------|----------|----------|
| Bose Underperformance    | Bose has as a 90% contraction in demand the last year, following repeated underperformance.     | Discontinuation of Bose line to better adjust to consumer tastes.     |
| Overreaching Geographic Coverage    | Data suggests over 64% of customer base is focused in the US. Opportunity to specialize in one market will allow better market penetration.      | Hone in and target customer base based on geography to encourage customer satisfaction and loyalty.     |
| Refund Data Corrupted | Recorded refunds did not appear in dataset after 2021. While plausible, this is deemed highly unlikely. This anomaly raises red flags on changes to data recording and may imply possible procedural disruption. | Communicate with Sales and Accounting Team to reconcile missing refund data. 



# Table of Content
- [Executive Summary](#executive-summary)
- [Table of Content](#table-of-content)
- [Company Background](#company-background)
- [About the Data](#about-the-data)
  * [Dataset](#dataset)
  * [Revenue Definition](#revenue-definition)
  * [Analytical Assumptions](#analytical-assumptions)
  * [Data Quality & Limitations](https://github.com/bpananalytics/Vantra_Electronics_Analysis#data-quality--limitations)
- [Sales Overview](#sales-overview)
  * [Revenue Returns to Pre-Pandemic Levels](#revenue-returns-to-pre-pandemic-levels)
  * [Seasonality](#seasonality)
- [Brands and Products](#brands-and-products)
  * [Apple as the lead brand](#apple-as-the-lead-brand)
  * [Bose as worst-performing brand](#bose-as-worst-performing-brand)
  * [Gaming Monitors among Big Ticket Items](#gaming-monitors-among-big-ticket-items)
- [Loyalty Program](#loyalty-program)
- [Geography](#geography)
- [Recommendations](#recommendations)
  
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
- The dataset was reviewed for missing values, duplicates, inconsistencies, and anomalous trends. Any pertinent missing values or inconsistencies were deemed negligible and removed from the study. 
- A significant lack of  recorded refund activity occurs after 2021, which suggests some data quality corruption. The anomaly warrants procedural investigation with Sales and Accounting Team as to confirm if refunds have stopped post-2021. As such, analysis of refunds was not considered out of the plausibility of faulty data. Revenue is hence recognized at purchase date but is not nullified if refunded. As the analysis focuses on sales and not profitability, the analysis on refunds may be considered later for a subsequent analytical project. 
- The dataset does not contain sufficient information to determine profitability because product-level costs and margins are unavailable. Revenue trends should therefore not be interpreted as equivalent to changes in profit.
- This analysis evaluates whether loyalty membership is associated with stronger business outcomes. While these findings cannot establish causality, they provide evidence that the program is correlated with higher customer engagement and sales, making them useful for evaluating program performance and identifying areas for further investigation.


# Sales Overview

<p align="center"><img width="768" height="157" alt="image" src="https://github.com/user-attachments/assets/9e1b4c00-5435-4a85-a169-6eb93e2426db" /></p>

## Revenue Returns to Pre-Pandemic Levels 

<p align="center"><img width="785" height="430" alt="image" src="https://github.com/user-attachments/assets/9a5a3fc7-ead5-436b-9545-b5ff3a36cdc6" /></p>

### Insight
2020 was an exceptional growth year for Vantra, with revenue increasing 62% year over year. Revenue subsequently declined toward pre-2020 levels through 2022, suggesting that the 2020 surge may have reflected temporary market conditions rather than a sustained shift in Vantra's underlying growth trajectory.

The 2020 revenue increase was driven by both higher order volume and increased average order value (AOV). AOV increased approximately 30% in 2020 before returning toward 2019 levels by 2022. Order volume followed a similar pattern: orders increased sharply in 2020, continued growing more moderately in 2021, and then moved back toward 2019 levels in 2022. Together, these trends indicate that the 2020 revenue increase was not attributable to a single factor. Both transaction volume and customer spend per order temporarily increased before normalizing.

The timing of this change is consistent with the broader disruption to consumer behavior, supplier availability, and retail markets during the COVID-19 pandemic. However, the available transaction data alone cannot establish the extent to which these external factors caused Vantra's performance.

### Business Implication
Vantra appears to be returning to a more normalized post-pandemic market environment rather than experiencing a sustained deterioration in performance. The exceptional results achieved in 2020 should therefore be treated as an unusual period rather than a sustainable operating baseline.

For management, the key question is whether Vantra can generate durable growth without relying on the temporary market conditions that benefited the business in 2020. Future performance should be evaluated against pre-pandemic benchmarks while monitoring whether changes in order volume, AOV, customer retention, product mix, and geographic demand are creating sustainable sources of growth.

The current data do not indicate an immediate structural warning sign, but they do suggest that repeating 2020-level performance will require a new source of competitive advantage rather than a return to pandemic-era market conditions.

## Seasonality

<p align="center"><img width="660" height="360" alt="q3_seasonal_trend" src="https://github.com/user-attachments/assets/84434937-dc11-4895-9136-d16dcf4aa93e" /></p>


### Insight

**Summer — July, August, and September — and Autumn — October through December — both show an upward trajectory in Revenue.** This suggests that consumers are more apt to spend and make purchases during Q3 and Q4. A few underlying effects may be hypothesized here. Summer activity may be propelled by increased social activity and vacation temperaments, as consumers loosen spending during travel and leisure months. Autumn and winter momentum, particularly around Thanksgiving and Christmas, likely reflects holiday shopping behavior, as gift-giving and seasonal promotions drive both higher order volumes and higher average order values.
October stands out as a noticeable dip in activity, likely serving as a staging ground for consumers to save up between high-spending seasons. A dip in spending following Christmas and New Year's is also to be expected, as there is little need to buy gifts for any holidays during that period.

### Business Implication

Preparing marketing campaigns geared toward the summer and holiday seasons will help capture consumer demand during these windows of least resistance to purchasing. Conversely, the October lull and the post-holiday slowdown represent periods where aggressive acquisition spend is less likely to convert, and budget may be better allocated elsewhere.

Potential Actions:

- Front-load campaign spend into June and October so momentum is already building heading into the July and November demand spikes, rather than reacting once the upward trend is already underway.
- Design holiday campaigns around gifting occasions specifically (Thanksgiving through Christmas) to capitalize on the AOV lift that seasonal promotions tend to drive, rather than generic seasonal messaging.
- Plan a lighter post-holiday campaign cadence in the January dip, using the lull to test creative or run lower-cost brand-awareness initiatives instead of competing for scarce purchase intent.

# Brands and Products 

## Apple as the lead brand
<p align="center"><img width="742" height="530" alt="image" src="https://github.com/user-attachments/assets/080afd44-c848-4965-864c-21b611d16f4f" /></p>

### Insight

**Apple dominates Vantra's brand portfolio, accounting for 50% of total revenue and 76% of all branded sales** from 2019–2022, driven largely by a diverse product shelf (AirPods, MacBook, iPhone). AirPods lead by order volume (48,000 units), while the gaming monitor generates more revenue per unit due to its higher price point — meaning volume and revenue leaders aren't the same product. AirPods and MacBook together drive roughly 49% of Apple's revenue (27% and 22%, respectively), and Apple has outperformed every other brand year-over-year since 2019. Even as overall demand softened post-2020 amid rising competition, Apple's share held strong relative to other brands — signaling durable brand loyalty and "sticky" consumer preference rather than a fleeting trend.

### Business Implication 

- Double down on Apple as a core revenue driver: Given its outsized contribution to profit and revenue, prioritize inventory allocation, marketing spend, and shelf space toward Apple products, especially AirPods and MacBook. It is also worth noting that while Apple is hot right now and does warrant further investments, over-reliance on a single brand for ~50% of revenue is a vulnerability. A parallel investment in diversifying the "next tier" of brands is also recommended.
- Reconcile volume vs. revenue strategy: Since AirPods drive units but the gaming monitor drives revenue per sale, consider bundling strategies (e.g., pairing high-volume/low-margin items with high-revenue/low-volume items) or adjusting pricing/promotions to lift AirPods' revenue contribution without sacrificing its volume advantage.
- Leverage brand loyalty for cross-sell: Use Apple's sticky demand to introduce or upsell adjacent products (accessories, extended warranties, complementary tech) to Apple buyers, deepening basket size per transaction. 


## Bose as worst-performing brand
<p align="center"><img width="890" height="319" alt="bose_growth_rate_table" src="https://github.com/user-attachments/assets/0041c7e9-5783-451d-aa05-9000c8d3ea2d" /></p>

### Insight

**Bose has shown a consistent, worsening negative revenue growth trend, culminating in a 91% revenue contraction in 2022** compared to 2021 — a year that itself already saw a substantial decline. This multi-year downward trajectory suggests the decline isn't a one-off dip but a sustained loss of consumer demand for the brand.

### Business Implication 

- Discontinue or phase out the Bose product line: Given the sustained, accelerating decline, removing Bose is a low-risk decision — the consistent downward trend over multiple years makes this a conservative call rather than a speculative one.
- Reallocate freed-up resources to Apple: Redirect the shelf space, marketing budget, and operational capacity previously tied to Bose toward higher-performing, more profitable brands like Apple, where demand is strong and sticky.
- Validate before fully exiting: Before a full removal, consider a brief diagnostic check (e.g., is the decline isolated to specific Bose product categories, or brand-wide?) to confirm there's no salvageable sub-segment worth retaining — this ensures the "conservative" choice is also a fully informed one.


## Gaming Monitors among Big Ticket Items
<p align="center"><img width="646" height="222" alt="image" src="https://github.com/user-attachments/assets/2e980e85-7dee-4bb6-b6df-454338253360" /></p>

### Insight

The **gaming monitor is the top revenue-generating SKU at $9.8 million, followed by Apple's AirPods Headphones at $7.7 million**, then the MacBook Air Laptop. However, when measured by order count, AirPods outperform the gaming monitor by roughly two-fold — indicating these two products succeed through fundamentally different mechanisms: the gaming monitor wins on price point (high revenue per unit), while AirPods win on sheer volume of demand. Possible drivers of AirPods' high order volume include their portability, higher likelihood of needing replacement, lower price point making them attractive for gifting, and general Apple brand stickiness.

### Business Implication

- Treat these as two success products as two distinct growth levers. Since gaming monitors and AirPods succeed for different reasons (margin/price vs. volume/demand), tailor strategy accordingly — protect and optimize pricing for the gaming monitor, and focus on inventory availability, restocking speed, and accessibility for AirPods.
- Investigate the "why" behind AirPods' volume: Run customer research to confirm which driver — portability, replacement cycles, gift purchases, or brand loyalty — is most responsible for demand. This will clarify whether to invest in replenishment marketing, gifting-season promotions, or broader Apple ecosystem cross-sell.
- Assess replacement-driven demand for retention opportunities: If replacement/upgrade cycles are a meaningful driver for AirPods, consider a loyalty or trade-in program to capture repeat purchases and strengthen customer retention.


# Loyalty Program

<p align="center"><img width="768" height="439" alt="image" src="https://github.com/user-attachments/assets/bdb4c834-c7d4-4e12-8b70-b87e62163272" /></p>

## Insight

**The loyalty program has seen an upward trend in revenue**, contrast to purchasing behavior of non-loyalty customers. Net revenue generated for loyalty program customers up 613% in 2020, just one year into effect. Following 2020 revenue boon, loyalty program still exhibits benefits in retaining customers, with greater order counts coming from loyalty program than that of non-loyalty customers for consecutive years of 2021 and 2022. As such, the loyalty program has demonstrated a positive trend towards better sales performance.  

The loyalty program has been a clear success story, driving sustained growth since its launch. Net revenue from loyalty customers jumped 613% in 2020 alone, and loyalty customers have consistently out-ordered non-loyalty customers every year since (2021 and 2022). At the product level, AirPods and Samsung Webcam show the strongest loyalty-driven performance, with loyalty customers accounting for more than half of AirPods sales — notable given AirPods is the company's second-highest revenue-generating product. By 2022, loyalty customers outperformed non-loyalty customers across every key metric: revenue, average order value (AOV), and order count — signaling that 2021 was a turning point where consumers fully embraced the program and now demonstrate both higher purchase frequency and higher spend per order.

## Business Implication 

- Prioritize loyalty program enrollment growth: Since loyalty customers now outperform non-loyalty customers on every metric, expanding the loyalty base is likely one of the highest-leverage growth levers available. Introduce enrollment incentives (e.g., sign-up bonuses, first-purchase discounts) at checkout and marketing touchpoints.
- Double down on the AirPods–loyalty connection: Given AirPods' outsized role in both revenue and loyalty engagement, use it as an enrollment hook — e.g., loyalty-exclusive AirPods bundles, early access, or loyalty-tier discounts to convert non-loyalty AirPods buyers into program members.
- Replicate the Samsung Webcam and AirPods success pattern. Do consumer research what made these two products resonate with loyalty customers (price point, repeat purchase behavior, bundling) and apply similar tactics to other high-potential SKUs to broaden loyalty-driven sales.
- Target non-loyalty customers with high AOV potential: Since loyalty customers spend more per order, design targeted campaigns (e.g., "join and save on your next order") aimed at converting frequent non-loyalty shoppers, who may be the easiest segment to convert given existing purchase intent.

# Geography 

<p align="center"><img width="800" height="480" alt="revenue_by_country_area_chart" src="https://github.com/user-attachments/assets/73401007-5bb6-4757-bae8-793c5a29ec0f" /></p>

## Insight

**Among the top ten countries by consumer base, the United States alone accounts for 64% of total revenue** — a heavy concentration that signals the U.S. is not just a leading market, but the dominant one by a wide margin. While Vantra makes considerable sales in other markets as well, the impact of the tail end markets are far exceeded by the impact of the U.S. in revenue contribution. The selection of the top ten countries is primarily to highlight the very marginal effect of having to service a host of various other markets. 

## Business Implication 

- Deepen U.S. market penetration and streamline logistics around U.S.: Given the outsized revenue share, prioritize U.S.-focused strategies — targeted marketing, region-specific promotions, and expanded product availability — to capture even more share in an already-proven market. Reallocate operational resources (shipping infrastructure, warehousing, customer service) to optimize for U.S. demand specifically, reducing complexity and cost tied to supporting lower-performing international markets.
- Evaluate the cost-benefit of remaining international markets: With such heavy U.S. concentration, assess whether continued investment in the other top markets is yielding sufficient return, or whether resources are better spent doubling down domestically versus a more selective international expansion.
- Consider a few secondary markets and cut the rest: While U.S. dominance is a strength, over-reliance on a single market leaves the company exposed to U.S.-specific economic shifts, competition, or regulatory changes. Consider a modest, deliberate investment in 1–2 secondary markets as a hedge, rather than abandoning international diversification entirely.

# Recommendations

| Recommendation | Priority | Department | Expected Impact |
| - | - | - | - |
| Increase inventory allocation, marketing spend, and shelf space for Apple products (especially AirPods and MacBook) | High | Merchandising / Marketing | Reinforces the brand driving ~50% of revenue and profit; likely to boost near-term revenue growth |
| Discontinue or phase out the Bose product line after a brief diagnostic check on sub-segment performance | High | Merchandising / Product | Frees up operational capacity and resources; removes a consistently underperforming brand (-91% YoY in 2022) |
| Launch a loyalty program enrollment campaign (sign-up bonuses, first-purchase discounts) targeting frequent non-loyalty shoppers | High | Marketing / Customer Retention | Expands the customer segment already shown to outperform on revenue, AOV, and order count |
| Investigate the post-2021 refund data gap with Sales and Accounting teams | High | Accounting / Data Governance | Resolves data integrity concerns and ensures future analyses (profitability, refunds) are accurate |
| Create loyalty-exclusive AirPods bundles or early-access offers to convert non-loyalty AirPods buyers | Medium | Marketing / Loyalty Program | Leverages AirPods' popularity as an enrollment hook to grow loyalty membership |
| Develop a bundling strategy pairing high-volume/low-margin items (AirPods) with high-revenue/low-margin items (gaming monitor) | Medium | Merchandising / Pricing Strategy | Lifts AirPods' revenue contribution while preserving gaming monitor's premium pricing |
| Front-load marketing campaign spend into June and October ahead of Q3/Q4 demand spikes | Medium | Marketing | Captures seasonal demand more effectively; smooths spend during low-conversion periods (October, post-holiday) |
| Diversify investment into a "next tier" of brands beyond Apple | Medium | Merchandising / Strategy | Reduces revenue concentration risk tied to reliance on a single brand |
| Deepen U.S. market penetration through targeted regional marketing and expanded product availability | Medium | Marketing / Sales | Capitalizes on the dominant, already-proven market (64% of revenue) |
| Evaluate cost-benefit of continued investment in secondary/tail-end international markets; consider consolidating logistics around 1–2 secondary markets | Low | Operations / Finance | Reduces logistical complexity and cost while maintaining a modest geographic hedge |
| Conduct consumer research on drivers of AirPods and Samsung Webcam loyalty engagement to replicate success across other SKUs | Low | Consumer Insights / Marketing | Identifies scalable tactics to extend loyalty-driven sales to additional products |
