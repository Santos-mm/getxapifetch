import 'package:counterapp/projectmodule/model/product_model.dart';
import 'package:counterapp/apimodule/api_service.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = List<ProductController>().obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    try {
      isLoading(true);
      var products = await ApiService.fetchProducts();
      if (productList != null) {
        productList.assignAll(products);
      }
    } finally {
      isLoading(false);
    }
  }
}
