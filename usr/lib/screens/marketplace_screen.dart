import 'package:flutter/material.dart';

class MarketplaceScreen extends StatelessWidget {
  const MarketplaceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Marketplace Directory'),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('Supplier ${index + 1}'),
              subtitle: const Text('Premium Kraft Paper & Adhesives'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Show supplier details (phone/website)
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text('Supplier ${index + 1} Details'),
                    content: const Text('Contact: +1 555-0192\nWebsite: www.example.com'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Close'),
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
