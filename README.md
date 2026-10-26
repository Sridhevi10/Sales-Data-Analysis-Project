# Sales Data Analysis Project

## Tools used

| Item | Tool |
|---|---|
| SQL compiler and dialect | MySQL 8.0 (MySQL Workbench) |
| Spreadsheet tool | Microsoft Excel |
| Dashboard built in Tableau Public? | Yes. The dashboard was built in Tableau Public, and `docs/dashboard_spec.md` describes how to rebuild it. |

## Key findings

Across the 63 completed orders the business earned ₹346,200 from 106 units, and this total matches in every part of the project (the SQL query q05, the spreadsheet pivots and the dashboard). North is the strongest region with ₹119,300 (about 34% of revenue), and Electronics is the strongest category with ₹142,300 (about 41%). Revenue is uneven across months: it rose from ₹93,100 in October to ₹154,800 in November, driven by the Home category, which jumped from ₹12,600 to ₹83,200. The AI check in Part D also showed why verification matters: an assistant claimed North's revenue grew 38% month over month, but the data shows it fell 22.8% from September (₹53,500) to October (₹41,300).

## File index

| File | Part | What it is |
|---|---|---|
| `README.md` | All | This overview |
| `sql/00_schema_and_seed.sql` | A | Creates the four tables and loads the data |
| `sql/q01.sql` to `sql/q13.sql` | A | The 13 business queries |
| `results/query_results.md` | A | Row counts and results of every query |
| `data/orders_enriched.csv` | A (input to B) | Order-level table from query q09 (90 rows) |
| `data/orders_clean.csv` | B (input to C) | Cleaned completed orders (63 rows, 13 columns) |
| `docs/spreadsheet_notes.md` | B | Formulas, pivots, reconciliation and data checks |
| `docs/dashboard_spec.md` | C | Dashboard specification and business story |
| `sql/d1_corrected.sql` | D | Corrected version of the AI-generated query |
| `docs/ai_log.md` | D | Prompts, defect table, verification and decisions |

## Assumptions

- **Revenue means completed orders only.** Pending and disputed orders are not counted as revenue.
- **Missing amounts stay blank.** Three orders (1001, 1010, 1064) have no amount and were not replaced with zero.
- **Customer names are untouched in Part A** (the raw spaces and capitals were kept). They were cleaned in Part B with `PROPER(TRIM(...))`.
- **`order_month` is kept as text** (such as `2026-09`) in every file, not as a date.
- **North's month-over-month change** (Part D) uses completed orders only, taken from the q11 result.
- **Scenario D2** (the lookup error) was handled as a described case, since the seed data has no leading spaces.
