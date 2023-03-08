import 'package:flutter/material.dart';
import 'package:hw8_2/pasges/setting_page.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1f1f1f),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.inbox,
                    color: Colors.blue,
                  ),
                  const SizedBox(width: 8.0),
                  const Text(
                    'Index',
                    style: TextStyle(
                      color: Color(0xFF8d8d8d),
                    ),
                  ),
                  const SizedBox(width: 4.0),
                  const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color(0xFF8d8d8d),
                    size: 15.0,
                  ),
                  //spacer
                  const Spacer(),
                  InkWell(
                    onTap: (() {
                      Navigator.push(context, MaterialPageRoute(builder: ((context) => const SettingPage())));
                    }),
                    child: const Icon(
                      Icons.menu_open,
                      color: Color(0xFF8d8d8d),
                      size: 25.0,
                    ),
                  ),
                  const SizedBox(width: 12.0),
                  const Icon(
                    Icons.cancel_schedule_send_rounded,
                    color: Color(0xFF8d8d8d),
                    size: 25.0,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20.0),
              child: Row(
                children: const [
                  Icon(
                    Icons.circle_outlined,
                    color: Colors.grey,
                    size: 30.0,
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    'Gg',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20.0),
              child: Row(
                children: const [
                  Icon(
                    Icons.wallet,
                    color: Colors.red,
                    size: 30.0,
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    'Nov 23 2022',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
