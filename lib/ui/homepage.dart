import 'package:flutter/material.dart';
import 'package:umarket/ui/tabs/eleven.dart';
import 'package:umarket/ui/tabs/new_sale.dart';
import 'package:umarket/ui/tabs/popular.dart';
import 'package:umarket/ui/widgets/header.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final TextEditingController _searchController = TextEditingController();
  TabController? _controller;
  @override
  void initState() {
    _controller = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: TextFormField(
            controller: _searchController,
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
              hintText: "Mahsulot va turkumlar izlash...",
              suffixIcon: const Icon(Icons.search_outlined),
            ),
          ),
          centerTitle: true,
          // bottom: ,
        ),
        body: Column(
          children: [
            // header
            const Expanded(
              flex: 3,
              child: HeaderWidget(),
            ),

// tabbar
            Expanded(
              flex: 1,
              child: TabBar(
                labelColor: Colors.black,
                controller: _controller,
                tabs: const [
                  Tab(
                    text: "11.11",
                  ),
                  Tab(
                    text: "Mashxur",
                  ),
                  Tab(
                    text: "Yangi",
                  ),
                ],
              ),
            ),

            // data
            Expanded(
              flex: 8,
              child: TabBarView(
                controller: _controller,
                children: const [
                  ElevenSale(),
                  PopularSale(),
                  NewSale(),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomBar,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: 'Bosh sahifa'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Katalog'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_basket), label: 'Savat'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Saralangan'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Kabinet'),
          ],
        ),
      );
}
