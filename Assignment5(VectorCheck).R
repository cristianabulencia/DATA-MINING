vec <- c(20,55,70)
print(paste("Input c(20, 55, 70)"))
if (all(vec > 50)) {
  print("All are above 50")
} else if (any (vec > 50)) {
  print("Some are above 50")
} else {
  print("None are above 50")
}

