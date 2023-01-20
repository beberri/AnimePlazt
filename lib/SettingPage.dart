import 'package:flutter/material.dart';
import 'package:flutter_app/gradient_back.dart';
import 'package:flutter_app/listAnimes/menuAnime.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with
        SingleTickerProviderStateMixin,
        AutomaticKeepAliveClientMixin<HomePage> {
  late TabController _tabController;

  final _selectedColor = Colors.black;
  final _unselectedColor = Color(0xff5f6368);
  final _tabs = [
    Tab(text: "Populares"),
    Tab(text: "Recientes"),
    Tab(text: "Más Vistas"),
  ];

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: SizedBox(
        height: MediaQuery.of(context).size.height-56,
        child: Scaffold(
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(150),
              child: Column(
                children: [
                  gradient_back("AnimePlazt", 120),
                  TabBar(
                    labelColor: _selectedColor,
                    labelStyle: GoogleFonts.acme(
                      fontSize: 20,
                      fontWeight: FontWeight.w200,
                    ),
                    unselectedLabelColor: _unselectedColor,
                    indicatorColor: Colors.black,
                    indicatorWeight: 3,
                    isScrollable: true,
                    tabs: _tabs,
                  ),
                ],
              )),
          body: Stack(
            children: [
              TabBarView(
                children: [menuAnime(), Icon(Icons.settings),Icon(Icons.settings)],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
