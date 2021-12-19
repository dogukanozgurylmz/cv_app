import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'CV App'),
      routes: {
        '/home': (context) => const MyHomePage(title: 'Cv App'),
        '/kisiselBilgiler': (context) => const KisiselBilgiler(),
        '/egitim': (context) => const Egitim(),
        '/istecrubeleri': (context) => const IsTecrubeleri(),
        '/yetenekler': (context) => const Yetenekler(),
        '/referanslar': (context) => const Referanslar(),
        '/iletisim': (context) => const IletisimBilgileri(),
      },
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
      backgroundColor: const Color(0xff232323),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          widget.title,
          style: const TextStyle(
            color: Colors.white,
            letterSpacing: 1.5,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: cvAppBody(),
    );
  }

  Widget cvAppBody() {
    return Container(
      alignment: Alignment.center,
      child: gridViewCvApp(),
    );
  }

  Widget gridViewCvApp() {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 20,
      crossAxisSpacing: 20,
      padding: const EdgeInsets.all(20),
      children: [
        inGridViewCvApp(
          const Icon(
            Icons.account_circle,
            size: 50,
          ),
          "Kişisel Bilgiler",
          'kisiselBilgiler',
        ),
        inGridViewCvApp(
          const Icon(
            Icons.school,
            size: 50,
          ),
          "Eğitim",
          'egitim',
        ),
        inGridViewCvApp(
          const Icon(
            Icons.flare,
            size: 50,
          ),
          "Yetenekler",
          'yetenekler',
        ),
        inGridViewCvApp(
          const Icon(
            Icons.business_center,
            size: 50,
          ),
          "İş Tecrübeleri",
          'istecrubeleri',
        ),
        inGridViewCvApp(
          const Icon(
            Icons.device_hub,
            size: 50,
          ),
          "Referanslar",
          'referanslar',
        ),
        inGridViewCvApp(
          const Icon(
            Icons.contacts,
            size: 50,
          ),
          "İletişim Bilgileri",
          'iletisim',
        ),
      ],
    );
  }

  Widget inGridViewCvApp(Icon icon, String cvTitle, String route) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/$route'),
      child: Card(
        color: const Color(0xffffffff),
        elevation: 10,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: icon,
              flex: 2,
            ),
            Expanded(child: Text(cvTitle)),
          ],
        ),
      ),
    );
  }
}

class KisiselBilgiler extends StatelessWidget {
  const KisiselBilgiler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff232323),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Kişisel Bilgiler",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Image.network(
            "https://hastane.gop.edu.tr/img/personel/profilyok.jpg",
            width: 200,
            height: 200,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Doğukan Özgür Yılmaz",
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Divider(
            indent: 50,
            endIndent: 50,
            color: Colors.white,
          ),
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "Lorem ipsum dolor sit amet, "
              "consectetur adipiscing elit. "
              "Quisque felis augue, venenatis id neque a, "
              "mollis accumsan lacus. Morbi sollicitudin "
              "eu est ut accumsan. Praesent.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          const Divider(
            indent: 50,
            endIndent: 50,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class Egitim extends StatelessWidget {
  const Egitim({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff232323),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Eğitim",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class IsTecrubeleri extends StatelessWidget {
  const IsTecrubeleri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff232323),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "İş Tecrubeleri",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class Yetenekler extends StatelessWidget {
  const Yetenekler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff232323),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Yetenekler",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class IletisimBilgileri extends StatelessWidget {
  const IletisimBilgileri({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff232323),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "İletişim Bilgileri",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

class Referanslar extends StatelessWidget {
  const Referanslar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff232323),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Referanslar",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
