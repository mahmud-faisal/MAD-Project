import 'package:flutter/material.dart';
import '../../widgets/general/appbar.dart';
import '../../widgets/pharmacy/pharmacy_drawer.dart';

class PrescriptionFilesScreen extends StatelessWidget {
  const PrescriptionFilesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prescription Files'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            const Text(
              'COVID-19 Prescription Files',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),

            // Prescription Image
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Image.network(
                      'https://www.madeformedical.com/wp-content/uploads/2018/07/vio-4.jpg',
                      fit: BoxFit.contain,
                      height: 300,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                loadingProgress.expectedTotalBytes!
                                : null,
                          ),
                        );
                      },
                      errorBuilder: (context, error, stackTrace) {
                        return const Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.error, color: Colors.red),
                              Text('Failed to load image'),
                            ],
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Prescription',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // File list header
            const Text(
              'Other Documents:',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),

            // File list items
            _buildFileItem('Lab_Results_001.pdf', 'May 10, 2023'),
            _buildFileItem('Doctor_Notes_001.txt', 'May 5, 2023'),
          ],
        ),
      ),
    );
  }

  Widget _buildFileItem(String fileName, String date) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        leading: const Icon(Icons.insert_drive_file, size: 32),
        title: Text(
          fileName,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
        subtitle: Text(date),
        trailing: IconButton(
          icon: const Icon(Icons.download),
          onPressed: () {
            // Download logic
          },
        ),
      ),
    );
  }
}