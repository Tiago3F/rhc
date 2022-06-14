import 'package:flutter/material.dart';
import 'package:rhc/modules/perfil/item_model.dart';

import '../../shared/themes/app_colors.dart';

class Perfil2 extends StatefulWidget {
  @override
  _ExpansionPanelDemoState createState() => _ExpansionPanelDemoState();
}

class _ExpansionPanelDemoState extends State<Perfil2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(80), // here the desired height
          child: AppBar(
            title: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text(
                  "Perfil",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "Dados do colaborador",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w100),
                )
              ],
            ),
            backgroundColor: AppColors.select,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5))),
          )),
      body: Container(
        child: ListView.builder(
          itemCount: itemData.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(bottom: 1.0),
              child: ExpansionPanelList(
                animationDuration: Duration(milliseconds: 300),
                children: [
                  ExpansionPanel(
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return Container(
                        padding: EdgeInsets.only(
                          top: 12,
                          bottom: 12,
                        ),
                        child: SizedBox(
                          child: Container(
                            width: 1.0,
                            decoration: BoxDecoration(
                              color: AppColors.select,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(40),
                                bottomRight: Radius.circular(40),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    itemData[index].headerItem,
                                    style: TextStyle(
                                      color: itemData[index].colorsItem,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    body: Container(
                      padding: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                      child: Column(
                        children: [
                          Text(
                            itemData[index].discription,
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 15,
                              height: 1.3,
                            ),
                          ),
                        ],
                      ),
                    ),
                    isExpanded: itemData[index].expanded,
                  )
                ],
                expansionCallback: (int item, bool status) {
                  setState(() {
                    itemData[index].expanded = !itemData[index].expanded;
                  });
                },
              ),
            );
          },
        ),
      ),
    );
  }

  List<ItemModel> itemData = <ItemModel>[
    ItemModel(
      headerItem: 'Dados Pessoais',
      discription:
          "E-mail pessoal:",
      colorsItem: Colors.white,
      address: "",
      city: "",
      district: "",
      email: "",
    ),
    ItemModel(
      headerItem: 'iOS',
      discription:
          "iOS is a mobile operating system created and developed by Apple Inc. exclusively for its hardware.",
      colorsItem: Colors.white,
      address: "",
      city: "",
      district: "",
      email: "",
    ),
    ItemModel(
      headerItem: 'Windows',
      discription:
          "Microsoft Windows, commonly referred to as Windows, is a group of several proprietary graphical operating system families, all of which are developed and marketed by Microsoft. ",
      colorsItem: Colors.white,
      address: "",
      city: "",
      district: "",
      email: "",
    ),
    ItemModel(
      headerItem: 'Linux',
      discription:
          "Linux is a family of open-source Unix-like operating systems based on the Linux kernel, an operating system.",
      colorsItem: Colors.white,
      address: "",
      city: "",
      district: "",
      email: "",
    ),
  ];
}
