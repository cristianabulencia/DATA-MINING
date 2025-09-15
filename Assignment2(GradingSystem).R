marks <- 72   

if (marks >= 90 && marks <= 100) {
  print("Grade: A")
} else if (marks >= 80 && marks <= 89) {
  print("Grade: B")
} else if (marks >= 70 && marks <= 79) {
  print("Grade: C")
} else if (marks >= 60 && marks <= 69) {
  print("Grade: D")
} else if (marks < 60) {
  print("Grade: F")
} else {
  print("Invalid input.")
}
