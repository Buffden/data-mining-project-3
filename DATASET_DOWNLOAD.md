# Dataset Download Instructions

## Automatic Download Using kagglehub

The Groceries dataset will be downloaded automatically in the notebook using `kagglehub`.

### Setup (First Time Only)

If you haven't set up Kaggle credentials before, you may need to:

1. **Create a Kaggle account** (if you don't have one): https://www.kaggle.com/
2. **Get your API credentials**:
   - Go to: https://www.kaggle.com/settings
   - Scroll to "API" section
   - Click "Create New Token" - this downloads `kaggle.json`
   
3. **Set up credentials** (one of these methods):
   
   **Option A: Environment Variables (Recommended)**
   ```bash
   export KAGGLE_USERNAME="your_username"
   export KAGGLE_KEY="your_api_key"
   ```
   
   **Option B: kaggle.json file**
   - Place `kaggle.json` in `~/.kaggle/kaggle.json`
   - Set permissions: `chmod 600 ~/.kaggle/kaggle.json`

### Usage in Notebook

The dataset download will be handled automatically in the first code cell:

```python
import kagglehub

# Download latest version
path = kagglehub.dataset_download("heeraldedhia/groceries-dataset")
print("Path to dataset files:", path)

# The dataset will be in the downloaded path
# Usually: ~/.cache/kagglehub/datasets/heeraldedhia/groceries-dataset/
```

### Alternative: Manual Download

If you prefer to download manually:
1. Go to: https://www.kaggle.com/datasets/heeraldedhia/groceries-dataset/data
2. Download the dataset
3. Place `Groceries.csv` in your project directory

