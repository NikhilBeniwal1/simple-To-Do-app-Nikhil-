import 'package:flutter/material.dart';
import 'package:mytodo/edit.dart';
import 'package:mytodo/newtask.dart';

import 'secondpage.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "dfjdkkdl",
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

List<String> listToDo = [
  "Pay card bill",
  "Flutter Tasks",
  "3rd Task",
  "Sample task"
];

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  var text1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Simple To Do app (Nikhil)"),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: listToDo.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: IconButton(
                          onPressed: () {
                            listToDo.removeAt(index);
                            setState(() {});
                          },
                          icon: Icon(Icons.delete)),
                      title: Text(listToDo[index]),
                      trailing: IconButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return EditTask(id: index);
                            }));
                            //  setState(() {});
                          },
                          icon: Icon(Icons.edit)),
                    );
                  }),
            ),
          ],
        ),

        // bottom sheet

        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Newnote();
              })).then((_) {
                setState(() {});
              });
              /* showModalBottomSheet(
                backgroundColor: Colors.white,
                elevation: 3,
                enableDrag: false,
                isDismissible: false,
                context: context,
                builder: (context) {
                  return Center(
                    child: Container(
                      margin: EdgeInsets.all(12),
                      height: 200,
                      // color: Colors.white,
                      child: Column(
                        children: [
                          Text("New Note"),
                          TextField(
                            controller: text1,
                            decoration:
                                InputDecoration(label: Text("Add new Task")),
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
                                    Navigator.pop(context);
                                    listToDo.add("${text1.text}");
                                    text1.text = " ";
                                    setState(() {});
                                  },
                                  child: Text("add")),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                });
          },
    }      child: Icon(Icons.add)),*/
            }));
  }
}
