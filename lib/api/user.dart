import "dart:convert";

import "package:http/http.dart" as http;

Future<List> userInfo() async {
  var url = Uri.parse("https://jsonplaceholder.typicode.com/users");
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonData = jsonDecode(response.body);
    var data = jsonData;
    List usersData = [];
    for (var item in data) {
      usersData.add(item);
    }
    return usersData;
  } else {
    throw Exception("no response");
  }
}
