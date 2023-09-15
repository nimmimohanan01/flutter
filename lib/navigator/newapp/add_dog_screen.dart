import 'package:flutter/material.dart';
import 'package:demo1/dogs_list_Screen.dart';

void main() => runApp(MaterialApp(
  home:MyForm() ,
));

class MyForm extends StatelessWidget {
  const MyForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyCustomForm(),
    );
  }
}
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final myController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'enter dog name'
            ), controller: myController,

          ),
          TextFormField(
            validator: (text){
              f
                (text == null || text.isEmpty) {
                return 'your dog';
              }
              return null;
            }
            ,onChanged: (text){
            print('First text field: $text (${text.characters.length})');
          },
            decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'enter dog age'
            ),
          ),
          ElevatedButton(
              onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>add_dog_screen()));
              },
              child: Icon(
                  Icons.text_fields
              ))
        ],
      ),
    );
  }

  add_dog_screen() {}
}

void validateMyFields(BuildContext context, GlobalKey<FormState> formKey) {
  if (formKey.currentState!.validate()) {
    // If the form is valid, display a snackbar. In the real world,
    // you'd often call a server or save the information in a database.
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Processing Data')),
    );
  }
}