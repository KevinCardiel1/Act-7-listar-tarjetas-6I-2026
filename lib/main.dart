import 'package:flutter/material.dart';

void main() => runApp(const AppFloreria());

class AppFloreria extends StatelessWidget {
  const AppFloreria({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LosPostres(),
    );
  }
}

class LosPostres extends StatelessWidget {
  const LosPostres({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de datos para las 4 tarjetas
    final List<Map<String, String>> flores = [
      {
        'titulo': 'Ajolote Rosa',
        'subtitulo': 'Edición especial floral',
        'url':
            'https://raw.githubusercontent.com/KevinCardiel1/imagenes-para-flutter-6I-11-FEB-2026/refs/heads/main/flor2.png',
      },
      {
        'titulo': 'Ramo Pastel',
        'subtitulo': 'Mezcla de tulipanes',
        'url': 'https://raw.githubusercontent.com/KevinCardiel1/imagenes-para-flutter-6I-11-FEB-2026/refs/heads/main/flor1.png',
      },
      {
        'titulo': 'Maceta Minimalista',
        'subtitulo': 'Cerámica color arena',
        'url': 'https://raw.githubusercontent.com/KevinCardiel1/imagenes-para-flutter-6I-11-FEB-2026/refs/heads/main/flor3.png',
      },
      {
        'titulo': 'Girasol Alegre',
        'subtitulo': 'Ideal para regalar',
        'url': 'https://raw.githubusercontent.com/KevinCardiel1/imagenes-para-flutter-6I-11-FEB-2026/refs/heads/main/flor2.png',
      },
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Florería Ajolote",
          style: TextStyle(
            color: Color(0xFFFFB7CE), // Rosa pastel
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        backgroundColor: const Color(0xFFFFF9C4), // Amarillo pastel
        elevation: 0,
        leading: Stack(
          alignment: Alignment.center,
          children: const [
            SizedBox(
              width: 30,
              height: 30,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation<Color>(Color(0xFFFFB7CE)),
              ),
            ),
            Icon(Icons.local_florist, color: Color(0xFFFFB7CE), size: 18),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_vintage, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.wb_sunny_outlined, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.yard, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: flores.length,
        itemBuilder: (context, index) {
          return Card(
            color: const Color(0xFFFFFDE7), // Amarillo pastel
            elevation: 4,
            margin: const EdgeInsets.only(bottom: 16),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.all(10),
              // Imagen desde la red (Avatar)
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: const Color(0xFFFFB7CE), // Fondo rosa
                backgroundImage: NetworkImage(flores[index]['url']!),
              ),
              // Título y subtítulo en color negro
              title: Text(
                flores[index]['titulo']!,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                flores[index]['subtitulo']!,
                style: const TextStyle(color: Colors.black87),
              ),
              // Icono de Like azul
              trailing: const Icon(Icons.favorite, color: Colors.blue),
            ),
          );
        },
      ),
    );
  }
}
