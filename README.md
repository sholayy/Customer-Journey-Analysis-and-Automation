# Customer Analytics & Platform Optimization for a sustainability platform

## Project Overview 
For a sustainability startup, I implemented comprehensive data engineering and analytics solutions to optimize user conversion through a multi-stage customer journey. The project involved building automated data pipelines, developing advanced analytics systems, and implementing machine learning models to drive data-informed decision-making.

## Business Questions Answered
* Which acquisition channels led to the highest conversion rates?
* How did users progress through the stages of registration, gifting, and payment?
* What patterns in device usage (iOS vs. Android) influenced revenue generation?
* Which demographic segments (age, birth year) showed the highest revenue potential?
* How did user behavior evolve during their first 30 days on the platform?
* Can we predict device types from user activity when explicit data was missing?

## DATA VISUALIZATION
### 1. Revenue Source Analysis

<img width="700" alt="Screenshot 2025-01-05 at 1 25 05 AM" src="https://github.com/user-attachments/assets/6ea74241-e43e-41b3-96df-0db1515659a3" />

 * The highest revenue came from invitation-based users, with a 20% conversion rate from registration to paying customers.
  * Android users demonstrated higher engagement and conversion rates compared to iOS users.
### 2. User Activity Metrics

<img width="717" alt="Screenshot 2025-01-05 at 1 26 13 AM" src="https://github.com/user-attachments/assets/add5e6dc-bf84-4e19-a751-aa4d6a7b196c" />

### Key Findings:
  * A 7-day rolling average of daily active users revealed significant peak times for engagement.
  * The analysis showed a clear correlation between activity levels and progression through the funnel stages (e.g., from registration to paying user).


### 3. Cohort Retention Analysis

<img width="594" alt="Screenshot 2025-01-05 at 1 26 25 AM" src="https://github.com/user-attachments/assets/60a0e867-660b-4ba5-9664-aa56d9faea0b" />


   * Performed cohort analysis to evaluate user retention across different acquisition channels, revealing that invitation-based users had the highest retention.
### 4.
<img width="655" alt="Screenshot 2025-01-05 at 1 24 53 AM" src="https://github.com/user-attachments/assets/8424b2c4-76fd-4901-bd5d-286638f81d94" />

### Funnel Analysis
   * The user journey was divided into four key funnels: Registration, Free Tree Sent, Super Tree Sent, and Paying User.
* Key Drop-offs: Significant user loss was noted between Free Tree Sent and Super Tree Sent stages, providing insights for targeted marketing interventions.

  ## Impact & Results 
* 20% conversion rate from registration to paying customers via invitation-based referrals.
* Identified Android platform as the highest performer in terms of conversion metrics, leading to a recommendation for platform optimization.
* Real-time data pipelines improved tracking and insights, allowing marketing teams to act on user behavior patterns more swiftly.
* Developed a predictive model with an 85% accuracy for classifying user devices, despite missing data, leading to more precise customer segmentation.

  ## Limitations
 * Data Quality: Missing or incomplete device-type data.
 * Solution: I used pattern recognition to classify devices based on user activity (resulting in 85% accuracy in predictions).
 * Scalability: The system's ability to scale for future data growth needed careful monitoring to ensure real-time analysis was maintained.

  ## Recommendations

* Referral Program Enhancement: Scale invitation-based acquisition using targeted incentives based on high conversion rates.
* Android Optimization: Prioritize Android users given their superior conversion metrics across the funnel.
* Super Tree Conversion: Increase visibility of Super Tree offers to Free Tree users to enhance cross-sell opportunities.
* Predictive Modeling: Further develop models to identify high-potential users earlier in the funnel and optimize for activation.

## Future Considerations
  * Expansion of predictive capabilities for journey stage progression
  * Integration of advanced ML models for conversion optimization
  * Enhanced real-time processing of user journey data




