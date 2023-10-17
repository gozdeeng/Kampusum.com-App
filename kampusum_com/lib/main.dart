import 'package:flutter/material.dart';
import 'package:kampusum_com/Screens/Home/Screen/home_screen.dart';
import 'package:kampusum_com/Screens/Search/Screen/searc_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0,
          centerTitle: true,
          color: Colors.white,
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentPage == 0
          ?  HomeScreen()
          : currentPage == 1
              ?  SearchScreen()
              : null,
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          children: [
             Spacer(),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentPage = 0;
                  });
                },
                icon: Icon(Icons.home_filled,
                    color: currentPage == 0
                        ? const Color(0xFF24b44c)
                        : Colors.grey)),
             Spacer(),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentPage = 1;
                  });
                },
                icon: Icon(Icons.search,
                    color: currentPage == 1
                        ? const Color(0xFF24b44c)
                        : Colors.grey)),
             Spacer(),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentPage = 2;
                  });
                },
                icon: Icon(Icons.ondemand_video,
                    color: currentPage == 2
                        ? const Color(0xFF24b44c)
                        : Colors.grey)),
             Spacer(),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentPage = 3;
                  });
                },
                icon: Icon(Icons.card_travel,
                    color: currentPage == 3
                        ? const Color(0xFF24b44c)
                        : Colors.grey)),
             Spacer(),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentPage = 4;
                  });
                },
                icon: Icon(Icons.person_3,
                    color: currentPage == 4
                        ? const Color(0xFF24b44c)
                        : Colors.grey)),
             Spacer(),
          ],
        ),
      ),
    );
  }
}
