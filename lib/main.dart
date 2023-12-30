import 'package:electro_app/screens/about.dart';
import 'package:electro_app/screens/control.dart';
import 'package:electro_app/state/appstate.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Compteur',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
          useMaterial3: true,
          navigationBarTheme: NavigationBarThemeData(
            labelTextStyle: MaterialStateProperty.resolveWith((state) {
              if (state.contains(MaterialState.selected)) {
                return const TextStyle(fontWeight: FontWeight.bold);
              }
              return const TextStyle();
            }),
          ),
        ),
        home: const MyHomePage(title: 'Compteur Electrique Intelligent'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          widget.title,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          indicatorColor: Theme.of(context).colorScheme.inversePrimary,
          selectedIndex: currentPageIndex,
          destinations: const <Widget>[
            NavigationDestination(
              selectedIcon: Icon(
                Icons.show_chart,
                color: Colors.white,
                size: 26,
              ),
              icon: Icon(
                Icons.show_chart_outlined,
              ),
              label: 'Data',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.gamepad,
                color: Colors.white,
                size: 26,
              ),
              icon: Icon(Icons.gamepad_outlined),
              label: 'Control',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                Icons.help,
                color: Colors.white,
                size: 26,
              ),
              icon: Icon(Icons.help_outlined),
              label: 'About',
            ),
          ]),
      body: [
        const DataScreen(),
        const ControlScreen(),
        const AboutScreen()
      ][currentPageIndex],
    );
  }
}
