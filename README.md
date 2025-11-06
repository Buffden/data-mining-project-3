# Assignment 3 – Association Rule Mining

## Overview

This project implements **Association Rule Mining** using the **Apriori** and **FP-Growth** algorithms to discover item relationships in transactional datasets. The analysis focuses on identifying frequent itemsets and generating association rules for retail and grocery datasets.


## Project Structure

```
.
├── Parajuli_4185_Pari_7979_Patil_4144_Assignment3.ipynb  # Main notebook
├── datasets/
│   ├── Groceries.csv                                     # Task 1 dataset
│   └── OnlineRetail.csv                                  # Task 2 dataset
├── requirements.txt                                      # Python dependencies
├── setup.sh                                              # Setup script
├── .env                                                  # Kaggle API credentials (not in repo)
└── README.md                                             # This file
```

## Prerequisites

- Python 3.8 or higher
- Jupyter Notebook or JupyterLab
- Kaggle API credentials (for dataset download)

## Installation

### 1. Clone the Repository

```bash
git clone <repository-url>
cd "Data Mining Assignment 3"
```

### 2. Create Virtual Environment

```bash
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
```

### 3. Install Dependencies

```bash
pip install -r requirements.txt
```

### 4. Set Up Kaggle API Credentials

Create a `.env` file in the project root with your Kaggle credentials:

```env
KAGGLE_USERNAME=your_username
KAGGLE_KEY=your_api_key
```

To get your Kaggle API key:
1. Go to https://www.kaggle.com/account
2. Scroll to "API" section
3. Click "Create New API Token"
4. Copy `kaggle.json` contents to `.env` file

## Datasets

### Dataset 1: Groceries Dataset
- **Source:** [Kaggle - Groceries Dataset](https://www.kaggle.com/datasets/heeraldedhia/groceries-dataset/data)
- **Size:** 38,765 transactions
- **Description:** Customer basket data with Member_number, Date, and itemDescription
- **Used for:** Task 1 (Apriori Algorithm)

### Dataset 2: Online Retail Dataset
- **Source:** [Kaggle - Online Retail](https://www.kaggle.com/datasets/vijayuv/onlineretail)
- **Size:** 500,000+ records
- **Description:** UK-based online retailer transactions (2010-2011)
- **Columns:** InvoiceNo, StockCode, Description, Quantity, InvoiceDate, UnitPrice, CustomerID, Country
- **Used for:** Task 2 (FP-Growth Algorithm)

**Note:** Datasets are automatically downloaded from Kaggle when you run the notebook cells.

## Tasks

### Task 1: Apriori Algorithm (35 points)
1. **Task 1A:** Load and Display Dataset (4 points)
2. **Task 1B:** Exploratory Data Analysis (5 points)
3. **Task 1C:** Convert to Transactional Binary Form (6 points)
4. **Task 1D:** Apply Apriori Algorithm (8 points)
5. **Task 1E:** Generate Association Rules (6 points)
6. **Task 1F:** Visualize Results (6 points)

**Dataset:** Groceries.csv  
**Parameters:**
- `min_support = 0.02`
- `min_confidence = 0.3`
- `metric = 'lift'`, `min_threshold = 1.0`

### Task 2: FP-Growth Algorithm (30 points)
1. **Task 2A:** Preprocess Dataset (5 points)
2. **Task 2B:** Exploratory Data Analysis (6 points)
3. **Task 2C:** Apply FP-Growth (8 points)
4. **Task 2D:** Generate Association Rules (6 points)
5. **Task 2E:** Network Visualization (5 points)
6. **Task 2F:** Compare Apriori vs FP-Growth (5 points)

**Dataset:** OnlineRetail.csv  
**Parameters:**
- `min_support = 0.03`
- `lift > 2.0` and `confidence > 0.6`

### Task 3: AI Comparison
Use AI tools (ChatGPT, Perplexity) to describe structural differences between Apriori and FP-Growth algorithms.

### Task 4: Critical Thinking (20 points)
- **Question 1:** Product bundles and promotional offers based on Apriori rules (10 points)
- **Question 2:** Cross-selling opportunities from FP-Growth rules (10 points)

## Usage

### Running the Notebook

1. Start Jupyter Notebook:
```bash
jupyter notebook
```

2. Open `Parajuli_4185_Pari_7979_Patil_4144_Assignment3.ipynb`

3. Run cells sequentially:
   - The notebook will automatically download datasets from Kaggle
   - Follow the markdown instructions for each task
   - Execute code cells in order

### Key Features

- **Automatic Dataset Download:** Datasets are downloaded using Kaggle API
- **Data Preprocessing:** Automated cleaning and transformation
- **Visualization:** Charts and network graphs for association rules
- **Performance Comparison:** Direct comparison between Apriori and FP-Growth

## Dependencies

- `pandas` - Data manipulation
- `numpy` - Numerical computing
- `mlxtend` - Association rule mining algorithms
- `matplotlib` - Data visualization
- `seaborn` - Statistical visualization
- `networkx` - Network graph visualization
- `kagglehub` - Kaggle dataset download
- `python-dotenv` - Environment variable management
- `jupyter` - Notebook environment

See `requirements.txt` for specific versions.

## Results

The notebook generates:
- Frequent itemsets for both datasets
- Association rules with support, confidence, and lift metrics
- Visualizations (bar charts, scatter plots, network graphs)
- Performance comparisons between algorithms
- Business insights and recommendations

## Notes

- Ensure you have Kaggle API credentials set up before running
- Datasets will be saved in the `datasets/` folder
- Some cells may take several minutes to execute (especially FP-Growth on large datasets)
- Visualizations are displayed inline in the notebook

## License

This project is for educational purposes as part of the Data Mining course assignment.

## References

- [MLxtend Documentation](http://rasbt.github.io/mlxtend/)
- [Kaggle Datasets](https://www.kaggle.com/datasets)
- [Association Rule Mining - Wikipedia](https://en.wikipedia.org/wiki/Association_rule_learning)

---

**Last Updated:** 2024

