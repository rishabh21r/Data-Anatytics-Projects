# 🎵 Spotify & YouTube Data Analysis

A data analysis project exploring the relationship between Spotify streaming performance and YouTube engagement using Python. This project focuses on data cleaning, exploratory data analysis (EDA), and extracting business insights from over 20,000 songs.

---

## 📌 Project Overview

This project analyzes a dataset containing Spotify and YouTube statistics for thousands of songs. The objective is to understand artist performance, streaming trends, audience engagement, and track popularity across both platforms.

The analysis was performed using Python libraries such as Pandas, NumPy, Matplotlib, and Seaborn.

---

## 📂 Dataset

- **Dataset Size:** 20,718 records
- **Features:** 28 columns
- **Platforms Covered:**
  - Spotify
  - YouTube

### Key Columns

- Artist
- Track
- Album
- Album Type
- Danceability
- Energy
- Acousticness
- Loudness
- Tempo
- Duration
- YouTube Views
- Likes
- Comments
- Spotify Streams
- Licensed
- Official Video

---

## 🛠️ Technologies Used

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Google Colab / Jupyter Notebook

---

## 🧹 Data Cleaning

The following preprocessing steps were performed:

- Removed unnecessary columns
  - `Unnamed: 0`
  - `Url_spotify`
  - `Url_youtube`
  - `Uri`
- Checked missing values
- Replaced missing values in:
  - Likes → 0
  - Comments → 0
- Removed remaining records containing null values
- Prepared a clean dataset for analysis

---

## 📊 Analysis Performed

Some of the business questions answered include:

- Top 10 artists with the highest YouTube views
- Top 10 most streamed tracks on Spotify
- Artist popularity comparison
- Song performance across platforms
- Audience engagement analysis
- Music feature analysis (Danceability, Energy, Acousticness, etc.)
- Stream and view trends
- Track popularity ranking

---

## 📈 Sample Insights

- Ed Sheeran recorded the highest cumulative YouTube views among all artists.
- "Blinding Lights" was the most streamed track on Spotify.
- Popular songs generally achieved high engagement across both Spotify and YouTube.
- Artist popularity varies significantly between streaming and video platforms.

---

## 📁 Project Structure

```
Spotify-Youtube-Analysis/
│
├── Spotify_Youtube_Analysis.ipynb
├── Spotify_Youtube Dataset.csv
├── README.md
```

---


## 📊 Skills Demonstrated

- Data Cleaning
- Exploratory Data Analysis (EDA)
- Data Visualization
- Business Insight Generation
- Feature Analysis
- Data Aggregation
- GroupBy Operations
- Sorting & Filtering
- Missing Value Treatment

---

## 🎯 Learning Outcomes

- Cleaned real-world music streaming data
- Compared artist performance across multiple platforms
- Extracted actionable insights using Python
- Practiced exploratory data analysis techniques
- Improved data storytelling skills

---

## 👨‍💻 Author

**Rishab Bansal**


---

⭐ If you found this project useful, consider giving the repository a star.
