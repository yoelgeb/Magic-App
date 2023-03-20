// ignore: file_names
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'Pages/decks_page.dart';
import 'Pages/games_page.dart';
import 'Pages/members_page.dart';
import 'Pages/rankings_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Magic Database'),
          centerTitle: true,
        ),
        body: Container(
          color: Color(0xFFF8F8F8),
          child: Column(
            children: [
              TabBar(
                isScrollable: true,
                tabs: [
                  Tab(
                    text: 'Games',
                  ),
                  Tab(
                    text: 'Rankings',
                  ),
                  Tab(
                    text: 'Members',
                  ),
                  Tab(
                    text: 'Decks',
                  ),
                  Tab(
                    text: 'Decks',
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(children: [
                  GamesPage(),
                  RankingsPage(),
                  MembersPage(),
                  DecksPage(),
                  Center(child: Text('Games'))
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
