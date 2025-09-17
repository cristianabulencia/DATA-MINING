nums <- c(2, 4, 5)

if (all(nums %% 2 == 0)) {
  print("all are even")
} else if (any(nums %% 2 == 0)) {
  print("some are even")
} else {
  print("none are even")
}
