```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);

      // Solution: Check for empty list before accessing elements
      String? firstItem; // Use a nullable String
      if (data.isNotEmpty) {
        firstItem = data[0]['name'];
      } else {
        print('JSON response is an empty list.');
      }

      print(firstItem); // Null-safe print

    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```