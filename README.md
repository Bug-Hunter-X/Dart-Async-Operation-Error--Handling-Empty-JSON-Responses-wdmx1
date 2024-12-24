# Dart Async Operation Bug: Empty JSON Response Handling

This repository demonstrates a common error in Dart when handling asynchronous operations and JSON responses.  The `fetchData` function attempts to access the first element of a JSON array without checking if the array is empty, leading to an `RangeError` if the response is an empty list `[]`.

The solution demonstrates how to safely handle empty responses using conditional checks and null-aware operators.

## How to reproduce

1. Clone this repository
2. Run `fetchData()` method.  If a mock server returns an empty list, the original code will throw an error. The solution code gracefully handles this case.