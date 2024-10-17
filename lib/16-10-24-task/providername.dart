import 'package:flutter/material.dart';
import 'package:flutterproject/07-10-24-task/alertbox.dart';
import 'package:flutterproject/16-10-24-task/provider.dart';
import 'package:provider/provider.dart';

class Providername extends StatefulWidget {
  const Providername({super.key});

  @override
  State<Providername> createState() => _ProvidernameState();
}

class _ProvidernameState extends State<Providername> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final userName = Provider.of<Providerstr>(context);

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _controller,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50))),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    userName.addName(User(
                        id: DateTime.now().toString(), name: _controller.text));
                  },
                  child: Text("Save text")),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      final user = userName.nameList[index];
                      return ListTile(
                        title: Text(user.name),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                                onPressed: () {
                                  
                                  userName.updateName(user.id,_controller.text);
                                },
                                icon: Icon(Icons.edit)),
                            IconButton(
                                onPressed: () {
                                  userName.deleteName(user.id);
                                },
                                icon: Icon(Icons.delete)),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Divider(),
                      );
                    },
                    itemCount: userName.nameList.length),
              )
            ],
          ),
        ),
      ),
    );
  }
}
