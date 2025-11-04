# Assignment 3 – Association Rule Mining

## Instructions

For this third assignment, you will implement the Apriori and FP-Growth algorithms to discover association rules from transactional data.

- Each task below corresponds to a different dataset and tool.
- You will explore datasets related to retail transactions and online shopping behavior.
- For the final task, use AI tools (ChatGPT, Perplexity, etc.) to generate rule explanations and include screenshots in your Word report.
- Each task is a graded challenge; be sure to comment your code and explain each step in markdowns.
- Submit both `.ipynb` and `.docx` files as in Assignment 2.

---

## Datasets

### Dataset 1: Groceries.csv
- **Source:** https://www.kaggle.com/datasets/heeraldedhia/groceries-dataset/data
- **Size:** 38,765 transactions
- **Description:** Each record represents a customer's basket
- **Used for:** Task 1 (Apriori Algorithm)

### Dataset 2: OnlineRetail.csv
- **Source:** https://www.kaggle.com/datasets/vijayuv/onlineretail
- **Alternative:** UCI Machine Learning Repository - "UCI Online Retail dataset"
- **Description:** 500,000+ records of transactions for a UK-based online retailer (2010-2011)
- **Columns:** InvoiceNo, StockCode, Description, Quantity, InvoiceDate, UnitPrice, CustomerID, Country
- **Used for:** Task 2 (FP-Growth Algorithm)

#### Quick CSV Sample (OnlineRetail.csv):
```
InvoiceNo,Description,Quantity,Country
536365,WHITE HANGING HEART T-LIGHT HOLDER,6,United Kingdom
536365,WHITE METAL LANTERN,6,United Kingdom
536366,BLACK RECORD COVER FRAME,3,United Kingdom
536367,WHITE HANGING HEART T-LIGHT HOLDER,8,United Kingdom
536367,CREAM CUPID HEARTS COAT HANGER,8,United Kingdom
536367,KNITTED UNION FLAG HOT WATER BOTTLE,6,United Kingdom
536367,RED WOOLLY HOTTIE WHITE HEART.,6,United Kingdom
536368,JUMBO BAG RED RETROSPOT,6,United Kingdom
536369,SET 7 BABUSHKA NESTING BOXES,2,United Kingdom
536370,WHITE HANGING HEART T-LIGHT HOLDER,6,United Kingdom
536370,RED WOOLLY HOTTIE WHITE HEART.,6,United Kingdom
```

---

## Task 1 – Apriori on Retail Dataset (35 points)

**Dataset:** Groceries.csv (38,765 transactions)

### Task 1A (4 points)
Load the dataset and display the first 10 transactions in a readable format.

### Task 1B (5 points) - Basic EDA
Perform basic Exploratory Data Analysis:
- Display top 15 most frequent items (bar plot)
- Check average number of items per transaction
- Visualize item frequency distribution

### Task 1C (6 points)
Convert the dataset into proper transactional form suitable for Apriori:
- Binary encoding: 1 if item present, 0 otherwise
- Confirm shape and column count

### Task 1D (8 points)
Apply the Apriori algorithm with `min_support=0.02`:
- Display top 10 frequent itemsets (by support)
- Show time taken for computation

### Task 1E (6 points)
Generate association rules using metrics:
- `metric='lift'`, `min_threshold=1.0`
- Display top 10 strongest rules sorted by lift
- Show columns: {antecedents, consequents, support, confidence, lift}

### Task 1F (6 points) - Visualization
Visualize results:
- Scatter plot of support vs confidence
- Annotate rules with high lift (>3)
- Comment on which rule is most interesting and why

---

## Task 2 – FP-Growth on Online Purchase Data (35 points)

**Dataset:** OnlineRetail.csv

### Task 2A (5 points) - Preprocessing
Preprocess the dataset:
- Remove missing or canceled invoices
- Group by InvoiceNo to create transactions
- Convert to transactional binary form

### Task 2B (6 points) - EDA
Perform Exploratory Data Analysis:
- Top 10 purchased items (bar chart)
- Number of unique customers and transactions

### Task 2C (8 points)
Apply FP-Growth with `min_support=0.03`:
- Display frequent itemsets sorted by descending support
- Compare number of itemsets generated vs Apriori (comment briefly)

### Task 2D (6 points)
Generate association rules using lift and confidence metrics:
- Filter rules with `lift > 2` and `confidence > 0.6`
- List top 5 rules and interpret one that offers practical marketing insight

### Task 2E (5 points) - Network Visualization
Visualize the network of item associations using networkx:
- Nodes represent items, edges represent rules (weighted by lift)
- Color top 10 lift rules differently

### Task 2F (5 points) - Comparison
Compare Apriori and FP-Growth in a markdown cell:
- Which is faster?
- Which produces more rules?
- Which is more memory efficient?

---

## Task 3 – AI Assisted Interpretation (10 points)

Use an AI model (ChatGPT, Perplexity, etc.) to generate business insights from top rules produced by FP-Growth.

**Provide:**
- Prompts and AI outputs (screenshots in DOCX)
- Summary markdown interpreting the AI's insights

---

## Task 4 – Critical Thinking (20 points)

### Question 1 (10 points)
Based on Apriori rules from Task 1, suggest how a retail store could design product bundles or promotional offers.

### Question 2 (10 points)
From FP-Growth rules, identify which categories of items could benefit from cross-selling online and justify your claim with rule strengths.

---

## Programming Assignment Details

### Allowed Libraries:
- Pandas
- mlxtend
- Matplotlib
- Seaborn
- NetworkX
- Scikit-Learn

### Requirements:
- Use Markdown to explain every action and result
- Cite any external resources in code comments
- Do not rename the datasets

---

## Submission Details

### Individual or Team Submission:
- List names and IDs
- Only one team member should submit

### File Naming:
- `YourLastNameLast4DigitofID_Assignment3.ipynb`
- `YourLastNameLast4DigitofID_Assignment3.docx`

### Files to Submit:
1. Jupyter Notebook (.ipynb)
2. Word document (.docx) containing:
   - AI prompts and screenshots (Task 3)
   - Any additional documentation

---

## Summary

- **Task 1:** Apriori algorithm on Groceries.csv (35 points)
- **Task 2:** FP-Growth algorithm on OnlineRetail.csv (35 points)
- **Task 3:** AI-assisted interpretation (10 points)
- **Task 4:** Critical thinking questions (20 points)

**Total: 100 points**

