import 'package:flutter/material.dart';

void main()=> runApp(MaterialApp(
  home: Scaffold(body:
  ParentWidget(),),
));
class ParentWidget extends StatefulWidget {
  const ParentWidget({super.key});

  @override
  State<ParentWidget> createState() => ParentWidgetState();
}

class ParentWidgetState extends State<ParentWidget> {
  bool  _active = false;
  
  void _handleTapboxchanged (bool newValue){
    setState(() {
      _active = newValue;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: childTapboxB(
        active: _active,
        onChanged: _handleTapboxchanged,
      ),
    );
  }
}


class childTapboxB extends StatelessWidget {
  const childTapboxB({
    super.key,this.active = false,
    required this.onChanged
  });

  final bool active;
  final ValueChanged<bool> onChanged;

  void _handleTap(){
    onChanged(!active); //2
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:  _handleTap, //calling the parent 1

      child: Container(
        child: Center(
          child: Text(
              active ? 'Active': 'Inactive'
          ),
        ),
        width: 200, height: 200,
        decoration: BoxDecoration(
            color: active ? Colors.green : Colors.grey
        ),
      ),
    );
  }
}


