
import 'package:get/get.dart';
import 'package:zhihu_daily/utils/data_provider.dart';

class HomeController extends GetxController {

  var myAsyncData = Rxn<List>();
  Future<void> fetchData() async {
    var myFetchedData = DataProvider.getLatestArticle();
    print(myFetchedData);

    // myAsyncData.value = myFetchedData;
  }

  var count = 0.obs;
  increment() => count++;

  @override
  void onInit() {
    super.onInit();
    fetchData();

    count.value = 2;
  }
}