import 'dart:convert';
import 'package:bloc_test_project_3_game/models/data_model.dart';
import 'package:http/http.dart' as http;

class GamesRepo {
  Future<List<DataModel>?> getGameData() async {
    const String url = "https://www.gamerpower.com/api/giveaways";
    var response = await http.Client().get(Uri.parse(url));
    if (response.statusCode != 200) {
      return null;
    } else {
      var datas = jsonDecode(response.body);
      List<DataModel> dataModels = [];
      for (var data in datas) {
        DataModel dataModel = DataModel.fromJson(data);
        dataModels.add(dataModel);
      }
      return dataModels;
    }
  }
}
