import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int size, id;
  final double price;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Pepsi 3 litros",
      price: 14.89,
      size: 3,
      description: dummyText,
      image: "assets/images/pepsi_3l.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Pepsi 3 litros",
      price: 14.89,
      size: 3,
      description: dummyText,
      image: "assets/images/pepsi_3l.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 3,
      title: "Pepsi 3 litros",
      price: 14.89,
      size: 3,
      description: dummyText,
      image: "assets/images/pepsi_3l.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 4,
      title: "Pepsi 3 litros",
      price: 14.89,
      size: 3,
      description: dummyText,
      image: "assets/images/pepsi_3l.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 5,
      title: "Pepsi 3 litros",
      price: 14.89,
      size: 3,
      description: dummyText,
      image: "assets/images/pepsi_3l.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 6,
      title: "Pepsi 3 litros",
      price: 14.89,
      size: 3,
      description: dummyText,
      image: "assets/images/pepsi_3l.png",
      color: Color(0xFF3D82AE)),
];

String dummyText =
    "primer prototipo funcional sobre despliegue de app mobile para compras y ventas, analisis de sistemas II";
