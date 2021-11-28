# Amazon_Vine_Analysis


## Overview of the Analysis

The purpose of the analysis is to determine if there is any bias towards favorable reviews from Vine members in the dataset.

## Results

I am using SQL to find out if having a paid Vine review makes a difference in the percentage of 5-star reviews. 

The vine table has almost 7.5 million reviews, so to make our analysis more relevant, we are taking records with total_votes greater than 20 and helpful votes greater than 50%.

1. How many Vine reviews and non-Vine reviews were there? 

- With the above base criteria, there are 1,458 paid vine reviews and 94,418 unpaid vine reviews.

<img src="https://github.com/Nikhila999/Amazon_Vine_Analysis/blob/main/images/total_paid_reviews.png" width="400"> <img src="https://github.com/Nikhila999/Amazon_Vine_Analysis/blob/main/images/total_unpaid_reviews.png" width="400">

2. How many Vine reviews were 5 stars? How many non-Vine reviews were 5 stars?

- There are 530 paid 5 star reviews and 45,210 unpaid 5 star reviews.

<img src="https://github.com/Nikhila999/Amazon_Vine_Analysis/blob/main/images/paid_5star_reviews.png" width="400"> <img src="https://github.com/Nikhila999/Amazon_Vine_Analysis/blob/main/images/unpaid_5star_reviews.png" width="400">

3. What percentage of Vine reviews were 5 stars? What percentage of non-Vine reviews were 5 stars?

- There are 36.35% paid 5 star reviews and 47.88% unpaid 5 star reviews.

<img src="https://github.com/Nikhila999/Amazon_Vine_Analysis/blob/main/images/%25paid_5star_reviews.png" width="400"> <img src="https://github.com/Nikhila999/Amazon_Vine_Analysis/blob/main/images/%25unpaid_5star_reviews.png" width="400">


## Summary

Looking at the percentage 5-star reviews we can state that there is no bias towards favoravle reviews from vine members. The percentage 5 star reviews from paid members is 36.35% whereas the percentage 5 star reviews from unpaid or non vine members is 47.88%, that is there are more 5 star reviews from non vine members.

One additional statement to help our analysis further would be to see how the percentages change when we are considering the complete dataset rather then filtering the data with total_votes greater than 20 and helpful votes greater than 50%.


