#R program to find the sum of all the multiples of 3 or 7 below 1000000
#Largest Number lesser than 1000000 which is a multiple of 3 = 999999
#Sum of all numbers from 3-999999 is a AP with cd 3
#3+6+9...+999999 can also be written as 3(1+2+3....+333333)
#sum of n consecutive numbers is given by n*(n+1)/2
#sum of 333333 consecutive numbers is 333333*(333333+1)/2
#write a function to use the above logic with function parameters:

calsum <- function(p,q){
  a <- floor(q/p)
  return(p*(a*(a+1)/2))
}

#Execute the function
#Be sure to subtract the multiples of LCM of 3,7(21) to remove duplicate terms in addition

x <- calsum(3,1000000) + calsum(7,1000000) - calsum(21,1000000)
print(x)