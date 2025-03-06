## Understanding why disability benefit claims are pending
Social Security Adminstration offices throughout the country approve or disaprove of disability claims called Supplemental Security Income (SSI) or Social Security Disability Insurance United States SSDI. I am looking into the number of pending cases for SSI and SSDI.


## Goal
 1. Produce a visually appealing but understandable piece on how there are more pending cases for SSI and SSDI claims. 
2. Visual goals?
    a. Waffle chart: that compares the number of pending claims, total claims and approved claims. 

3. U.S map: I avoid maps unless there is a genuine purpose of why it’s needed. I wanted to show how each state is performing when it comes to claims approved, denied and pending. This method easily showed Texas had the highest pending cases. 

## Data cleaning
1. Given this was a readily available dataset, I had an easier time filtering and cleaning on pandas. My notebook is attached so feel free to see how I did it. 

2. Knowing what to analyze became more clear after my interviews. 

## Lessons learned
1. One small detail, but important one I know now is that when I am filtering a subset of a pandas df, I need to use the .loc to explicitly modify the subset df. Or else, my code will get confused. 

2. Another small detail, outer merging for combining my pandas df made the most sense! I usually do concat and delete the excess columns I don't need but outer merge saved me that step. 


## Links I read:
https://www.huffpost.com/entry/social-security-missed-benefit-payment_n_67c5d849e4b05a517aba7be2
https://www.newsweek.com/full-list-social-security-office-closings-after-doge-cuts-2035533
https://www.reuters.com/graphics/SOUTHKOREA-CRASH/BIRDSTRIKES/egpbjdamxpq/
    a. Not for the subject, but more for inspiration on how I want my data visualization to look. 
## Challenges
1. Time! We were given only a week to finish. 
Possible sources I wanted to speak to before the due date:
2. Rich Couture, spokesperson for AFGE SSA General Committee, a union that represents 42,000 Social Security employees nationally.

## Gratitude 
Interviews were not necessary for this project but I realized a good data story can only happen when you talk to sources. I am forever grateful to have interviewed Suzzie. She was so honest, funny and patient when I would ask her clarifying questions. It was genuinely a wonderful reminder of why I continue reporting. 







