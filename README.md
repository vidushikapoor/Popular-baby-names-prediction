# Baby Names Frequency Analysis

This R script performs a frequency analysis of baby names from a collection of files located in the specified folder. The script reads data from multiple text files, aggregates the information, and generates frequency graphs based on user input for a specific baby name.

## Getting Started

### Prerequisites

Make sure you have R installed on your system. If not, you can download and install it from the official website: [https://www.r-project.org/](https://www.r-project.org/).

### Installation

1. Clone or download the script to your local machine.
2. Open the R environment or an R script editor of your choice.
3. Set the working directory to the location where the script is saved using `setwd()`, or modify the `folder` variable to the appropriate path where the baby name files are stored.

```R
# Set the working directory to the folder containing baby name files
folder <- "/Users/vidushikapoor/R class/names_baby/"
```

## Running the Script
- Ensure that the required baby name files are present in the specified folder (folder). The files should have a .txt extension.

- Execute the R script. The script will read all the baby name files, aggregate the data, and prompt you to enter a baby name for which you want to see the frequency graph.

- Enter the baby name when prompted. The script will display the frequency graph for the specified name, both for male and female babies, if available.

- The script will also display the top 3 names with the highest and lowest frequencies across all years.

## Script Explanation
- The script begins by loading the necessary libraries and setting the folder path for the baby name files.

- It reads the data from each file and converts it into a data frame format, standardizing column names to 'Name', 'Sex', 'Freq', and adding the 'year' column based on the file name.

- The user is prompted to enter a baby name for frequency analysis. The script then filters the data for the specified name and gender ('M' for male and 'F' for female). If data is available for the provided name and gender, the frequency graph is displayed using the plot() function.

- Next, the script aggregates the total frequency for each name across all years and stores it in newListOrder. The data is then sorted in ascending and descending order of frequency.

- The top 3 names with the highest and lowest frequencies are printed on the console.

## Example Usage

```
# After running the script, you will be prompted to enter a baby name.
# Let's assume you enter "Emma" as the name.

# Output:
# [1] 5
# [1] year Name Sex  Freq
# <0 rows> (or 0-length row.names)
# [1] "No female babies for this name"
# [1] 7
# [1] year Name Sex  Freq
# <0 rows> (or 0-length row.names)
# [1] "No male babies for this name"

# The script will then display the top 3 names with the highest and lowest frequencies.
```

## Note
Ensure that the folder path (folder) is set correctly to the location where the baby name files are stored.
