import 'package:flutter/material.dart';
import 'package:flutter_application_3/recipe_detail.dart';
import 'recipe.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);
  static const MaterialColor white = MaterialColor(
    0xFFFFFFFF, 
    <int, Color>{
      50: Color(0xFFFFFFFF),
      100: Color(0xFFFFFFFF),
      200: Color(0xFFFFFFFF),
      300: Color(0xFFFFFFFF),
      400: Color(0xFFFFFFFF),
      500: Color(0xFFFFFFFF),
      600: Color(0xFFFFFFFF),
      700: Color(0xFFFFFFFF),
      800: Color(0xFFFFFFFF),
      900: Color(0xFFFFFFFF),
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jatim Culinary Calc',
      theme: ThemeData(
        primarySwatch: white,
      ),
      home: const MyHomePage(title: 'Jatim Culinary Calc'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Container(
        color: Color.fromARGB(255, 212, 171, 171),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Selamat datang di Jatim Culinary Calc, portal kelezatan khas Jawa Timur di ujung jari Anda! Temukan dan nikmati berbagai resep autentik dari beragam hidangan tradisional Jawa Timur. Mari kita mulai petualangan memasak yang lezat dan memuaskan! Selamat memasak!",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, // Jumlah card dalam satu baris
                    crossAxisSpacing: 10.0, // Spasi antar card secara horizontal
                    mainAxisSpacing: 10.0, // Spasi antar card secara vertikal
                  ),
                  itemCount: Recipe.samples.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return RecipeDetail(recipe: Recipe.samples[index]);
                            },
                          ),
                        );
                      },
                      child: buildRecipeCard(Recipe.samples[index]),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildRecipeCard(Recipe recipe) {
  return Card(
    elevation: 2.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 170, // Ubah tinggi sesuai dengan kebutuhan Anda
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: AssetImage(recipe.imageUrl),
                fit: BoxFit.cover, // Menyesuaikan gambar ke dalam kontainer
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          // Judul makanan di tengah
          Align(
            alignment: Alignment.center,
            child: Text(
              recipe.label,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w700,
                fontFamily: 'Palationo',
              ),
            ),
          ),
          const SizedBox(
            height: 6.0,
          ),
          // Deskripsi rata kanan kiri
          Text(
            recipe.description,
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    ),
  );
}
