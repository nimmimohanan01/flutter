import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(
  home: Scaffold(body:
  signuppage(),  ),
));

class signuppage extends StatelessWidget {
  const signuppage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading:
          IconButton(onPressed: (){
            Navigator.pop(context);
          },icon: Icon(Icons.arrow_back_ios,size: 20,color: Colors.black,)),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text("Login",style: TextStyle(
                    fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),),
                 SizedBox(height: 20,),
                Text("Welocme back! Login with your credentials",style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),

                ),
                SizedBox(height: 30,)
              ],

            )
          ],
        ),
      ),
    );
  }
}
