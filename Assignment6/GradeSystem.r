
grade <- readline(prompt = "Enter a grade (A, B, C, D, F): ")

grade <- toupper(trimws(grade))

meaning <- switch(
grade,
    A = "Excellent",
    B = "Good",
    C = "Average",
    D = "Poor",
    F = "Fail",
    "Invalid grade"
)

cat(meaning, "\n")
