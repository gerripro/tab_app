import 'dart:async';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:tab_app/enums/task_status.dart';
import 'package:tab_app/models/task_dto.dart';

class TabTwo extends StatefulWidget {
  final DatabaseReference databaseReference;

  const TabTwo({super.key, required this.databaseReference});

  @override
  State<TabTwo> createState() => _TabTwoState();
}

class _TabTwoState extends State<TabTwo> {
  late final DatabaseReference dbRef = widget.databaseReference.child('/tasks');
  late Stream taskStream = dbRef.onValue;

  Future<void> deleteTask(int index, TaskDto task) async {
    await dbRef.child(index.toString()).update(task.toJson());
  }

  void handleTap(TaskDto task) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Text(
                "Task Status: ${task.status.text}",
                textAlign: TextAlign.center,
              ),
            ));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        child: StreamBuilder(
          stream: taskStream,
          builder: (context, snapshot) {
            if (!snapshot.hasData) return const Text('There are no task');
            var listMapEntry = snapshot.data.snapshot.value as List;
            var tasks = listMapEntry.map((e) {
              var map = e as Map<dynamic, dynamic>;
              Map<String, dynamic> newMap = map.map(
                (key, value) => MapEntry(key.toString(), value),
              );
              return TaskDto.fromJson(newMap);
            }).toList();
            return ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                var task = tasks[index];
                var dateCreated =
                    DateTime.fromMillisecondsSinceEpoch(task.createdAt);
                var dateCreatedStr =
                    "${dateCreated.day}/${dateCreated.month}/${dateCreated.year}";
                if (task.status == TaskStatus.deleted) return const SizedBox();
                return Dismissible(
                  key: Key(task.taskId),
                  background: ColoredBox(color: Colors.red),
                  onDismissed: (direction) => deleteTask(
                      index, task.copyWith(status: TaskStatus.deleted)),
                  child: ListTile(
                    onTap: () => handleTap(task),
                    title: Text("id: ${task.taskId}"),
                    subtitle: Text('Created at: $dateCreatedStr\n'
                        'Status: ${task.status.text}'),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
