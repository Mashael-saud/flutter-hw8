import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFf8f8f8),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20.0),
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.star_border,
                    color: Color(0xFFdaa265),
                    size: 35.0,
                  ),
                  const SizedBox(width: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Todolist Pro',
                        style: TextStyle(fontSize: 20.0),
                      ),
                      Text('Untl Jul 8 22'),
                    ],
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20.0, right: 20.0),
              decoration: BoxDecoration(color: const Color(0xFFffffff), borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                children: [
                  const SettingWidget(
                    icon: Icons.account_circle_outlined,
                    label: 'Account',
                  ),
                  Container(margin: const EdgeInsets.only(left: 50.0), child: const Divider(thickness: 2.0)),
                  const SettingWidget(
                    icon: Icons.settings_outlined,
                    label: 'General',
                  ),
                  Container(margin: const EdgeInsets.only(left: 50.0), child: const Divider(thickness: 2.0)),
                  const SettingWidget(
                    icon: Icons.format_paint_outlined,
                    label: 'Theme',
                  ),
                  Container(margin: const EdgeInsets.only(left: 50.0), child: const Divider(thickness: 2.0)),
                  const SettingWidget(
                    icon: Icons.heat_pump,
                    label: 'App Icon',
                  ),
                  Container(margin: const EdgeInsets.only(left: 50.0), child: const Divider(thickness: 2.0)),
                  const SettingWidget(
                    icon: Icons.bar_chart_rounded,
                    label: 'Productivity',
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 35.0),
              decoration: BoxDecoration(color: const Color(0xFFffffff), borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                children: [
                  const SettingWidget(icon: Icons.alarm, label: 'Reminders'),
                  Container(margin: const EdgeInsets.only(left: 50.0), child: const Divider(thickness: 2.0)),
                  const SettingWidget(icon: Icons.add_alert, label: 'Notification'),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20.0, right: 20.0, top: 35.0),
              decoration: BoxDecoration(color: const Color(0xFFffffff), borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                children: const [
                  SettingWidget(icon: Icons.security_rounded, label: 'Serri'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SettingWidget extends StatelessWidget {
  final IconData icon;
  final String label;
  const SettingWidget({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          Icon(
            icon,
            color: const Color(0xFFbe695f),
            size: 30.0,
          ),
          const SizedBox(width: 8.0),
          Text(
            label,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.arrow_forward_ios_sharp,
            color: Color(0xFFc6c6c6),
          )
        ],
      ),
    );
  }
}
