import 'package:api_eco/model/item_model.dart';
import 'package:get/get.dart';

class ProductController extends GetxController{

  var productItem = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
  }

  void fetchProduct() async {

  }
}