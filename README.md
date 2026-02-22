# Revenue Leakage & Profitability Analysis

## Project Overview

A business-focused analytics project designed to diagnose declining profitability despite growing sales in a retail environment.
The analysis identifies revenue leakage across pricing strategy, product performance, returns, and regional operations.

---

## Business Problem

The company observed strong order growth but stagnant profit margins.
The objective was to determine:

* Which products were eroding margins
* Whether discounting strategy was sustainable
* How operational returns impacted financial performance
* If certain regions were costly to serve

---

## Tools & Technologies

* SQL — Data modeling, joins, and profitability analysis
* Power BI — Dashboard development and visualization
* Excel — Data validation and preparation

---

## Analytical Approach

1. Built a relational dataset simulating transactional business data.
2. Performed SKU-level margin analysis to detect loss-making products.
3. Evaluated discount bands to identify profitability thresholds.
4. Quantified financial loss associated with product returns.
5. Compared revenue vs servicing cost across regions to reveal inefficiencies.
6. Designed an executive dashboard to support pricing and operational decisions.

---

## Key Insights

* High discount tiers (above ~25%) significantly reduced margins.
* Several high-volume SKUs generated negative contribution despite strong sales.
* Returns categorized as Damaged created the largest financial loss driver.
* Regional cost-to-serve analysis exposed operational inefficiencies impacting profit.

---

## Dashboard Structure

**Page 1 — Executive Overview**
(https://github.com/Anuragsharma55/revenue-leakage-analysis/blob/main/Executive%20Overview%20snapshot.png)
* Profit trend analysis
* Category-level profitability comparison
* Regional performance summary

**Page 2 — Pricing Analysis**
(https://github.com/Anuragsharma55/revenue-leakage-analysis/blob/3983adede4d88c1e73b3ec093f561de6e937e1e5/Pricing%20Analysis%20snapshot.png)
* Discount vs Profit relationship
* Identification of loss-making products

**Page 3 — Operational Analysis**
(https://github.com/Anuragsharma55/revenue-leakage-analysis/blob/6b4289bfcb4e7f29be819df86aaac3e9f6ab7c13/Operational%20Analysis%20snapshot.png)
* Financial loss by return reason
* Revenue vs Cost comparison by region
* Return KPIs (Return Rate, Total Returns)

---

## Business Impact

This analysis provides a decision-support framework enabling:

* Discount governance to prevent margin erosion
* Product portfolio optimization
* Operational improvements to reduce return-related losses
* Region-specific cost optimization strategies

---

## Repository Structure
data/ → Source datasets

sql/ → Analytical queries

dashboard/ → Power BI report (.pbix)

docs/ → Business case documentation

---

## Outcome

Delivered a complete profitability diagnostic workflow combining SQL analysis and BI reporting to replicate a real-world business scenario.
