WeightLoss
========================================================
author: Rick Adkins
date: September 24, 2015

Everybody wants it.  What are you willing to give up to get it?

The Problem
========================================================

The body needs a certain amount of calories for normal functions - like breathing!

It seems obvious
- When we burn more calories than we intake, then we <span style="color:red;font-weight:bold;">lose</span> weight

- But if we burn less calories than we intake, then we <span style="color:red;font-weight:bold;">gain</span> weight

The trick is to know what the break even calorie count is for you


So, how many calories should I have
========================================================

Calculate your Basal Metabolic Rate (BMR) using the formula:

offsetCoef + (weightCoef * wt) + (heightCoef * ht) - (ageCoef * age)

Then, multiple by activity factor based on how active you are:

- sedentary, lightly active, moderately active, very active, extremely active
- multiple by 1.2, 1.3, 1.4, 1.5, or 1.6  respectively

Example Usage: 
=======================================================

- For a 150 pound, 5'6" 46 year old female, VERY active:

```r
#calculate daily break even calorie count
1.6 * (655 + (4.3 * 150) + (4.7 * 66) - (4.7 * 46))
```

```
[1] 2230.4
```

- For a 150 pound, 5'6" 46 year old male, VERY active:

```r
#calculate daily break even calorie count
1.6 * (66 + (6.3 * 150) + (12.9 * 66) - (6.8 * 46))
```

```
[1] 2479.36
```


Now do the real work
========================================================
Now you know your calorie intake count.  

- <span style="color:red;font-weight:bold;">REDUCE</span> how many calories you eat
OR
- <span style="color:red;font-weight:bold;">INCREASE</span> the number of calories you burn by being more active OR
- <span style="color:red;font-weight:bold;">BOTH</span> (the best choice)

Go calculate your break even calorie count.  You'll be glad you did!

Cite: <a href="http://weightloss.about.com/od/eatsmart/a/blcalintake_2.htm" target="_new">http://weightloss.about.com/od/eatsmart/a/blcalintake_2.htm</a>


