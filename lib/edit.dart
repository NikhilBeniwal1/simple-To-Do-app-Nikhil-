import 'main.dart';
import 'package:flutter/material.dart';

class EditTask extends StatefulWidget {
  int id = 0;
  EditTask({super.key, required this.id});

  @override
  State<EditTask> createState() => _EditTaskState();
}

class _EditTaskState extends State<EditTask> {
  var update = TextEditingController();
  @override
  void initState() {
    update.text = listToDo[widget.id];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const Text(
              "Edit Task",
              style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w400,
                  fontSize: 30),
            ),
            TextField(
              controller: update,
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  listToDo[widget.id] = update.text;
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HomePage();
                  }));
                },
                child: Text("update and save"))
          ],
        ),
      ),
    );
  }
}
