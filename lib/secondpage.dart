import 'main.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  var NewTask = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              //MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: NewTask,
                      decoration: InputDecoration(
                        label: Text("Add new task."),
                      ),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        listToDo.add(NewTask.text);
                        setState(() {});
                      },
                      child: Text("Add"))
                ],
              ),
            ),
            Container(
              height: 600,
              child: ListView.builder(
                  itemCount: listToDo.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: IconButton(
                          onPressed: () {
                            listToDo.removeAt(index);
                            NewTask.text = " ";
                            setState(() {});
                          },
                          icon: Icon(Icons.delete)),
                      title: Text(listToDo[index]),
                      trailing: Text("${index + 1}"),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
