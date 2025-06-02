import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        elevation: 0.2,
        title: Text("Formularios Tablas"),
        centerTitle: true,
        backgroundColor: Colors.red,
        actions: <Widget>[
          InkWell(
            onTap: null,
            child: IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ), onPressed: () {  },
            ),
          ),
          InkWell(
            onTap: null,
            child: IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ), onPressed: () {  },
            ),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: const Color.fromARGB(255, 233, 94, 30)),
              accountName: Text("Cristian Salazar 1096"),
              accountEmail: Text("a.22308051281096@cbtis128.edu.mx"),
              currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
            radius: 130,
            backgroundColor: Colors.red,
            child: CircleAvatar(
              radius: 120,
              backgroundImage: NetworkImage(
                  'https://raw.githubusercontent.com/Cristian-Eduardo-Salazar1096/Imagenes/refs/heads/main/786552997842d3310208bdcd1077fe49-removebg-preview.png'),
            ),
          ),

                  
                ),
              ),
              InkWell(
              onTap: (){},
              child: ListTile(
                onTap: (){Navigator.popAndPushNamed(context, "/producto");},
                leading: Icon(Icons.shop, color: Colors.pink),
                title: Text("Producto"),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                onTap: (){Navigator.popAndPushNamed(context, "/empleado");},
                leading: Icon(Icons.supervised_user_circle, color: Colors.pink),
                title: Text("Empleado"),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                onTap: (){Navigator.popAndPushNamed(context, "/home");},
                leading: Icon(Icons.person, color: Colors.pink),
                title: Text("Cliente"),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                onTap: (){Navigator.popAndPushNamed(context, "/home");},
                leading: Icon(Icons.delivery_dining, color: Colors.pink),
                title: Text("Pedidos"),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                onTap: (){Navigator.popAndPushNamed(context, "/home");},
                leading: Icon(Icons.work, color: Colors.pink),
                title: Text("Provedores"),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                onTap: (){Navigator.popAndPushNamed(context, "/home");},
                leading: Icon(Icons.category, color: Colors.pink),
                title: Text("Categoria"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}