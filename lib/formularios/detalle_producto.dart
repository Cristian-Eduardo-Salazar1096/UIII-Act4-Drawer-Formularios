import 'package:flutter/material.dart';

class Details2 extends StatelessWidget {
  Details2({
    Key? key,
    required this.productName,
    required this.productDescription,
    required this.productid,
    required this.productprice,
    required this.productCantidad,
    required this.productCategoria,
    required this.productFechaCad,
  }) : super(key: key);

  final String productName;
  final String productDescription;
  final String productid;
  final String productprice;
  final String productCantidad;
  final String productCategoria;
  final String productFechaCad;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 115, 0),
        title: const Text("Detalles del Producto"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildDetail("ID Producto", productid),
                buildDetail("Nombre", productName),
                buildDetail("Descripción", productDescription),
                buildDetail("Precio", productprice),
                buildDetail("Cantidad", productCantidad),
                buildDetail("Categoría", productCategoria),
                buildDetail("Fecha de Caducidad", productFechaCad),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildDetail(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$label: ",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 16,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(fontSize: 16),
              softWrap: true,
            ),
          ),
        ],
      ),
    );
  }
}