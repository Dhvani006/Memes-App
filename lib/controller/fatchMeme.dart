import 'dart:convert';

import 'package:http/http.dart';
class FetchMeme{
  static fetchNewMeme() async
  {
    Response response = await get(Uri.parse("https://meme-api.com/gimme"));
    print(response.body);
    Map body_data=jsonDecode(response.body);
    return body_data["url"];
    print(body_data["postLink"]);
  }
}