import 'package:afghan_net/Afgan_List_UI/internet_bundle/vpn_plans/vpn_all.dart';
import 'package:afghan_net/recharge.dart';
import 'package:afghan_net/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Scard extends StatelessWidget {
  final String text1;
  final imageUrl;
  const Scard({super.key, required this.imageUrl, required this.text1});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: All_Drawer(),
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: CustomText(
            text: text1,
            fontSize: 19,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.07,
        ),
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.6,
            height: MediaQuery.of(context).size.height * 0.15,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    // spreadRadius: 5,
                    blurRadius: 6,
                    offset: Offset(0, 3),
                  ),
                ]),
            child: Image.asset(
              imageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.04,
        ),
        InkWell(
          onTap: () => Get.to(RechargePage()),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.07,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    // spreadRadius: 5,
                    blurRadius: 6,
                    offset: Offset(0, 3),
                  ),
                ]),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    'assets/monthly1.png',
                    fit: BoxFit.cover,
                  ),
                  CustomText(
                      text: 'Monthly',
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                  Icon(Icons.arrow_forward_ios),
                ]),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        InkWell(
          onTap: () => Get.to(RechargePage()),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            height: MediaQuery.of(context).size.height * 0.07,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    // spreadRadius: 5,
                    blurRadius: 6,
                    offset: Offset(0, 3),
                  ),
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'assets/weekly.png',
                  fit: BoxFit.cover,
                ),
                CustomText(
                    text: 'Weekly',
                    fontSize: 14,
                    fontWeight: FontWeight.normal),
                Icon(Icons.arrow_forward_ios)
              ],
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.17,
        ),
      ]),
    );
  }
}
