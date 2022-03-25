import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  static final Route = 'home';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.black,
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 48,
                  ),
                  Container(
                    width: 360,
                    height: 86,
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                    child: Text(
                      'Data Structures &\nAlgorithms',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFFBA0C2F),
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Center(
                    child: Image.asset(
                      'assets/image.png',
                      alignment: Alignment.center,
                    ),
                  ),
                  SizedBox(
                    height: 23,
                  ),
                  Container(
                    width: 360,
                    // height: 86,
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                    padding: EdgeInsets.only(left: 28),
                    child: Text(
                      'Description',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFFBA0C2F),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    width: 296,
                    margin: EdgeInsets.only(left: 32),
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                    child: RichText(
                      text: TextSpan(
                        style: TextStyle(fontFamily: 'Poppins'),
                        // text:
                        //     'Data Structure is a way of collecting and organising data in such a way that we can perform operations on these data in an effective way. Data Structures is about rendering data elements in terms of some relationship, for better organization and storage. An algorithm is a finite set of instructions or logic, written in order to accomplish a certain predefined task. Algorithm is not the complete code or program, it is just the core logic(solution) of a problem, which can be expressed either as an informal high-level description as pseudocode or using a flowchart ',
                        children: <TextSpan>[
                          TextSpan(
                              text:
                                  'Data Structure is a way of collecting and organising data in such a way that we can perform operations on these data in an effective way. Data Structures is about rendering data elements in terms of some relationship, for better organization and storage. An algorithm is a finite set of instructions or logic, written in order to accomplish a certain predefined task. Algorithm is not the complete code or program, it is just the core logic(solution) of a problem, which can be expressed either as an informal high-level description as pseudocode or using a flowchart.',
                              style: TextStyle(
                                fontSize: 11,
                                height: 1,
                              )),
                          TextSpan(
                              text: '\nContent',
                              style: TextStyle(
                                  color: Color(0xFFBA0C2F),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  height: 2)),
                          TextSpan(
                              text:
                                  '\n- Complexity analysis + Array + Amortized Complexity\n- Analysis + Dynamic array\n- Linked list (Singly and Doubly)\n- Stack + Queue\n- Sorting algorithms (Selection sort + Insertion sort + Bubble sort + Count sort) + Divide & Conquer (Binary search + Merge sort + Quick sort)\n- Binary tree + recursion\n- Hash Map\n- Heap + Heap sort\n- Graph + Graph traversal (Breadth first search + Depth first search)\n- String + Dynamic programming + Greed',
                              style: TextStyle(fontSize: 11)),
                          TextSpan(
                              text: '\nPrerequisites',
                              style: TextStyle(
                                  color: Color(0xFFBA0C2F),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  height: 2)),
                          TextSpan(
                              text: '\n- Programming in C or C++',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                              )),
                          TextSpan(
                              text: '\nInstructor',
                              style: TextStyle(
                                  color: Color(0xFFBA0C2F),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  height: 2)),
                          TextSpan(
                              text:
                                  '\n- Eng. Abo-Elhamd Ali\n- Eng. Mennatallah samier',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                              )),
                          TextSpan(
                              text: '\nCourse Length',
                              style: TextStyle(
                                  color: Color(0xFFBA0C2F),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  height: 2)),
                          TextSpan(
                              text:
                                  '\n- The course consists of 7 sessions\n- Each session is 3 hours',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                              )),
                          TextSpan(
                              text: '\nFees',
                              style: TextStyle(
                                  color: Color(0xFFBA0C2F),
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  height: 2)),
                          TextSpan(
                              text: '\n- Members: 110\n- Non-members: 120',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                              )),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
