### MAB2111 - Computing for Analytics 1
### Submitted by: Lopez, Maanne
### Machine Problem (aka R Assignment No. 2) 

---

### Assignment  at github:
### https://github.com/mlopezatgit/lopezm_R-homework1/blob/master/hw1-upload

---

## Computes the factorial of an integer argument with an output of a vector length 1
      
  # Let "find_factorial" be the name of the factorial function
  # Let "n" in "find_factorial(n)" be the number entered by the user

    find_factorial <- function(n) {
      if(n <= 1) {
        return(1)
      } else { 
        return(n * find_factorial(n-1))
      }
    }

    #Insert a numeric value inside the parenthesis
      find_factorial(6)



## Computes the deteminant of a matrix with an output of a vector length 1
      
  # Let "iamatrix" be the sample matrix with values and dimension defined by the user
  # Let "det_iamatrix" be the determinant of the sample matrix

    iamatrix <- 
      matrix(c(-3,3,-2,-4,2,1,5,0,-1),3,3)

      print(iamatrix)

    det_iamatrix <- 
      det(iamatrix)

      print(det_iamatrix)




## Sort a mixed vector in decreasing order
  
  # Let "mix_vector" be a vector with numeric and chacarter values
  # Let "dec_vector" be the sorted vector in decreasing order

  mix_vector <-
    c(1,55,7,101,"zoo","apple","mountain")

    print(mix_vector)

  dec_vector <- 
    sort(mix_vector, decreasing = TRUE)

    print(dec_vector)




## Computes net pay at work

  #Insert values inside the parenthesis
    basic_pay <- (25000)
    taxable_allowance <- (1500)
    nontaxable_allowance <- (300)
    total_deductions <- (1953.37)

  #Gross pay formula
    gross_pay = basic_pay+taxable_allowance+nontaxable_allowance

  #Net pay formula
    net_pay = gross_pay-total_deductions

  # Net pay
    print(net_pay)





## Accepts a vector and integer and returns nth highest number
  num_set <- c(-1,-16,-4,-20,-50)
  max(num_set, na.rm = TRUE)




## Computes the compound interest of an investment given the rate, time, and initial amount or principal

  #Insert values inside the parenthesis
    principal <- (5000)
    interest_rate <- (0.05)
    compounding_period <- (12)
    time <- (10)

  #Compound interest formula
    compound_interest = principal*(1+(interest_rate/compounding_period))^(compounding_period*time)

  # Compound Interest
    print(compound_interest)




## Checks if the given integer is a prime
    
  isPrime <- 
  function(integer){ return (sum(integer/1:integer == integer %/% TRUE:integer) == FALSE )}

  #Insert a numeric value inside the parenthesis
    isPrime(8)


    
### END OF CODE