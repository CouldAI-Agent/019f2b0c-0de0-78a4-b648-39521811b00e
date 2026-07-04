import 'package:flutter/material.dart';

class CompanyScreen extends StatelessWidget {
  const CompanyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Company Management'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          Text(
            'Current Openings',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          _JobCard(role: 'CEO', description: 'Lead the company vision and strategy.'),
          _JobCard(role: 'Manager', description: 'Oversee daily operations and team coordination.'),
          _JobCard(role: 'HR Operations Manager', description: 'Manage recruitment and employee relations.'),
          _JobCard(role: 'Marketing Sales', description: 'Drive customer acquisition and brand awareness.'),
          _JobCard(role: 'Operations Manager', description: 'Ensure smooth supply chain and logistics.'),
        ],
      ),
    );
  }
}

class _JobCard extends StatelessWidget {
  final String role;
  final String description;

  const _JobCard({required this.role, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(role),
        subtitle: Text(description),
        trailing: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Applied for $role')),
            );
          },
          child: const Text('Apply'),
        ),
      ),
    );
  }
}
