# 🏗️ Calculated Columns: Hospital Emergency Room Analytics

This documentation details the structural data enhancements for the Digital Marketing Campaign analysis model, focusing on temporal and demographic segmentation to drive operational insights.

* **👥 Age Group**:
Categorizes website visitors into targeted demographic brackets. This is essential for identifying which life-stage segments are most responsive to specific marketing campaigns and determining which age groups drive the highest conversion rates and on-site engagement.

  ```dax
  SWITCH( TRUE(),
      data[Age]>=16 && data[Age]<=20,  "16 - 20",
      data[Age]<=30,  "21 - 30",
      data[Age]<=45,  "31 - 45",
      data[Age]<=60,  "46 - 60",
      "61 - 75"
  )
  ```


* **💰 Income Bracket**:
Segments visitors by annual income to analyze purchasing power. This allows the marketing team to correlate income levels with Ad Spend efficiency, identifying which financial segments yield the highest ROI and which are more sensitive to premium product offerings.

  ```dax
  SWITCH( TRUE(),
      data[Income] < 35000, "Low (<$35k)",
      data[Income] <= 75000, "Lower-Middle ($35k-$75k)",
      data[Income] <= 125000, "Upper-Middle ($75k-$125k)",
      data[Income] <= 200000, "High ($125k+)",
      "Affluent ($200k+)"
  )
  ```


* **🔢 Income Sort**:
A hidden helper column used to ensure the Income Group displays chronologically in visualizations (20k → 150k) rather than alphabetically.

  ```dax
  SWITCH( TRUE(),
      data[Income] < 35000, 1,
      data[Income] <= 75000, 2",
      data[Income] <= 125000, 3,
      data[Income] <= 200000, 4,
      5
  )
  ```
