import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio/Experiences.dart';
import 'package:portfolio/Tecnologies_widget.dart';

void main() {
  if (kDebugMode) {
    Animate.restartOnHotReload = true;
  }
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
                Row(
                  children: [
                    AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'Seja bem vindo(a)!',
                          textStyle: const TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.bold,
                          ),
                          speed: const Duration(milliseconds: 200),
                        ),
                      ],
                      totalRepeatCount: 1,
                      pause: const Duration(milliseconds: 100),
                      displayFullTextOnTap: true,
                      stopPauseOnTap: true,
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 50,
                      child: GestureDetector(
                        onTap: () {},
                        child: Image.asset("assets/images/lk.png"),
                      ),
                    ).animate().scaleXY(),
                    SizedBox(
                      width: 100,
                      child: GestureDetector(
                        onTap: () {},
                        child: Image.asset("assets/images/github.png"),
                      ),
                    ).animate().scaleXY(delay: 100.ms),
                    GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                        width: 50,
                        child: Image.asset("assets/images/whats.png"),
                      ),
                    ).animate().scaleXY(delay: 200.ms),
                    const SizedBox(
                      width: 50,
                    )
                  ],
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
                  "Desenvolvedor Flutter e Java com 10 anos de Exp",
                  style: TextStyle(
                    fontSize: 20,
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
                      assetPath: "assets/images/azure.webp",
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
                      assetPath: "assets/images/firebase.webp",
                      name: "Firebase",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Divider(
                  thickness: 5,
                  color: Colors.grey.withOpacity(0.2),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Experiências",
                  style: TextStyle(fontSize: 30),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    color: Colors.blue,
                    width: 150,
                    height: 5,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Experiences(
                  companyNameAndWork:
                      'Slicesoft · Tempo integral | Desenvolvedor Java | Spring Sênior',
                  description:
                      'Como Desenvolvedor Sênior Java Spring, pude liderar e contribuir significativamente para projetos complexos de desenvolvimento de software. Minhas responsabilidades neste papel incluíram:\n-Liderança técnica na concepção, arquitetura e implementação de sistemas de software escaláveis e de alta qualidade '
                      'usando o Spring Framework.\n-Colaboração com equipes multifuncionais para traduzir requisitos de negócios em soluções técnicas eficazes, mantendo '
                      'um alto padrão de qualidade de código e design.'
                      '\n-Implementação de padrões de design e '
                      'melhores práticas de desenvolvimento, '
                      'como Clean Architecture, TDD, '
                      'Design Patterns e SOLID principles.\n-Desenvolvimento '
                      'de APIs RESTful e microservices '
                      'robustos e eficientes usando '
                      'Spring Boot, Spring MVC ou Spring WebFlux.'
                      '\n-Integração contínua e implantação '
                      'automatizada de sistemas usando '
                      'ferramentas como Jenkins, GitLab CI/CD, '
                      'Docker e Kubernetes.'
                      '\n-Implementação de '
                      'segurança de '
                      'aplicativos, incluindo '
                      'autenticação, autorização, '
                      'proteção contra ataques de '
                      'segurança e conformidade com padrões de segurança.'
                      '\n-Otimização de desempenho de aplicativos, '
                      'identificando gargalos de desempenho e '
                      'aplicando técnicas de melhoria de '
                      'desempenho.\n-Mentoria e '
                      'orientação de membros juniores da '
                      'equipe, compartilhando conhecimento e '
                      'melhores práticas de desenvolvimento de software.\nFui capaz de enfrentar desafios complexos e entregar soluções de alta qualidade que atendam às necessidades do negócio. Estou constantemente buscando oportunidades para aprender e crescer profissionalmente, enquanto contribuo para o sucesso de projetos desafiadores.',
                  time: "1 mês",
                ),
                const Divider(),
                const Experiences(
                  companyNameAndWork:
                      "Mirante Tecnologia · Tempo integral | Desenvolvedor Flutter Sênior",
                  description:
                      "Nesse trabalho eu fui alocado na Cooperativa central Ailos. Trabalhei no setor de engenharia "
                      "do aplicativo Ailos+, aplicativo principal "
                      "da empresa que é uma cooperativa de crédito.\n-Fui "
                      "responsável por moldar a arquitetura, "
                      "gerenciamento de estado e regras do projeto.\n-Atuei "
                      "com Design system\n-Code review\n-Suporte aos "
                      "demais times\n-Onboarding de "
                      "novos desenvolvedores\n-Treinamento "
                      "de novos desenvolvedores\n-Documentação "
                      "dos padrões do projeto e regras "
                      "usadas em: Testes unitários, "
                      "arquitetura, construção de telas, "
                      "melhores práticas de desenvolvimento, "
                      "técnicas de aprimoramento de "
                      "performance, consumo de APIs, "
                      "melhores práticas para se usar no "
                      "gerenciador de estado (Cubit).\n-Atuei "
                      "em pocs de modularização e arquitetura "
                      "baseada em packages.\n-Também fui "
                      "responsável para introdução da "
                      "automação de tarefas via eventbus "
                      "e o início da Server driven ui bem como remote themes.\nOs principais "
                      "desafios enfrentados no projeto foram relacionados a"
                      " segurança pois por se tratar de um app bancário a principal preocupação foi com a segurança da aplicação. O projeto conta com, pix, cota capital, empréstimos, onboarding, cartões, investimentos, recarga de celulares, limites de crédito, débito direto, autenticação via cpf e senha, autenticação via biometria, registro de clientes via SMS e email, controle de dispositivo via MFA, controle de seguraça e logs via Dynatrace, firebase analytics para tracking e mapa de calor, remote config para armazenamento de chaves entre outros.",
                  time: "2 anos e 3 meses",
                ),
                const Divider(),
                const Experiences(
                  companyNameAndWork:
                      "Design Líquido · Tempo integral | Desenvolvedor Flutter | Java | Spring",
                  description: "Desenvolvia aplicações de acordo com as "
                      "exigências da empresa, focado "
                      "nas boas práticas de programação e nas "
                      "funcionalidades limpas e objetivas impostas "
                      "pelos clientes.\n-Atuei no backend das "
                      "aplicações bem como na sua frente "
                      "mobile.\n-Fui responsável "
                      "pelo desenvolvimento do "
                      "aplicativo Influenster e da "
                      "plataforma de ensino Polimata "
                      "(Front em Flutter e back em Spring).\n-Como "
                      "Desenvolvedor Flutter | Java | Spring, "
                      "fui responsável pelo desenvolvimento "
                      "e manutenção de aplicativos móveis e "
                      "APIs RESTful para diversos projetos da empresa.\n-Minhas "
                      "principais responsabilidades "
                      "incluíam:\n-Desenvolvimento de "
                      "aplicativos móveis nativos e "
                      "multiplataforma utilizando o "
                      "framework Flutter, proporcionando "
                      "uma experiência de usuário "
                      "excepcional em dispositivos Android e iOS.\n-Projetar, "
                      "desenvolver e manter APIs "
                      "RESTful escaláveis e eficientes "
                      "usando Java e Spring "
                      "Framework, garantindo a "
                      "interoperabilidade entre o frontend e o "
                      "backend.\n-Colaboração com "
                      "equipes multidisciplinares "
                      "para entender os requisitos "
                      "do projeto e propor soluções "
                      "técnicas adequadas, garantindo a "
                      "entrega dentro do prazo e do "
                      "orçamento.\n-Realização de "
                      "testes unitários, testes de "
                      "integração e testes de aceitação "
                      "automatizados para garantir a "
                      "qualidade e a estabilidade do "
                      "software.\n-Análise de sistemas e "
                      "identificação de oportunidades de "
                      "melhoria contínua para otimizar o "
                      "desempenho e a escalabilidade dos "
                      "aplicativos.\n-Fornecimento de "
                      "suporte técnico e resolução de "
                      "problemas em aplicativos "
                      "existentes, garantindo sua funcionalidade e desempenho.\n-Durante minha atuação nesse cargo, pude aprimorar minhas habilidades em desenvolvimento de aplicativos móveis, programação Java e desenvolvimento de APIs RESTful com Spring. Além disso, adquiri experiência em trabalhar em equipe, resolver problemas complexos e entregar soluções de alta qualidade que atendiam às necessidades dos clientes e usuários finais.",
                  time: "7 meses",
                ),
                const Divider(),
                const Experiences(
                  companyNameAndWork:
                      'UzzyTech consultoria · Tempo integral | Desenvolvedor Flutter | Java | Spring',
                  description: "-Desenvolvia telas para "
                      "aplicativos\n-Implementava lógica "
                      "em apps já existentes, bem como "
                      "atualizando apps para as versões "
                      "mais novas do flutter que usam "
                      "nullsafety.\n-Fazer aplicações "
                      "do zero inclusive sua API em "
                      "Java quando solicitado. "
                      "Infelizmente a empresa fechou suas "
                      "portas devido a problemas "
                      "internos.\n-Durante o período "
                      "que passei na empresa desenvolvi "
                      "os aplicativos Bring! Labs AG, "
                      "Recipe Keeper e 4 Farm "
                      "Agricultura de Precisão, "
                      "bem como seus backends em "
                      "Spring.\n-Como Desenvolvedor "
                      "Flutter | Java | Spring, desempenhei "
                      "um papel fundamental no "
                      "desenvolvimento e na evolução de "
                      "aplicativos móveis e sistemas de "
                      "backend para diversos projetos da "
                      "empresa. Minhas responsabilidades "
                      "incluíam:\n-Utilização do framework "
                      "Flutter para criar aplicativos móveis "
                      "modernos e responsivos, garantindo uma"
                      " experiência de usuário intuitiva e"
                      " de alta qualidade em dispositivos Android e"
                      " iOS.\n-Desenvolvimento de "
                      "APIs RESTful robustas e "
                      "escaláveis utilizando Java "
                      "e Spring Framework, com foco "
                      "na segurança, desempenho e "
                      "modularidade do código.\n-Colaboração "
                      "com equipes de design e "
                      "produto para traduzir "
                      "requisitos de negócios em "
                      "funcionalidades técnicas, "
                      "contribuindo para a definição "
                      "de arquiteturas de software "
                      "eficientes.\n-Implementação de "
                      "práticas de DevOps para "
                      "automatizar processos de "
                      "integração contínua, "
                      "entrega contínua e implantação "
                      "contínua, garantindo uma "
                      "entrega rápida e confiável "
                      "de novos recursos.\n-Realização de "
                      "testes automatizados e "
                      "manuais para validar a "
                      "funcionalidade e a "
                      "usabilidade dos aplicativos, "
                      "identificando e corrigindo bugs e "
                      "problemas de "
                      "desempenho.\n-Participação "
                      "ativa em reuniões de revisão "
                      "de código, sessões de brainstorming "
                      "e outras atividades colaborativas "
                      "para promover a inovação e o "
                      "aprimoramento contínuo dos produtos.\n-Durante"
                      " minha atuação nesse cargo, "
                      "desenvolvi habilidades sólidas "
                      "em desenvolvimento de aplicativos "
                      "móveis e backend, além de "
                      "aprimorar minhas habilidades em "
                      "trabalho em equipe, comunicação "
                      "eficaz e resolução de problemas.",
                  time: "2 anos e 4 meses",
                ),
                const Divider(),
                const Experiences(
                  companyNameAndWork:
                      "Nexus · Tempo integral | Desenvolvedor Android | Java | Spring",
                  description: "Construção de "
                      "aplicativos próprios para android. "
                      "Inicialmente apenas nativo, "
                      "más em 2019 passei a construir os "
                      "aplicativos com Flutter, ambos com "
                      "backend feito em Java + Spring.\n-Aqui "
                      "foram desenvolvidos aplicações "
                      "para o android 5.0 apps como: "
                      "Ferreira Costa, Mobly, Facctio, "
                      "Scannium, Posthaus, Vallia, AmaroEx e "
                      "etc.\n-Como Desenvolvedor "
                      "Java Android | Spring em meu "
                      "primeiro emprego, tive a oportunidade "
                      "de aprender e contribuir para o "
                      "desenvolvimento de aplicativos "
                      "móveis e sistemas web usando "
                      "tecnologias Java e Spring Framework. "
                      "Minhas responsabilidades incluíam:\n-Desenvolvimento "
                      "de aplicativos Android"
                      " nativos utilizando Java, "
                      "garantindo uma experiência "
                      "de usuário intuitiva e "
                      "funcionalidades robustas.\n-Colaboração "
                      "com a equipe de desenvolvimento para "
                      "projetar e implementar APIs RESTful "
                      "eficientes utilizando Spring Framework, "
                      "com foco em escalabilidade e "
                      "modularidade do código.\n-Participação "
                      "em todas as fases do ciclo de vida do "
                      "desenvolvimento de software, desde a "
                      "análise de requisitos até a "
                      "implantação e manutenção dos "
                      "sistemas em "
                      "produção.\n-Teste e "
                      "depuração de aplicativos "
                      "para garantir a qualidade e a "
                      "estabilidade do software, "
                      "identificando e corrigindo bugs e "
                      "problemas de desempenho.\n-Aprendizado "
                      "contínuo e busca ativa por conhecimento "
                      "em novas tecnologias e "
                      "melhores práticas de desenvolvimento "
                      "de software.\n-Durante "
                      "minha experiência neste cargo, desenvolvi habilidades fundamentais em programação Java e desenvolvimento de aplicativos Android, além de adquirir uma compreensão sólida dos princípios de desenvolvimento web com Spring Framework.",
                  time: "5 anos e 5 meses",
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
