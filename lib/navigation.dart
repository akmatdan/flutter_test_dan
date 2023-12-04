import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_flutter/catalog/catalog.dart';
import 'package:test_flutter/home/screen/home.dart';
import 'package:test_flutter/location/location.dart';
import 'package:test_flutter/profile/profile.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({Key? key}) : super(key: key);

  @override
  _NavigationMenuState createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    CatalogScreen(),
    LocationScreen(),
    ProfileScreen()
  ];

  void _onDestinationSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: Scaffold(
        bottomNavigationBar: NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: _selectedIndex,
          onDestinationSelected: _onDestinationSelected,
          destinations: const [
            NavigationDestination(
                iconPath: 'assets/icons/home.svg', label: 'Главная'),
            NavigationDestination(
                iconPath: 'assets/icons/shopping-bag.svg', label: 'Каталог'),
            NavigationDestination(
                iconPath: 'assets/icons/location.svg', label: 'Адрес'),
            NavigationDestination(
                iconPath: 'assets/icons/profile.svg', label: 'Профиль'),
          ],
        ),
        body: _screens[_selectedIndex],
      ),
    );
  }
}

class NavigationBar extends StatelessWidget {
  const NavigationBar({
    Key? key,
    required this.height,
    required this.elevation,
    required this.selectedIndex,
    required this.onDestinationSelected,
    required this.destinations,
  }) : super(key: key);

  final double height;
  final double elevation;
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;
  final List<NavigationDestination> destinations;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: elevation,
      currentIndex: selectedIndex,
      onTap: onDestinationSelected,
      items: destinations.map((destination) {
        return BottomNavigationBarItem(
          icon: SvgPicture.asset(
            destination.iconPath,
            width: 24,
            height: 24,
          ),
          label: destination.label,
        );
      }).toList(),
      selectedItemColor: const Color.fromARGB(255, 29, 119, 193),
      unselectedItemColor: const Color.fromARGB(255, 102, 102, 102),
      showUnselectedLabels: true,
    );
  }
}

class NavigationDestination {
  const NavigationDestination({required this.iconPath, required this.label});

  final String iconPath;
  final String label;
}
