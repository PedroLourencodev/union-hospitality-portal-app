import 'package:flutter/material.dart';
import 'theme.dart';
import 'screens/home_screen.dart';
import 'screens/services_screen.dart';
import 'screens/notifications_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(const SinthoresmarApp());
}

class SinthoresmarApp extends StatefulWidget {
  const SinthoresmarApp({super.key});

  @override
  State<SinthoresmarApp> createState() => _SinthoresmarAppState();
}

class _SinthoresmarAppState extends State<SinthoresmarApp> {
  int _currentIndex = 0;
  final _pages = const [
    HomeScreen(),
    ServicesScreen(),
    NotificationsScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SINTHORESMAR',
      theme: buildTheme(),
      home: Scaffold(
        body: _pages[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (i) => setState(() => _currentIndex = i),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.primary,
          unselectedItemColor: Colors.grey[600],
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.handyman_outlined), label: 'Serviços'),
            BottomNavigationBarItem(icon: Icon(Icons.notifications_none), label: 'Notificações'),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Perfil'),
          ],
        ),
      ),
      routes: {
        ProfileScreen.route: (_) => const ProfileScreen(),
      },
    );
  }
}
