import 'package:flutter/material.dart';
import 'package:paitent_bio/presentation/widgets/doctor/doctor_drawer.dart';
import 'package:paitent_bio/presentation/widgets/general/appbar.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class DoctorSendPrescription extends StatefulWidget {
  DoctorSendPrescription({super.key});

  @override
  State<DoctorSendPrescription> createState() => _DoctorSendPrescriptionState();
}

class _DoctorSendPrescriptionState extends State<DoctorSendPrescription> {
  final String name = "Dr Rafin Islam";
  final List<String> diseases = ["Flu", "Cold", "Diabetes", "Hypertension"];
  String selectedDisease = "Flu"; // Default selection
  File? _selectedImage;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final String drId = "125125124124";
    return Scaffold(
      appBar: CustomAppBar(appBarTitle: "Send Prescription"),
      drawer: DoctorDrawer(name: name),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade200,
                spreadRadius: 3,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
          ),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  drId,
                  style: TextStyle(),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green.shade800,
                    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
                  ),
                  ),
                  child: Text("Scan Receiver Id",
                  style:TextStyle(color: Colors.white)
                  ),
                ),
                SizedBox(height: 20),
                Text("Select a Disease"),
                DropdownButton<String>(
                  value: selectedDisease,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedDisease = newValue!;
                    });
                  },
                  items: diseases.map<DropdownMenuItem<String>>((String disease) {
                    return DropdownMenuItem<String>(
                      value: disease,
                      child: Text(disease),
                    );
                  }).toList(),
                ),
                SizedBox(height: 20),
                // Image upload section
                Text("Upload Prescription Image"),
                SizedBox(height: 10),
                _selectedImage == null
                    ? ElevatedButton(
                        onPressed: _pickImage,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue.shade600,
                           shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                        ),
                        ),
                        
                        child: Text("Select Image",
                        style: TextStyle(color:Colors.white),
                        ),
                      )
                    : Column(
                        children: [
                          Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Image.file(
                              _selectedImage!,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                onPressed: _pickImage,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue.shade300,
                                ),
                                child: Text("Change Image"),
                              ),
                              SizedBox(width: 10),
                              ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    _selectedImage = null;
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.red.shade300,
                                ),
                                child: Text("Remove"),
                              ),
                            ],
                          ),
                        ],
                      ),
                SizedBox(height: 20),
                if (_selectedImage != null)
                  ElevatedButton(
                    onPressed: () {
                      // Handle prescription submission here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                    ),
                    child: Text(
                      "Send Prescription",
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}