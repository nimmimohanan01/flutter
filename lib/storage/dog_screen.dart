import 'package:flutter/material.dart';
import 'package:demo1/database/curd.dart';
import 'package:demo1/model/dog.dart';
import 'package:demo1/storage/add_dog.dart';
import 'package:demo1/widgets/my_nav_drawer.dart';

var dogDao = new DogDao();
var database;

void main() async {
  database = await dogDao.openDb();
  runApp(MaterialApp(
    routes: {
      'add_dog_screen': (context)=> AddDog(dogDao),
    },
    home: DogsApp(),
  ));
}

class DogsApp extends StatelessWidget {
  DogsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text('dogs db demo'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          FutureBuilder(
              future: getAllDogs(),
              builder: (context, snapshot) {
                return Flexible(
                  flex: 1,
                  child: Center(
                    child: ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context, index) {
                          final item = snapshot.data![index];
                          return GestureDetector(
                            onTap: (){
                              print(snapshot.data![index].name);
                              var dog = snapshot.data![index];
                              Navigator.pushNamed(context, 'add_dog_screen',arguments: dog );
                            },
                            child: Dismissible(
                              onDismissed: (direction) {
                                deleteDog(index);

                              },
                              key: Key(item.name),
                              background: Container(color: Colors.red,),
                              child: ListTile(
                                leading:
                                Text(snapshot.data![index].age.toString()),
                                title: Text(snapshot.data![index].name),
                              ),
                            ),
                          );
                        }),
                  ),
                );
              }),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddDog(dogDao)));
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void addDog() async {
    /* var dog = Dog(id: int.parse(idController.text),
        name: nameController.text,
        age: int.parse(ageController.text));
    await dogDao.insertDog(dog)    ;*/
  }

  Future<List<Dog>> getAllDogs() {
    return dogDao.readDog();
  }

  deleteDog(int id){
    dogDao.deleteDog(id);
  }
}