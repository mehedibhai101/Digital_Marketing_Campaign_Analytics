# 🏗️ Calculated Columns: Hospital Emergency Room Analytics

This documentation details the structural data enhancements for the Digital Marketing Campaign analysis model, focusing on temporal and demographic segmentation to drive operational insights.

* **👥 Age Group (data)**:
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
