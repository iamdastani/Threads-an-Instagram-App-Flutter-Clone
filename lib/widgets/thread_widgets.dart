import 'package:flutter/material.dart';
import 'package:threads/data/model/thread.dart';

class ThreadPage extends StatelessWidget {
  thread threadlist;
  ThreadPage(this.threadlist, {super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomEnd,
      children: [
        Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage:
                    AssetImage('images/${threadlist.profileImage}'),
              ),
              title: Row(
                children: [
                  Text(
                    threadlist.name ?? 'name',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text(
                    threadlist.posted!,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.more_horiz)
                ],
              ),
              subtitle: Text(
                threadlist.description!,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            if (threadlist.image != '')
              Padding(
                padding: const EdgeInsets.only(
                  right: 20,
                  left: 70,
                ),
                child: Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.amber,
                      image: DecorationImage(
                        image: AssetImage('images/${threadlist.image}'),
                        fit: BoxFit.cover,
                      )),
                ),
              ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Row(
                children: [
                  Icon(Icons.favorite_border),
                  SizedBox(width: 10),
                  Icon(Icons.chat_bubble_outline),
                  SizedBox(width: 10),
                  Icon(Icons.cached),
                  SizedBox(width: 10),
                  Icon(Icons.send),
                  SizedBox(width: 10),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.only(bottom: 10),
              alignment: Alignment.bottomLeft,
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(left: 70),
                child: Text(
                  '${threadlist.replies} replies . ${threadlist.liks} likes',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey.shade500,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 35,
          top: 63,
          child: Container(
            height: 400,
            width: 3,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(1),
            ),
          ),
        ),
        Positioned(
          right: 330,
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(1),
            ),
            child: Stack(
              
            ),
          ),
        ),
      ],
    );
  }
}
