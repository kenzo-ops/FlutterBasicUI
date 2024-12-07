import 'package:flutter/material.dart';

class AcademyRegistrationForm extends StatefulWidget {
  @override
  _AcademyRegistrationFormState createState() =>
      _AcademyRegistrationFormState();
}

class _AcademyRegistrationFormState extends State<AcademyRegistrationForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _contactController = TextEditingController();
  String? _selectedGender;
  String? _preferredPosition;

  List<String> genderOptions = ['Male', 'Female', 'Other'];
  List<String> positionOptions = ['Forward', 'Midfielder', 'Defender', 'Goalkeeper'];

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            backgroundColor: Colors.black,
            title: Text(
              "Registration Successful",
              style: TextStyle(color: Colors.white),
            ),
            content: Text(
              "Welcome to the Manchester United Academy!",
              style: TextStyle(color: Colors.white),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  "Close",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manchester United Academy Registration'),
        backgroundColor: Colors.red,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.red,
              Colors.black,
            ],
          ),
        ),
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'assets/manutd_crest.png',
                  height: 150,
                ),
                SizedBox(height: 20),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: _nameController,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          errorStyle: TextStyle(color: Colors.black),
                          labelText: 'Full Name',
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: _dobController,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          errorStyle: TextStyle(color: Colors.black),
                          labelText: 'Date of Birth (DD/MM/YYYY)',
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                        keyboardType: TextInputType.datetime,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your date of birth';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: _contactController,
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          errorStyle: TextStyle(color: Colors.black),
                          labelText: 'Contact Number',
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                        keyboardType: TextInputType.phone,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your contact number';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10),
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          errorStyle: TextStyle(color: Colors.black),
                          labelText: 'Gender',
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                        value: _selectedGender,
                        dropdownColor: Colors.black,
                        items: genderOptions.map((gender) {
                          return DropdownMenuItem<String>(
                            value: gender,
                            child: Text(gender, style: TextStyle(color: Colors.white)),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedGender = value;
                          });
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please select your gender';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 10),
                      DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          errorStyle: TextStyle(color: Colors.black),
                          labelText: 'Preferred Position',
                          labelStyle: TextStyle(color: Colors.white),
                        ),
                        value: _preferredPosition,
                        dropdownColor: Colors.black,
                        items: positionOptions.map((position) {
                          return DropdownMenuItem<String>(
                            value: position,
                            child: Text(position, style: TextStyle(color: Colors.white)),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            _preferredPosition = value;
                          });
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please select your preferred position';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: _submitForm,
                        child: Text('Submit'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          foregroundColor: Colors.white,
                        ),
                      ),
                    ],
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
