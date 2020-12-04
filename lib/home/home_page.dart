import 'package:contador_de_pessoas/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {

  final controller = Get.put<HomeController>(HomeController());

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
            'images/restaurant.jpg',
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           GetBuilder<HomeController>(
             builder: (_) =>  Text('Pessoas: ${controller.pessoas}', style: TextStyle(
                 color: Colors.white,
                 fontWeight: FontWeight.bold,
                 fontSize: 40.0)
              ),
           ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                      child: Text('+1' , style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35.0)
                      ),
                      onPressed: () {
                        controller.entra();
                      },
                    )
                ),
                Padding(
                    padding: EdgeInsets.all(10.0),
                    child: FlatButton(
                      child: Text('-1', style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 35.0)
                      ),
                      onPressed: () {
                        controller.sai();
                      },
                    )
                )
              ],
            ),
            GetBuilder<HomeController>(
              builder: (_) => Text('${controller.mensagem}', style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0))
            )
          ],
        )
      ],
    );
  }
}

