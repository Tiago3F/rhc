// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rhc/shared/themes/app_colors.dart';
import 'package:rhc/shared/themes/app_text_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

////////////////////////////////////

class MyHomePage extends StatefulWidget {
  final String title;

  MyHomePage({Key? key, required this.title}) : super(key: key);

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
              title: Text(widget.title),
              backgroundColor: Colors.white,
            ),
            body: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              padding: EdgeInsets.all(20),
              childAspectRatio: 3 / 2,
              children: [
                Image.asset('assets/nav-drawer-1.jpg'),
                Image.asset('assets/nav-drawer-2.jpg'),
                Image.asset('assets/nav-drawer-3.jpg'),
                Image.asset('assets/nav-drawer-4.jpg'),
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
