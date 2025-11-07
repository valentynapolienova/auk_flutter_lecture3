import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Info Card',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.orange,
        fontFamily: 'Poppins',
      ),
      home: const ProfilePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Personal Info Card')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Card(
            elevation: 2,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ProfileBody(),
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  static const List<String> skills = [
    'Flutter',
    'Dart',
    'Firebase',
    'Animations',
    'CI/CD',
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          radius: 66,
          foregroundImage: AssetImage('assets/images/avatar.png'),
        ),
        const SizedBox(height: 16),
        Text(
          'Valentyna Polienova',
          style: theme.textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          'Senior Flutter Developer',
          style: theme.textTheme.titleMedium?.copyWith(
            color: theme.colorScheme.secondary,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          'Passionate about Flutter. Love coffe, my students and my cats.',
          textAlign: TextAlign.center,
          style: theme.textTheme.bodyMedium,
        ),
        const Divider(thickness: 1, height: 32),
        TextButton.icon(
          onPressed: () {
            print('Email button pressed');
          },
          icon: const Icon(Icons.email_rounded),
          label: const Text('valya@example.com'),
        ),
        TextButton.icon(
          onPressed: () {
            print('Phone button pressed');
          },
          icon: const Icon(Icons.phone_rounded),
          label: const Text('+1 (555) 123-4567'),
        ),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          alignment: WrapAlignment.center,
          children: [for (final label in skills) Chip(label: Text(label))],
        ),
      ],
    );
  }
}
