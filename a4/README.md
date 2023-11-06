Issues with movies.csv dataset and possible commands to clean it up:
- File contains its own name
- The datapoints don't allign with what the category row provides; data is impropely formatted, with no columns
- Occasional mistyping of the delimiters; multiple commas present randomly
- Random pipe symbols strewn about
- Whitespacing got misinterpreted, leading to "^M" being present instead of newlines

Solutions:
- Heavy use of sed to remove extra characters (commas, pipes, unnecessary whitespace like tabs, newlines, etc.)
- After all errors and whitespaces are cleared up, and everything results in clear lines per entry, another use of sed to replace "^M" with actual newlines
