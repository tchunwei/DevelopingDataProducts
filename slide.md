<style>
.reveal pre code { 
  font-size: 20px;
}
</style>

Movie Rating
========================================================
author: Tang Chun Wei
date: 28 Jan 2016

Introduction
========================================================
This is a simple app displaying some movie rating and relavent info read from a csv file.
Below shows the summary of the data inside the file

```r
data <- read.csv('Movie.csv')
summary(data)
```

```
                   Title          Year          Votes       
 12 Angry Men         :  1   Min.   :1921   Min.   :  2338  
 2001: A Space Odyssey:  1   1st Qu.:1959   1st Qu.: 40719  
 8?                   :  1   Median :1983   Median :111195  
 A Beautiful Mind     :  1   Mean   :1979   Mean   :143269  
 A Clockwork Orange   :  1   3rd Qu.:2001   3rd Qu.:215876  
 A Separation         :  1   Max.   :2011   Max.   :533848  
 (Other)              :244                                  
     Rating           Rank       
 Min.   :5.200   Min.   :  1.00  
 1st Qu.:7.000   1st Qu.: 63.25  
 Median :7.700   Median :125.50  
 Mean   :7.678   Mean   :125.50  
 3rd Qu.:8.600   3rd Qu.:187.75  
 Max.   :9.300   Max.   :250.00  
                                 
```

Raw Data
========================================================
Here are some data extracted from the file

```r
head(data)
```

```
                           Title Year  Votes Rating Rank
1       The Shawshank Redemption 1994 319356    9.2    1
2                  The Godfather 1972 511495    9.3    2
3         The Godfather: Part II 1974 319352    8.4    3
4 The Good, the Bad and the Ugly 1966  21303    8.9    4
5                   My Fair Lady 1964 533848    7.8    5
6                   12 Angry Men 1957 164558    8.9    6
```

Input
========================================================
For the app, a range slider has been created so that user can filter the data based on the movie rating.

Output
========================================================
Based on the filtered data, there are 2 outputs:-
- A histogram showing the frequncy of rating
- A data table showing relevant information
