import 'package:flutter/material.dart';
import "package:myapp/formularios/detalle_producto.dart";

class Productos extends StatefulWidget {
  const Productos({super.key});

  @override
  State<Productos> createState() => _ProductosState();
}

class _ProductosState extends State<Productos> {
  // Controllers
  final TextEditingController _idProductoController = TextEditingController();
  final TextEditingController _nombreController    = TextEditingController();
  final TextEditingController _precioController    = TextEditingController();
  final TextEditingController _cantidadController  = TextEditingController();
  final TextEditingController _descripcionController = TextEditingController();
  final TextEditingController _categoriaController   = TextEditingController();
  final TextEditingController _fechaCadController    = TextEditingController();

  @override
  void dispose() {
    // Libera los controladores
    _idProductoController.dispose();
    _nombreController.dispose();
    _precioController.dispose();
    _cantidadController.dispose();
    _descripcionController.dispose();
    _categoriaController.dispose();
    _fechaCadController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 145, 0),
        title: const Text('Form Productos'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            MyTextField(
              myController: _idProductoController,
              fieldName: 'ID Producto',
              myIcon: Icons.account_balance,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _nombreController,
              fieldName: 'Nombre',
              myIcon: Icons.supervised_user_circle,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _precioController,
              fieldName: 'Precio',
              myIcon: Icons.price_check,
              prefixIconColor: Colors.deepPurple.shade300,
              // Optional: keyboardType number for prices
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _cantidadController,
              fieldName: 'Cantidad',
              myIcon: Icons.add_box,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _descripcionController,
              fieldName: 'Descripción',
              myIcon: Icons.list,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _categoriaController,
              fieldName: 'Categoría',
              myIcon: Icons.category,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _fechaCadController,
              fieldName: 'Fecha Caducidad',
              myIcon: Icons.date_range,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 20.0),
            _submitButton(context),
          ],
        ),
      ),
    );
  }
  OutlinedButton _submitButton(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Details2(
              productid: _idProductoController.text,
              productName: _nombreController.text,
              productprice: _precioController.text,
              productCantidad: _cantidadController.text,
              productDescription: _descripcionController.text,
              productCategoria: _categoriaController.text,
              productFechaCad: _fechaCadController.text,
            ),
          ),
        );
      },
      child: Text(
        'Enviar Formulario'.toUpperCase(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 255, 0, 0),
        ),
      ),
    );
  }
}
class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
    required this.fieldName,
    required this.myController,
    this.myIcon = Icons.verified_user_outlined,
    this.prefixIconColor = Colors.blueAccent,
  }) : super(key: key);

  final TextEditingController myController;
  final String fieldName;
  final IconData myIcon;
  final Color prefixIconColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      decoration: InputDecoration(
        labelText: fieldName,
        prefixIcon: Icon(myIcon, color: prefixIconColor),
        border: const OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.deepPurple.shade300),
        ),
        labelStyle: const TextStyle(color: Colors.deepPurple),
      ),
    );
  }
}
