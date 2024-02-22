import 'package:counterapp/commonmodule/app_color.dart';
import 'package:counterapp/commonmodule/app_string.dart';
import 'package:counterapp/projectmodule/views/product_list_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: AppString.productList,
      theme: ThemeData(primarySwatch: AppColor.PurpleColor),
      debugShowCheckedModeBanner: false,
      home: ProductListView(),
    );
  }
}
