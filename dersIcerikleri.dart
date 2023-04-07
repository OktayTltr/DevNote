import 'package:dev_note/models/icerikModel.dart';
import 'package:flutter/material.dart';

import 'nots.dart';

class EgitimIcerigi extends StatefulWidget {
  final String dersAdi;

  const EgitimIcerigi({Key? key, required this.dersAdi}) : super(key: key);

  @override
  State<EgitimIcerigi> createState() => _EgitimIcerigiState();
}

class _EgitimIcerigiState extends State<EgitimIcerigi> {
  List<IcerikModel> flutterIcerikler = [
    IcerikModel(
      konuBasligi: "Flutter Kurulum",
      konuNotu: '',
      soruCevap: 'Flutter Kurulumu Nasıl Yapılır? Cevabı Eklemeyi Unutma',
    ),
    IcerikModel(
      konuBasligi: "Dart Dilini ve IDE'yi Tanıma",
      konuNotu: '',
      soruCevap: 'Flutter Kurulumu Nasıl Yapılır? Cevabı Eklemeyi Unutma',
    ),
    IcerikModel(
      konuBasligi: "Dart Dilini Derinlemesine Tanıma",
      konuNotu: '',
      soruCevap: 'Flutter Kurulumu Nasıl Yapılır? Cevabı Eklemeyi Unutma',
    ),

  ];
  List<IcerikModel> unityIcerikler = [
    IcerikModel(konuBasligi: 'BASLIK', konuNotu: '', soruCevap: 'Ekle'),
    IcerikModel(konuBasligi: 'BASLIK', konuNotu: '', soruCevap: 'Ekle')
  ];
  List<IcerikModel> projeIcerikler = [
    IcerikModel(
        konuBasligi: 'Proje Yönetiminin Temelleri',
        konuNotu: '',
        soruCevap: 'Nasıl yapaildiniz?'),
    IcerikModel(
        konuBasligi: 'Proje Yönetimi Nedir?',
        konuNotu: '',
        soruCevap: 'Nasıl yapaildiniz?')
  ];
  List<IcerikModel> girisimcilikIcerikler = [];
  List<IcerikModel> ingilizceIcerikler = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.dersAdi),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                widget.dersAdi == 'Flutter'
                    ? FlutterLogo(
                        size: 100,
                      )
                    : widget.dersAdi == 'Unity'
                        ? Image.asset(
                            'images/unity.png',
                            width: 100,
                            height: 100,
                          )
                        : widget.dersAdi == 'Proje'
                            ? Image.asset(
                                'images/project.png',
                                width: 100,
                                height: 100,
                              )
                            : widget.dersAdi == 'Girişimcilik'
                                ? Image.asset(
                                    'images/entrepreneurship.png',
                                    width: 100,
                                    height: 100,
                                  )
                                : widget.dersAdi == 'İngilizce'
                                    ? Image.asset(
                                        'images/eng.png',
                                        width: 100,
                                        height: 100,
                                      )
                                    : Text('Boş'),
                Text(
                  widget.dersAdi,
                  style: TextStyle(fontSize: 40),
                ),
              ],
            ),
            Flexible(
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(border: Border.all()),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Nots(),
                              ));
                            },
                            icon: Icon(
                              Icons.note_add,
                              size: 40,
                              color: Colors.orange,
                            )),
                        Text(
                          widget.dersAdi == "Flutter"
                              ? flutterIcerikler[index].konuBasligi
                              : widget.dersAdi == 'Unity'
                                  ? unityIcerikler[index].konuBasligi
                                  : widget.dersAdi == 'Proje'
                                      ? projeIcerikler[index].konuBasligi
                                      : widget.dersAdi == 'Girişimcilik'
                                          ? girisimcilikIcerikler[index]
                                              .konuBasligi
                                          : widget.dersAdi == 'İngilizce'
                                              ? ingilizceIcerikler[index]
                                                  .konuBasligi
                                              : '',
                          style: TextStyle(fontSize: 20),
                          maxLines: 2,
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.question_answer,
                              size: 40,
                              color: Colors.green,
                            ))
                      ],
                    ),
                  );
                },
                itemCount: widget.dersAdi == "Flutter"
                    ? flutterIcerikler.length
                    : widget.dersAdi == 'Unity'
                        ? unityIcerikler.length
                        : widget.dersAdi == 'Proje'
                            ? projeIcerikler.length
                            : widget.dersAdi == 'Girişimcilik'
                                ? girisimcilikIcerikler.length
                                : widget.dersAdi == 'İngilizce'
                                    ? ingilizceIcerikler.length
                                    : 0,
              ),
            ),
          ],
        ));
  }
}
