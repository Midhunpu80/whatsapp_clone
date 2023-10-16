import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class langugaeservice extends GetxController {
  var isLoading = false.obs;

  getlanguages() async {
    try {
      isLoading(true);

      final respone = await http.get(
          Uri.parse(
              "https://online-code-compiler.p.rapidapi.com/v1/languages/"),
          headers: {
            'X-RapidAPI-Key':
                'ea3d193a8dmsh634a7991caff0ddp12b074jsn0999d3882f44',
            'X-RapidAPI-Host': 'online-code-compiler.p.rapidapi.com'
          });
      if (respone.statusCode == 200) {
        // ignore: unused_local_variable
        final data = jsonDecode(respone.body);
        isLoading(false);
      } else {
        isLoading(false);
        update();
      }
    } catch (e) {
      isLoading(false);

      throw ("data is failed$e");
    }
  }

  @override
  void onInit() {
    getlanguages();

    super.onInit();
  }
}
