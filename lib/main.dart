import 'package:flutter/material.dart';
import 'package:portfolio/Tecnologies_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
      body: Stack(
        children: [
          Opacity(
            opacity: 0.1,
            child: SizedBox(
              height: MediaQuery.sizeOf(context).height,
              width: MediaQuery.sizeOf(context).width,
              child: const DecoratedBox(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      "assets/images/Space-Background-Images.jpg",
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ListView(
              children: [
                const Text(
                  "Seja bem vindo(a)!",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Eu sou o Flávio",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Graduando em Análise e desenvolvimento de sistemas, Desenvolvedor Flutter e Spring boot, adepto as tecnologias mobile nativas e multi plataforma, e ao trabalho voluntário. Antenado ao mercado digital principalmente no que diz respeito ao desenvolvimento mobile e ao mundo java.",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Divider(
                  thickness: 5,
                  color: Colors.grey.withOpacity(0.2),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Wrap(
                  runAlignment: WrapAlignment.spaceEvenly,
                  crossAxisAlignment: WrapCrossAlignment.end,
                  runSpacing: 20,
                  alignment: WrapAlignment.center,
                  children: [
                    TecnologiesWidget(
                      assetPath: "assets/images/java.png",
                      name: "Java",
                    ),
                    TecnologiesWidget(
                      size: 100,
                      spaceBtween: 12,
                      assetPath: "assets/images/spring.png",
                      name: "Spring boot",
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    TecnologiesWidget(
                      size: 100,
                      spaceBtween: 12,
                      assetPath: "assets/images/hibernate.png",
                      name: "Hibernate",
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    TecnologiesWidget(
                      size: 100,
                      spaceBtween: 12,
                      assetPath: "assets/images/docker.png",
                      name: "Docker",
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    TecnologiesWidget(
                      size: 100,
                      spaceBtween: 12,
                      assetPath: "assets/images/kafka.png",
                      name: "Kafka",
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    TecnologiesWidget(
                      size: 100,
                      spaceBtween: 12,
                      assetPath: "assets/images/rabbit.png",
                      name: "RabbitMQ",
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    TecnologiesWidget(
                      size: 100,
                      spaceBtween: 12,
                      assetPath: "assets/images/dart.png",
                      name: "Dart",
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    TecnologiesWidget(
                      size: 100,
                      spaceBtween: 12,
                      assetPath: "assets/images/flutter.png",
                      name: "Flutter",
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    TecnologiesWidget(
                      size: 100,
                      spaceBtween: 12,
                      assetPath: "assets/images/git.png",
                      name: "Git",
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    TecnologiesWidget(
                      size: 100,
                      spaceBtween: 12,
                      assetPath: "assets/images/android.png",
                      name: "Android",
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    TecnologiesWidget(
                      size: 100,
                      spaceBtween: 12,
                      assetPath: "assets/images/micro.png",
                      name: "Microservices",
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    TecnologiesWidget(
                      size: 100,
                      spaceBtween: 12,
                      assetPath: "assets/images/azure.png",
                      name: "AzureDevOps",
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    TecnologiesWidget(
                      size: 100,
                      spaceBtween: 12,
                      assetPath: "assets/images/aws.png",
                      name: "Amazon web services",
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    TecnologiesWidget(
                      size: 100,
                      spaceBtween: 12,
                      assetPath: "assets/images/postgres.png",
                      name: "Postgre",
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    TecnologiesWidget(
                      size: 100,
                      spaceBtween: 12,
                      assetPath: "assets/images/sql.png",
                      name: "MySQL",
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    TecnologiesWidget(
                      size: 100,
                      spaceBtween: 12,
                      assetPath: "assets/images/oracle.png",
                      name: "Oracle server",
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    TecnologiesWidget(
                      size: 100,
                      spaceBtween: 12,
                      assetPath: "assets/images/scrum.png",
                      name: "Scrum",
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    TecnologiesWidget(
                      size: 100,
                      spaceBtween: 12,
                      assetPath: "assets/images/firebase.png",
                      name: "Firebase",
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
