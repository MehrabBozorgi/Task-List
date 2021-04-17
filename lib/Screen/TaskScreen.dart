import 'package:flutter/material.dart';
import 'package:flutter_app_do_list/Widgets/Task_List.dart';
import 'package:flutter_app_do_list/const.dart';

class TaskScreen extends StatefulWidget {
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 25,
        ),
        onPressed: () {


        },
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60, bottom: 30, left: 30, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  child: Icon(
                    Icons.list,
                    color: Colors.blue,
                    size: 30,
                  ),
                  backgroundColor: Colors.white,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Today',
                  style: kTitleStyle,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '12 Tasks',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
                padding: EdgeInsets.only(left: 15, right: 15),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: TaskList(),),
          ),
        ],
      ),
    );
  }
}




