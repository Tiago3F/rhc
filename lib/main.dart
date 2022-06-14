import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rhc/shared/themes/app_colors.dart';
import 'package:rhc/shared/themes/app_text_styles.dart';

import 'modules/perfil/perfil.dart';
import 'modules/perfil/perfil2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),
      home: MyHomePage(),
    );
  }
}

////////////////////////////////////

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedDestination = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Drawer(
          width: 250,
          // backgroundColor: AppColors.background,
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("../assets/sidebar.jpg"),
                    fit: BoxFit.cover)),
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage("../assets/perfil.jpeg"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Column(children: [
                        Text(
                          'Osvaldo Crispim',
                          style: TextStyles.input,
                        ),
                        Text(
                          '(Osvaldo Crispim)',
                          style: TextStyles.input,
                        ),
                      ]),
                    )
                  ],
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Pessoal',
                    style: TextStyles.titleRegular,
                  ),
                ),
                ListTile(
                  iconColor: Colors.white,
                  textColor: Colors.white,
                  leading: Icon(FontAwesomeIcons.solidCircleUser),
                  title: Text('Meu Perfil'),
                  selected: _selectedDestination == 0,
                  onTap: () => selectDestination(0),
                ),
                ListTile(
                  iconColor: Colors.white,
                  textColor: Colors.white,
                  leading: Icon(FontAwesomeIcons.sitemap),
                  title: Text('Organograma'),
                  selected: _selectedDestination == 1,
                  onTap: () => selectDestination(1),
                ),
                ListTile(
                  iconColor: Colors.white,
                  textColor: Colors.white,
                  leading: Icon(FontAwesomeIcons.squarePlus),
                  title: Text('Formar Organograma'),
                  selected: _selectedDestination == 2,
                  onTap: () => selectDestination(2),
                ),
                ListTile(
                  iconColor: Colors.white,
                  textColor: Colors.white,
                  leading: Icon(FontAwesomeIcons.solidCircleUser),
                  title: Text('HomeOffice/Covid'),
                  selected: _selectedDestination == 3,
                  onTap: () => selectDestination(3),
                ),
                ListTile(
                  iconColor: Colors.white,
                  textColor: Colors.white,
                  leading: Icon(FontAwesomeIcons.users),
                  title: Text('Meus Subordinados'),
                  selected: _selectedDestination == 4,
                  onTap: () => selectDestination(4),
                ),
                ListTile(
                  iconColor: Colors.white,
                  textColor: Colors.white,
                  leading: Icon(FontAwesomeIcons.fileLines),
                  title: Text('Minhas Ocorrências'),
                  selected: _selectedDestination == 5,
                  onTap: () => selectDestination(5),
                ),
                ListTile(
                  iconColor: Colors.white,
                  textColor: Colors.white,
                  leading: Icon(FontAwesomeIcons.solidEnvelope),
                  title: Text('Mensagens'),
                  selected: _selectedDestination == 6,
                  onTap: () => selectDestination(6),
                ),
                Divider(
                  height: 1,
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Relatórios',
                    style: TextStyles.titleRegular,
                  ),
                ),
                ListTile(
                  iconColor: Colors.white,
                  textColor: Colors.white,
                  leading: Icon(FontAwesomeIcons.userLock),
                  title: Text('Controle do Efetivo'),
                  selected: _selectedDestination == 7,
                  onTap: () => selectDestination(7),
                ),
                ListTile(
                  iconColor: Colors.white,
                  textColor: Colors.white,
                  leading: Icon(FontAwesomeIcons.solidMap),
                  title: Text('Mapa de Vagas'),
                  selected: _selectedDestination == 8,
                  onTap: () => selectDestination(8),
                ),
              ],
            ),
          ),
        ),
        VerticalDivider(
          width: 1,
          thickness: 1,
        ),
        Expanded(
          child: Scaffold(
            appBar: AppBar(
              title: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "../assets/logo-brisanet.png",
                        height: 40,
                        width: 40,
                      ),
                      Text("RH", style: TextStyle(color: Colors.orange)),
                      Text("CONECTA",
                          style: TextStyle(
                              color: AppColors.select,
                              fontWeight: FontWeight.w900)),
                    ],
                  ),
                ],
              ),
              actions: [
                Container(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("HOMEOFFICE/COVID-19",
                            style: TextStyle(
                                color: Colors.orange,
                                fontWeight: FontWeight.w500,
                                fontSize: 18)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.bug_report, color: Colors.black),
                            Text("REPORTAR BUG",
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(children: [
                          IconButton(
                            iconSize: 30,
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            icon: Icon(
                              Icons.email,
                              color: Colors.black,
                            ),
                            onPressed: () {},
                          ),
                          Positioned(
                            top: 1,
                            right: 13,
                            child: Container(
                              padding: EdgeInsets.all(1),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              constraints: BoxConstraints(
                                minWidth: 17,
                                minHeight: 10,
                              ),
                              child: Text(
                                '0',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(children: [
                          IconButton(
                            iconSize: 30,
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            padding: EdgeInsets.zero,
                            constraints: BoxConstraints(),
                            icon: Icon(
                              Icons.house_siding_outlined,
                              color: Colors.black,
                            ),
                            onPressed: () {},
                          ),
                          Positioned(
                            top: 1,
                            right: 13,
                            child: Container(
                              padding: EdgeInsets.all(1),
                              decoration: new BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              constraints: BoxConstraints(
                                minWidth: 17,
                                minHeight: 10,
                              ),
                              child: Text(
                                '0',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )
                        ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(Icons.home, color: Colors.black),
                            Text("INÍCIO",
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
              backgroundColor: Colors.white,
            ),
            body: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              padding: EdgeInsets.all(20),
              childAspectRatio: 2 / 2,
              children: [
                // Perfil(),
                Perfil2()
              ],
            ),
          ),
        ),
      ],
    );
  }

  void selectDestination(int index) {
    setState(() {
      _selectedDestination = index;
    });
  }
}
