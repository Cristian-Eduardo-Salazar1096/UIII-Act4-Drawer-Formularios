import 'package:flutter/material.dart';
import 'package:myapp/formularios/detalle_empleados.dart';

class Empleados extends StatefulWidget {
  const Empleados({super.key});

  @override
  State<Empleados> createState() => _EmpleadosState();
}

class _EmpleadosState extends State<Empleados> {
  // Controllers
  final TextEditingController _idEmpleadoController = TextEditingController();
  final TextEditingController _nombreController     = TextEditingController();
  final TextEditingController _direccionController  = TextEditingController();
  final TextEditingController _correoController     = TextEditingController();
  final TextEditingController _horarioController    = TextEditingController();
  final TextEditingController _sueldoController     = TextEditingController();
  final TextEditingController _curpController       = TextEditingController();

  @override
  void dispose() {
    // Libera los controladores
    _idEmpleadoController.dispose();
    _nombreController.dispose();
    _direccionController.dispose();
    _correoController.dispose();
    _horarioController.dispose();
    _sueldoController.dispose();
    _curpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 145, 0),
        title: const Text('Formulario Empleados'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            MyTextField(
              myController: _idEmpleadoController,
              fieldName: 'ID Empleado',
              myIcon: Icons.badge,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _nombreController,
              fieldName: 'Nombre',
              myIcon: Icons.person,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _direccionController,
              fieldName: 'Dirección',
              myIcon: Icons.home,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _correoController,
              fieldName: 'Correo',
              myIcon: Icons.email,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _horarioController,
              fieldName: 'Horario',
              myIcon: Icons.access_time,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _sueldoController,
              fieldName: 'Sueldo',
              myIcon: Icons.attach_money,
              prefixIconColor: Colors.deepPurple.shade300,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _curpController,
              fieldName: 'CURP',
              myIcon: Icons.credit_card,
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
            builder: (context) => Details(
              idEmpleado: _idEmpleadoController.text,
              nombre: _nombreController.text,
              direccion: _direccionController.text,
              correo: _correoController.text,
              horario: _horarioController.text,
              sueldo: _sueldoController.text,
              curp: _curpController.text,
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
