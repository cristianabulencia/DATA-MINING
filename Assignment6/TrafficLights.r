light <- "red"

message <- switch(
    tolower(light),
    red = "Stop",
    Ready = "Yellow",
    Go = "Green",
    "Invalid Color"
)

print(message)