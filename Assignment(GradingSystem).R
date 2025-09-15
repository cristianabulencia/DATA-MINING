grades <- 72  

print(paste("Input: ", grades))

if (grades >= 90 && grades <= 100) {
  print("Grade: A")
} else if (grades >= 80 && grades <= 89) {
  print("Grade: B")
} else if (grades >= 70 && grades <= 79) {
  print("Grade: C")
} else if (grades >= 60 && grades <= 69) {
  print("Grade: D")
} else if (grades < 60) {
  print("Grade: F")
} else {
  print("Invalid input.")
}
