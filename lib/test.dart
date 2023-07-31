// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/mockito.dart';
// import 'package:http/http.dart' as http;
//
// class MockClient extends Mock implements http.Client {}
//
// void main() {
//   group('Test API', () {
//     test('fetchData returns response', () async {
//       final client = MockClient();
//
//       when(client.get(Uri.parse('https://jsonplaceholder.typicode.com/posts')))
//           .thenAnswer((_) async => http.Response('{"title": "Test"}', 200));
//
//       expect(await fetchData(client), isA<http.Response>());
//     });
//   });
// }
//
// Future<http.Response> fetchData(http.Client client) async {
//   return client.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
// }