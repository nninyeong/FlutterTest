import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_ex/screen/new_page.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MaterialApp.router(
    routerConfig: GoRouter(
      initialLocation: '/',
      routes: [
        GoRoute(
            path: '/',
            name: 'home',
            builder: (context, _) => const HomeWidget(),
        ),
        GoRoute(
            path: '/new',
            name: 'new',
            builder: (context, _) => const NewPage()),
        GoRoute(
            path: '/new1',
            name: 'new1',
            builder: (context, _) => const NewPage2())
      ],
    ),
  ));
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late int index;

  @override
  void initState() {
    super.initState();
    index = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Flutter 화면 이동하기'),
            backgroundColor: Colors.deepPurpleAccent,
            foregroundColor: Colors.white,
            centerTitle: true),
        body: Center(
          child: TextButton(
              child: Text('Go to New Page', style: TextStyle(fontSize: 32)),
              onPressed: () {
                context.pushNamed('new');
              }),
        )
    );
  }
}