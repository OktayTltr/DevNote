import 'package:dev_note/pages/dersIcerikleri.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'DevNote'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      body: Container(
        color: Colors.grey,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.only(top: 80, bottom: 80),
                child: Text(
                  'Eğitim Kataloğu ',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                title: const Text('Flutter  İle Uygulama Geliştirme '),
                leading: const Icon(
                  Icons.circle,
                  color: Colors.blue,
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const EgitimIcerigi(dersAdi: "Flutter"),
                  ));
                },
              ),
              ListTile(
                title: const Text('Unity İle Oyun  Geliştirme '),
                leading: const Icon(
                  Icons.circle,
                  color: Colors.red,
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const EgitimIcerigi(dersAdi: "Unity"),
                  ));
                },
              ),
              ListTile(
                title: const Text('Proje Yönetimi Eğitimleri '),
                leading: const Icon(
                  Icons.circle,
                  color: Colors.green,
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const EgitimIcerigi(dersAdi: "Proje"),
                  ));

                },
              ),
              ListTile(
                title: const Text('Girişimcilik Eğitimleri '),
                leading: const Icon(
                  Icons.circle,
                  color: Colors.yellow,
                ),
                onTap: () {

                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const EgitimIcerigi(dersAdi: "Girişimcilik"),
                  ));



                },
              ),
              ListTile(
                title: const Text('Yazılımcılar İçin İngilizce '),
                leading: const Icon(
                  Icons.circle,
                  color: Colors.white,
                ),
                onTap: () {

                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const EgitimIcerigi(dersAdi: "İngilizce"),
                  ));



                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
