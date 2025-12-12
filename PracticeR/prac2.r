nums <- c(2,4,8)

if (all(nums %% 2 == 0)) {
    print("All numbers are even")
} else if (any(nums %% 2 == 0)) {
    print("Atleast one number is even")
} else {
    print("Ivalid")
}