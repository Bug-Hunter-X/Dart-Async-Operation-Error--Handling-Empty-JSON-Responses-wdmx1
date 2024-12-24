```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON list
      final List<dynamic> data = jsonDecode(response.body);

      // The bug is here!  Incorrect type handling. 
      // If the server sends an empty list [], this will throw an error.
      final String firstItem = data[0]['name'];  //this may throw exception
      print(firstItem); 
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```