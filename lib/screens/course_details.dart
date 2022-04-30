import 'package:flutter/material.dart';

import '../data/course.dart';

class CourseDetailsScreen extends StatelessWidget {
  CourseDetailsScreen({Key? key}) : super(key: key);
  late Course course;
  static const String routeName = '/courseDetailsScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Colors.black,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 48,
                ),
                Container(
                  width: 360,
                  height: 86,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                  child: const Text(
                    'Data Structures &\nAlgorithms',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xFFBA0C2F),
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const Center(
                  child: Image(
                    image: AssetImage('assets/article_image.png'),
                    alignment: Alignment.center,
                  ),
                ),
                const SizedBox(
                  height: 23,
                ),
                Container(
                  width: 360,
                  // height: 86,
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                  padding: const EdgeInsets.only(left: 28),
                  child: const Text(
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
                  margin: const EdgeInsets.only(left: 32),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                  child: RichText(
                    text: const TextSpan(
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
        ));
  }
}
