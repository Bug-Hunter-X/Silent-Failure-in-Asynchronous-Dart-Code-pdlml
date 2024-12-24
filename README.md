# Silent Failure in Asynchronous Dart Code

This repository demonstrates a common error in asynchronous Dart code: catching exceptions without properly handling or re-throwing them. This can lead to silent failures where the program continues running but without the expected result, making debugging difficult.

## The Bug
The `bug.dart` file contains a function `fetchData` that fetches data from an API.  While it includes a `try-catch` block, the `catch` block only prints an error message and doesn't handle or re-throw the exception. This means the function will continue executing even if there's an error fetching data. This can be problematic as it won't alert the calling function of any errors and will likely lead to unforeseen results. 

## The Solution
The `bugSolution.dart` demonstrates how to correctly handle exceptions. The improved `fetchData` function either re-throws the exception allowing the calling function to handle it, or explicitly returns an error to the caller, promoting better error handling and maintainability.