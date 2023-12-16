import 'package:get/get.dart';
import 'package:matjar_salla/core/services/services.dart';
import '../../../../../core/class/crud.dart';
import '../../../end_points.dart';

class HomeData
{
  Crud crud;

  HomeData(this.crud);

  MyServices myServices = Get.find();

  getData() async {
    var response = await crud.getData(
      url: AppLink.home,
      token: myServices.sharedPreferences.getString("token"),
    );
    return response.fold((l) => l, (r) => r);
  }
}