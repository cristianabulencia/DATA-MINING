Input_lights <- readline("Please Enter Color: ")

Input_lights <- tolower(Input_lights)

message <- switch (
    Input_lights,
    red = "Stop",
    yellow = "Ready",
    green = "Go",
    "Invalid Color"
)

print(message)