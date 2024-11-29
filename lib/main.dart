// ignore_for_file: unnecessary_const, sort_child_properties_last

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowMaterialGrid: false,
      //home: const MyHomePage(),
      initialRoute: '/', // The initial route (homepage)
      routes: {
        '/': (context) => const MyHomePage(), // Home Page
        '/login': (context) => const LoginPage(), // Login Page
        '/register': (context) => const RegisterPage(), // Register Page
        '/profile': (context) => const ProfilePage(), // Profile/Dashboard Page
        '/payment': (context) => const PaymentPage(), // Payment Page
      },
      
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to My Website'),
      ),
      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            DrawerHeader(child: Text('Navigation')),
            ListTile(title: Text('Home')),
            ListTile(title: Text('About')),
            ListTile(title: Text('Contact')),
          ],
        ),
      ),
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('This is a section of content.'),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('This is an aside.'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: const Text('Go to Login Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              child: const Text('Go to Register Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/payment');
              },
              child: const Text('Go to Payment Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              },
              child: const Text('Go to Profile Page'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('&copy; 2024 My Website'),
        ),
      ),
      backgroundColor: Colors.greenAccent,
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const TextField(
              decoration: InputDecoration(labelText: 'Username'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle login logic
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),  
    );
  }
}

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const TextField(
              decoration: InputDecoration(labelText: 'Username'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle registration logic
              },
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage('https://example.com/avatar.png'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Username: JohnDoe',
              style: TextStyle(fontSize: 20),
            ),
            const Text(
              'Email: johndoe@example.com',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle logout logic
              },
              child: const Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}


class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payment'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const TextField(
              decoration: InputDecoration(labelText: 'Card Number'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Expiry Date'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'CVV'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle payment logic
              },
              child: const Text('Pay Now'),
            ),
          ],
        ),
      ),
    );
  }
}

