temp <- 25
print(paste("Input:",temp))
if (temp >= 30){
  print("Hot")
} else if (temp >= 20 && temp <= 29){
  print("Warm")
} else if (temp < 20) {
  print("Cold")
} else {
  print("Invalid Input")
}