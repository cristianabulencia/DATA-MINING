scores <- as.numeric(readline("Enter Grade: "))

if (all(scores > 60)) {
    print("All Students passed!")
} else if (any(scores < 60)) {
    print("At least one student failed!")
} else {
    print("Invalid!")
}