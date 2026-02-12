import 'package:flutter/material.dart';

void main() => runApp(AppKinsui());

class AppKinsui extends StatelessWidget {
  const AppKinsui({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kinsui',
      home: Sushi(),
      
    );
  }
}// fin clase AppKinsui

class Sushi extends StatelessWidget {
  const Sushi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Kinsui Loya',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.brown[300], // Café bajito
          leading: const Icon(
            Icons.food_bank_sharp,
            color: Colors.white,
          ),
          actions: const [
            Icon(Icons.healing, color: Colors.white),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0),
              child: Icon(Icons.food_bank, color: Colors.white),
            ),
            Padding(
              padding: EdgeInsets.only(right: 12.0),
              child: Icon(Icons.label, color: Colors.white),
            ),
          ],
        ),

body: ListView.builder(
  padding: const EdgeInsets.all(16.0),
  itemCount: 5,
  itemBuilder: (context, index) {
    // Definimos una lista de colores y subtítulos para variar
    List<Color> colors = [Colors.blueAccent, Colors.purpleAccent, Colors.orangeAccent, Colors.greenAccent, Colors.pinkAccent];
    List<String> items = ['Notificaciones', 'Seguridad', 'Almacenamiento', 'Privacidad', 'Ayuda'];
    List<IconData> icons = [Icons.notifications, Icons.security, Icons.storage, Icons.lock, Icons.help];

    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        leading: CircleAvatar(
          backgroundColor: colors[index],
          child: Icon(icons[index], color: colors[index]),
        ),
        title: Text(
          items[index],
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text('Configura tu sección de ${items[index].toLowerCase()}'),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
        onTap: () {
          // Acción al presionar
        },
      ),
    );
  },
),

    );
  }
}// Fin clase sushi