# 📊 Measures: Digital Marketing Campaign Analytics

This documentation provides the complete catalog of DAX measures used to track cross-channel marketing performance, ranging from top-of-funnel ad metrics to bottom-of-funnel conversion efficiency.

---

## 💰 Financial & Conversion Efficiency

* **Total Ad Spend**: Total capital invested across all advertising channels.

  * **Formula**: `SUM(data[AdSpend])`
  * **Format**: `\$#,0;(\$#,0);\$#,0`

* **Total Conversion**: The absolute count of successful desired actions (purchases, sign-ups, etc.).

  * **Formula**: `SUM(data[Conversion])`
  * **Format**: `#,0`

* **Cost per Conversion**: Measures the average advertising cost to acquire one conversion.

  * **Formula**: `[Total Ad Spend] / [Total Conversion]`
  * **Format**: `\$#,0;(\$#,0);\$#,0`

* **Avg Conversion Rate**: The average percentage of users who completed a desired action out of total interactions.

  * **Formula**: `AVERAGE(data[ConversionRate])`
  * **Format**: `0.0%;-0.0%;0.0%`

---

## 🌐 Web Traffic & Engagement

* **Web Visits**: Total volume of traffic directed to the brand's website.

  * **Formula**: `SUM(data[WebsiteVisits])`
  * **Format**: `#,0`

* **Avg Pages per Visit**: Average number of pages consumed by a user during a single session.

  * **Formula**: `AVERAGE(data[PagesPerVisit])`
  * **Format**: `0.00`

* **Avg Time on Site**: The average duration a user spends interacting with the web property.
  
  * **Formula**: `AVERAGE(data[TimeOnSite])`
  * **Format**: `0.00 min`

* **Avg CTR**: The average Click-Through Rate for advertisements.

  * **Formula**: `AVERAGE(data[ClickThroughRate])`
  * **Format**: `0.0%;-0.0%;0.0%`

---

## 📧 Email & Social Performance

* **Email Opens**: Total number of times marketing emails were opened by recipients.

  * **Formula**: `SUM(data[EmailOpens])`
  * **Format**: `#,0`

* **Email Clicks**: Total number of clicks on links within the emails.

  * **Formula**: `SUM(data[EmailClicks])`
  * **Format**: `#,0`

* **Email CTOR**: Click-To-Open Rate; measures the effectiveness of email content among those who opened the mail.

  * **Formula**: `SUM(data[EmailClicks]) / SUM(data[EmailOpens])`
  * **Format**: `0.0%;-0.0%;0.0%`

* **Social Shares**: Total volume of content distribution by users across social platforms.

  * **Formula**: `SUM(data[SocialShares])`
  * **Format**: `#,0`

---

## 👥 Customer Loyalty

* **Total Customers**: Total count of unique customer IDs interacting with the campaigns.

  * **Formula**: `COUNT(data[CustomerID])`
  * **Format**: `#,0`

* **Avg Loyalty Points**: The average balance of rewards points held by the customer base.

  * **Formula**: `AVERAGE(data[LoyaltyPoints])`
  * **Format**: `0.00`

---

## 🧠 Explanation of Complex Logics

* **Email CTOR (Click-to-Open Rate)**: Unlike standard CTR, which measures clicks against the total emails sent, **CTOR** specifically isolates the performance of the email's internal content and design. By dividing `Email Clicks` by `Email Opens`, we remove the variable of "Subject Line effectiveness" and focus purely on whether the body of the email was engaging enough to drive action from those who already opened it.

* **Efficiency Benchmarking (Cost per Conversion)**: This is the primary measure for ROI. By dividing `Total Ad Spend` by `Total Conversion`, the model identifies the "breakeven" point. If the Cost per Conversion exceeds the average customer lifetime value, the campaign is technically losing money. This measure allows for real-time adjustments to bidding strategies across different segments.

* **Engagement Depth**: `Avg Pages per Visit` and `Avg Time on Site` act as proxies for "Traffic Quality." High `Web Visits` combined with low `Pages per Visit` often suggests a mismatch between ad messaging and landing page content (High Bounce Rate). Monitoring these together helps optimize the user journey post-click.

* **Loyalty Correlation**: By tracking `Avg Loyalty Points` alongside `Avg Conversion Rate`, the marketing team can determine if high-value loyalty customers are converting at a higher rate than new prospects, justifying further investment in retention-based campaigns over pure acquisition.
