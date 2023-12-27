# For Loops 
for(i in 1:5){
  print(i)
}

#Reverse Increment For Loops
for(i in -5:1){
  print(i)
}

# Printing Elements in Lists
X = list(2,"Hello R",TRUE,5.0)
for (i in 1:length(X)){
  print(X[i])
}

#Printing Reverse Elements in List
X = list(2,"Hello R",TRUE,5.0)
for (i in length(X):1){
  print(X[i])
}

#Nested For Loops
var1 = list("Hello","Good Bye!")
var2 = list("Bangalore")

# While Loops 
counter <- 0
while(counter < 10){
  print("Hello R")
  counter <- counter + 1
}

# Break Keyword 
counter <- 0
while(counter < 10){
  print("Hello R")
  counter <- counter + 1
  if (counter == 5){
    break
    #CODE WILL NOT RUN DUE TO BREAK STATEMENT AFTER THIS POINT
  }
  print("continuing running the loop")
}

# Next Keyword
counter <- 0
while(counter < 10){
  print("Hello R")
  counter <- counter + 1
  if (counter == 5){
    print("Missed running the loop")
    next
  }
  print("continuing running the loop")
}
  
# Conditional statements inside Loops 
counter <- 1
values = list("bangalore","mysore","chennai")

while (T){
  print(toupper(values[counter]))
  if (counter == length(values)){
    break
  }
  counter <- counter + 1
}

#Assignment : IMPLEMENT SAME CODE BLOCK USING FOR LOOP
