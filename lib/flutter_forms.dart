import 'package:flutter/material.dart';

class Forms extends StatelessWidget {
  Forms({super.key});
  final _formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forms'),
        backgroundColor: Colors.green,
      ),
      body: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                icon: const Icon(Icons.person),
                hintText: "Enter your name",
                labelText: "Name",
              ),
              validator: (value){
                if(value!.isEmpty){
                  return 'Please Enter some texts.';
                }
                return null;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: const Icon(Icons.phone),
                hintText: 'Enter your phone no,',
                labelText: 'Phone'
              ),
              validator: (value){
                if(value!.isEmpty){
                  return "Please Enter some texts.";
                }
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: const Icon(Icons.calendar_view_day),
                hintText: 'Enter your datte of bitrht',
                labelText: 'DOB'
              ),
              validator: (value){
                if(value!.isEmpty){
                  return "Please Enter some Phone No.";
                }
              },
            ),
            new Container(
              padding: const EdgeInsets.only(left: 150, top: 40),
              child: new ElevatedButton(onPressed: (){
                if(_formKey.currentState!.validate()){
                  // Scaffold.of(context).showSnackBar(SnackBar(content: Text('Data is Processing.')));
                  print("Submitting");
                }
              }, child: Text("Submit")),
            ),
          ],
        ),
      ),
    );
  }
}

// While creating forms We need to provide a GlobalKey that uniqely identifies the form.
// Form Widget provides TextFormField
// Here we define a GlobalKey as Form key