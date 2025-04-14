
import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  const TodoPage({super.key});

  @override
  State<TodoPage> createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {

  final List<String> todos = [];
  final TextEditingController _controller = TextEditingController();

  void _addTodo(String text){
    if (text.trim().isEmpty) return;

    setState(() {
      todos.add(text.trim());
      _controller.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To Do 앱"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        hintText: "할 일을 입력하세요",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                        filled: true,
                        fillColor: Colors.pink[50]
                      ),
                    )
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                    onPressed: () => _addTodo(_controller.text),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigo,
                      foregroundColor: Colors.white
                    ),
                    child: const Text("추가")
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
