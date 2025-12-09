import 'package:ecommerce_app/app/data/category.dart';
import 'package:ecommerce_app/app/data/product.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    products.assignAll(dummyProducts);
  }

  var products = <Product>[].obs;

  void toggleFavorite(int index) {
    products[index].isFavorite = !products[index].isFavorite;
    products.refresh();
  }

  void selectCategory(int index) {
    if (dummyCategories[index].isChoosen) {
      for (var i = 0; i < dummyCategories.length; i++) {
        dummyCategories[i].isChoosen = false;
      }
    } else {
      for (var i = 0; i < dummyCategories.length; i++) {
        dummyCategories[i].isChoosen = i == index;
      }
    }

    dummyCategories.refresh();
  }

  final dummyCategories = <Category>[
    Category(iconPath: "assets/icons/watch.png"),
    Category(iconPath: "assets/icons/cloth.png"),
    Category(iconPath: "assets/icons/shoe.png"),
    Category(iconPath: "assets/icons/bag.png"),
    Category(iconPath: "assets/icons/glasses.png"),
  ].obs;

  final dummyProducts = <Product>[
    Product(
      name: "Apple Watch 9",
      imageUrl: "assets/images/apple-watch.png",
      price: 550.00,
      discount: 20,
      discountedPrice: 550.00 * 0.8,
    ),
    Product(
      name: "Running Shoes",
      imageUrl: "assets/images/shoes.png",
      price: 120.00,
      discount: 25,
      discountedPrice: 120.00 * 0.75,
    ),
    Product(
      name: "Mi Band 7",
      imageUrl: "assets/images/mi-band.png",
      price: 300.00,
      discount: 15,
      discountedPrice: 300.00 * 0.85,
    ),
    Product(
      name: "Casio Watch",
      imageUrl: "assets/images/casio-watch.png",
      price: 300.00,
      discount: 15,
      discountedPrice: 300.00 * 0.85,
    ),
    Product(
      name: "Classic Watch",
      imageUrl: "assets/images/classic-watch.png",
      price: 300.00,
      discount: 15,
      discountedPrice: 300.00 * 0.85,
    ),
    Product(
      name: "Blue T-Shirt",
      imageUrl: "assets/images/t-shirt.png",
      price: 300.00,
      discount: 15,
      discountedPrice: 300.00 * 0.85,
    ),
    Product(
      name: "Sony Headphone",
      imageUrl: "assets/images/headphone.png",
      price: 300.00,
      discount: 15,
      discountedPrice: 300.00 * 0.85,
    ),
  ];
}
