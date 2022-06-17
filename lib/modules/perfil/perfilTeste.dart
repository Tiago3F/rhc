import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rhc/shared/themes/app_colors.dart';

class CardPerfil extends StatefulWidget {
  const CardPerfil({Key? key}) : super(key: key);

  @override
  State<CardPerfil> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CardPerfil> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        child: Card(
          elevation: 2,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("../assets/perfil.jpeg"),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 10),
                  Text(
                    "OSVALDO TOMAZ CRISPIM FILHO",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
                  ),
                  Text(
                    "Osvaldo Crispim",
                    style: TextStyle(fontSize: 15, color: AppColors.items),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                          text: "Número da Matrícula: ",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w900),
                          children: <TextSpan>[
                            TextSpan(
                              text: '001078',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: AppColors.items,
                                  fontWeight: FontWeight.normal),
                            )
                          ]),
                    ),
                    const SizedBox(height: 5),
                    RichText(
                      text: TextSpan(
                          text: "Função Informada: ",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w900),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'COORDENADOR DE TECNOLOGIA DA INFORMAÇÃO',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: AppColors.items,
                                  fontWeight: FontWeight.normal),
                            )
                          ]),
                    ),
                    const SizedBox(height: 5),
                    RichText(
                      text: TextSpan(
                          text: "Área Informada: ",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w900),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'SUPORTE ADMINISTRATIVO',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: AppColors.items,
                                  fontWeight: FontWeight.normal),
                            )
                          ]),
                    ),
                    const SizedBox(height: 5),
                    RichText(
                      text: TextSpan(
                          text: "Setor Informado: ",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w900),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'GESTÃO DE OPERAÇÕES DE TI',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: AppColors.items,
                                  fontWeight: FontWeight.normal),
                            )
                          ]),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(width: 8),
                        ElevatedButton(
                          onPressed: () {
                            // Respond to button press
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.green,
                          ),
                          child: Text('EDITAR DADOS'),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
