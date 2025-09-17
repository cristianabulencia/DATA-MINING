
num1 <- as.numeric(readline(prompt = "Enter first number: "))
num2 <- as.numeric(readline(prompt = "Enter second number: "))


cat("Select operation:\n",
    "1: Add\n",
    "2: Subtract\n",
    "3: Multiply\n",
    "4: Divide\n")

choice <- readline(prompt = "Enter your choice (1-4): ")


result <- switch(
    choice,
    "1" = num1 + num2,
    "2" = num1 - num2,
    "3" = num1 * num2,
    "4" = {
        if (num2 == 0) {
            "Error: Division by zero!"
        } else {
            num1 / num2
        }
        },
            "Invalid choice"
)

cat("Result:", result, "\n")
