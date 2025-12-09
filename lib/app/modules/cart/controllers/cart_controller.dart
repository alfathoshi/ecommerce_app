import 'package:ecommerce_app/app/data/product.dart';
import 'package:get/get.dart';

class CartController extends GetxController {
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
