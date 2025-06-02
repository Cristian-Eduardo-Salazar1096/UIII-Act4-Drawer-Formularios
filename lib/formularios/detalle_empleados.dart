import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  Details({
    Key? key,
    required this.idEmpleado,
    required this.nombre,
    required this.direccion,
    required this.correo,
    required this.horario,
    required this.sueldo,
    required this.curp,
  }) : super(key: key);

  final String idEmpleado;
  final String nombre;
  final String direccion;
  final String correo;
  final String horario;
  final String sueldo;
  final String curp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 115, 0),
        title: const Text("Detalles del Empleado"),
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
                buildDetail("ID Empleado", idEmpleado),
                buildDetail("Nombre", nombre),
                buildDetail("Dirección", direccion),
                buildDetail("Correo", correo),
                buildDetail("Horario", horario),
                buildDetail("Sueldo", sueldo),
                buildDetail("CURP", curp),
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
