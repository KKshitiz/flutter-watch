import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_art/art/envelope/envelope_page.dart';
import 'package:flutter_art/art/nokia-phone/nokia_phone_page.dart';
import 'package:flutter_art/art/polaroid-camera/polaroid_camera_page.dart';
import 'package:flutter_art/art/watch/watch_page.dart';

class BasePage extends StatefulWidget {
  const BasePage({Key? key}) : super(key: key);

  @override
  State<BasePage> createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  Widget _currentPage = const WatchPage();
  Map<String, Widget> pages = {
    "Watch": const WatchPage(),
    "Nokia-1280": const NokiaPhonePage(),
    "Polaroid Camera": const PolaroidCameraPage(),
    "Envelope": EnvelopePage(),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Art"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              child: Text("Flutter Art"),
            ),
            Column(
              children: [
                const ListTile(
                  title: Text(
                    "Select an art to explore",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                for (final String title in pages.keys)
                  NavItem(
                      heading: title,
                      onTap: () {
                        setState(() {
                          _currentPage = pages[title]!;
                        });
                      }),
              ],
            ),
          ],
        ),
      ),
      body: _currentPage,
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({
    Key? key,
    required this.heading,
    required this.onTap,
  }) : super(key: key);
  final String heading;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        onTap();
        AutoRouter.of(context).pop();
      },
      title: Text(heading),
    );
  }
}
