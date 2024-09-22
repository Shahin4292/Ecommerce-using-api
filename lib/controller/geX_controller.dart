import 'package:api_eco/model/item_model.dart';
import 'package:api_eco/services/service.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var productItem = <Product>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    fetchProduct();
    super.onInit();
  }

  void fetchProduct() async {
    try {
      isLoading(true);
      var products = await RemoteService.fetchProduct();
      if (products != null) {
        productItem.assignAll(products);
      }
    }finally {
      isLoading(false);
    }
  }
}
