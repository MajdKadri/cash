import 'package:cash_mobile_v1/core/utils/responsive.dart';
import 'package:cash_mobile_v1/features/presentation/widgets/homepage_views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class HomeScreen extends StatefulWidget {
  int _selectedIndex = 0;

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> _widgetOptions = <Widget>[
      HomeView(),
      Text('Search Screen',
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
      Text('Profile Screen',
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    ];
    print(MediaQueryValues.fullWidth(context));
    print(MediaQueryValues.fullHeight(context));
    void _onItemTapped(int index) {
      setState(() {
        widget._selectedIndex = index;
      });
    }

    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: NavigationBar(
            indicatorShape:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: Colors.orange
                )),
            indicatorColor: Colors.orange,
            selectedIndex: widget._selectedIndex,
            backgroundColor: Colors.white,
            onDestinationSelected: (index) {
              _onItemTapped(index);
              print(index);
            },
            destinations: [
              NavigationDestination(
                  label: "",
                  icon: Icon(
                    color: widget._selectedIndex == 0
                        ? Colors.white
                        : Colors.orange,
                    HugeIcons.strokeRoundedHome09,
                    size: 25,
                  )),
              NavigationDestination(
                  label: "",
                  icon: Icon(
                    color: widget._selectedIndex == 1
                        ? Colors.white
                        : Colors.orange,
                    HugeIcons.strokeRoundedQrCode,
                    size: 25,
                  )),
              NavigationDestination(
                label: "",
                enabled: true,
                icon: Icon(
                  color:
                      widget._selectedIndex == 2 ? Colors.white : Colors.orange,
                  Icons.person_2_outlined,
                  size: 25,
                ),
              )
            ]),
        //backgroundColor: Colors.black,
        // bottomNavigationBar: BottomNavigationBar(
        //     unselectedItemColor: Colors.white,
        //     selectedItemColor: Colors.orange,
        //     type: BottomNavigationBarType.fixed,
        //     currentIndex: widget._selectedIndex,
        //     onTap: (index) {
        //       _onItemTapped(index);
        //       print(widget._selectedIndex);
        //     },
        //     items: <BottomNavigationBarItem>[
        //       BottomNavigationBarItem(
        //           icon: Icon(
        //             HugeIcons.strokeRoundedHome09,
        //             size: 35,
        //           ),
        //           label: ""),
        //       BottomNavigationBarItem(
        //           backgroundColor: Colors.black,
        //           icon: Icon(
        //             HugeIcons.strokeRoundedQrCode,
        //             size: 35,
        //           ),
        //           label: ""),
        //       BottomNavigationBarItem(
        //           backgroundColor: Colors.black,
        //           icon: Icon(
        //             Icons.person_outline,
        //             size: 35,
        //           ),
        //           label: "")
        //     ]),
        body: _widgetOptions[widget._selectedIndex]);
  }
}
