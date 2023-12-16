import 'package:get/get.dart';
import 'package:matjar_salla/models/home_model.dart';
import '../../core/class/status_request.dart';
import '../../core/functions/handling_data.dart';
import '../../shared/helper/remote/auth/home/home.dart';

class HomeController extends GetxController
{
  List data = [];

  HomeModel? homeModel;

  StatusRequest statusRequest = StatusRequest.none;

  HomeData homeData = HomeData(Get.find());

  getHomeData() async {
    statusRequest = StatusRequest.loading;
    update();
    dynamic response = await homeData.getData();
    print("======================================= $response");
    statusRequest = handlingData(response);
    if(StatusRequest.success == statusRequest)
    {
      if(response['status'] == true)
      {
        data.addAll(response['data']);
        // homeModel = HomeModel.fromJson(response['data']);
      } else
      {
        statusRequest = StatusRequest.error;
      }
    }
    update();
  }

  @override
  void onInit() {
    getHomeData();
    super.onInit();
  }
}