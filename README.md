# Comparing-Mantel-Haenszel-test-and-Chi-square-test-on-Fat-tailed-Data    

## Purpose    

Explore the performance of Nonparametric and Parametric tests on fat-tailed small dataset.       
Mantel-Haenszel test : Nonparametric statistics.     
Chi-square test : Parametric statistics.       

## Data Source

World Health Organization :    https://www.who.int      

Datasets contain life expectancy and Immunization coverage of 147 countries, 6 regions and 4 kinds of vaccines in 2017.    

WHO regions : African Region, Americas Region, Eastern Mediterranean Region, European Region, South-East Asia Region, Western Pacific Region.       

Vaccines : Diphtheria-tetanus-pertussis (DTP3), Measles-containing-vaccine (MCV1), Poliomyelitis (polio) immunization (Pol3), Rubella Containing Vaccine (RCV1).        

Life expectancy2017.csv and Immunization2017.csv are raw data.      

Cleaned Data.csv is the dataset ready to use.

## Explaination 

The hypothesis is as follows:     
 
Ho : p11(k) = p1.(k)p.1(k) k = regions       

Ha : p11(k) ≥ p1.(k)p.1(k) k = regions or p11(k) ≤ p1.(k)p.1(k) k = regions     

![Test result](https://user-images.githubusercontent.com/46551284/70249295-31475a80-174a-11ea-81c7-557ef7c9c344.png)
MH test suggests that H0 should not be rejected for three vaccines, which means we cannot conclude that association exists between life expectancy and vaccine coverage rate of these vaccines. 
Overall Chi-square test ignoring regions for a comparison, which indicates that the two factors are positively associated for three vaccines.     

The contrast of the two tests is a result of an offset between positive and negative associations in different regions during the calculation of Mantel Haenszel statistics.       

With an investigation into a series of two by two tables in Mantel Haenszel test, a negative association between life expectancy and the vaccine coverage rate is shown in AMRO and EURO while positive association exists in the other regions, which proves our implication above.     
![Heatmap](https://user-images.githubusercontent.com/46551284/70249485-6d7abb00-174a-11ea-8d23-76f9c7e426d1.png)     

