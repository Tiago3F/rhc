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
          preferredSize: Size.fromHeight(80),
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
                      // HEADER DO EXPANDED
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
                                    itemData[index].headerPanel,
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

                    // INFORMAÇÕES DO EXPANDED
                    body: Container(
                      padding: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // DADOS PESSOAIS
                          Text(
                            itemData[index].emailPersonTitle,
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                            ),
                          ),
                          Text(
                            itemData[index].email,
                            style: TextStyle(
                              color: AppColors.items,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Column(
                            children: [
                              Text(
                                itemData[index].homeAddress,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    itemData[index].cityPersonTitle,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    itemData[index].city,
                                    style: TextStyle(
                                      color: AppColors.items,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    itemData[index].districtPersonTitle,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    itemData[index].district,
                                    style: TextStyle(
                                      color: AppColors.items,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    itemData[index].addresPersonTitle,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    itemData[index].address,
                                    style: TextStyle(
                                      color: AppColors.items,
                                      fontSize: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    isExpanded: itemData[index].expanded,
                  ),
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
      headerPanel: 'Dados Pessoais',
      colorsItem: Colors.white,
      homeAddress: 'Endereço Residencial',
      address: 'Rua B, Bloco Z',
      addresPersonTitle: 'Logradouro',
      city: 'Pereiro-CE',
      cityPersonTitle: 'Cidade - Estado',
      district: 'Lagoa Nova',
      districtPersonTitle: 'Bairro',
      email: 'osvaldocrispim@grupobrisanet.com.br',
      emailPersonTitle: 'E-mail Pessoal',
      businessEmail: '',
      businessEmailTitle: '',
      company: '',
      companyTitle: '',
      immediateLeader: '',
      immediateLeaderTitle: '',
      informedArea: '',
      informedAreaTitle: '',
      informedSection: '',
      informedSectionTitle: '',
      informedSector: '',
      informedSectorTitle: '',
    ),
  ];

  List<ItemModel> itemDataCompany = <ItemModel>[
    ItemModel(
      headerPanel: 'Dados Empresariais',
      colorsItem: Colors.white,
      homeAddress: 'Endereço Residencial',
      address: 'Rua B, Bloco Z',
      addresPersonTitle: 'Logradouro',
      city: 'Pereiro-CE',
      cityPersonTitle: 'Cidade - Estado',
      district: 'Lagoa Nova',
      districtPersonTitle: 'Bairro',
      email: 'osvaldocrispim@grupobrisanet.com.br',
      emailPersonTitle: 'E-mail Pessoal',
      businessEmail: '',
      businessEmailTitle: '',
      company: '',
      companyTitle: '',
      immediateLeader: '',
      immediateLeaderTitle: '',
      informedArea: '',
      informedAreaTitle: '',
      informedSection: '',
      informedSectionTitle: '',
      informedSector: '',
      informedSectorTitle: '',
    ),
  ];
}
