import 'main.dart';
import 'package:flutter/material.dart';

class Newnote extends StatefulWidget {
  const Newnote({super.key});

  @override
  State<Newnote> createState() => _NewnoteState();
}

class _NewnoteState extends State<Newnote> {
  var text1 = TextEditingController();
  String one = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.all(12),
          height: 200,
          // color: Colors.white,
          child: Column(
            children: [
              Text(
                "New Task",
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w400,
                    fontSize: 30),
              ),
              TextField(
                controller: text1,
                decoration: InputDecoration(label: Text("Add new Task")),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("cancle")),
                  ElevatedButton(
                      onPressed: () {
                        one = text1.text;
                        //listToDo.add = text1.text;
                        //text1.text = " ";
                        listToDo.add(one);

                        Navigator.pop(context);
                        setState(() {});
                      },
                      child: Text("add")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
