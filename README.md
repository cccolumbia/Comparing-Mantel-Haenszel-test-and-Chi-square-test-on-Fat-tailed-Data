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

## Explaination 

The hypothesis is as follows:     
 
Ho : p11(k) = p1.(k)p.1(k) k = regions       

Ha : p11(k) ≥ p1.(k)p.1(k) k = regions or p11(k) ≤ p1.(k)p.1(k) k = regions     

MH test suggests that H0 should not be rejected for three vaccines, which means we cannot conclude that association exists between life expectancy and vaccine coverage rate of these vaccines. 
Overall Chi-square test ignoring regions for a comparison, which indicates that the two factors are positively associated for three vaccines.     
