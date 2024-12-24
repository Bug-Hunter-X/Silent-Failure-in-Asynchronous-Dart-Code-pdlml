```dart
Future<dynamic> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      return jsonData; // Return the data
    } else {
      throw Exception('Failed to load data. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Re-throw the exception or return an error value
    print('Error fetching data: $e');
    return {'error': e.toString()}; // return error object
  }
}
```