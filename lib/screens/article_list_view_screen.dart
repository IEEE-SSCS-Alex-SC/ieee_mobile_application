import 'package:app/compenents/list_view.dart';
import 'package:app/data/articles_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../compenents/tab.dart';

// ignore: must_be_immutable
class ArticleListView extends StatelessWidget {
  const ArticleListView({Key? key}) : super(key: key);

  TabBar get _tabBar => const TabBar(
        indicatorColor: Color(0xFFBA0C2F),
        tabs: [
          CategoryTab(category: "Category 1"),
          CategoryTab(category: "Category 2"),
          CategoryTab(category: "Category 3"),
        ],
      );

  @override
  Widget build(BuildContext context) {
    final articlesProvider = Provider.of<ArticlesProvider>(context);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            bottom: _tabBar,
            backgroundColor: Colors.black,
            centerTitle: false,
            title: const Text(
              "Articles",
              style: TextStyle(
                  fontSize: 28,
                  color: Color(0xFFBA0C2F),
                  fontWeight: FontWeight.bold),
            )),
        body: TabBarView(children: [
          IeeeListView(
            items: articlesProvider.articles,
          ),
          IeeeListView(
            items: articlesProvider.articles,
          ),
          IeeeListView(
            items: articlesProvider.articles,
          ),
        ]),
      ),
    );
  }
}
// 
// 
// 
// 
// 
// 
// 
// DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           bottom: const TabBar(indicatorColor: Color(0xFFBA0C2F), tabs: [
//             CategoryTab(category: "Category 1"),
//             CategoryTab(category: "Category 2"),
//             CategoryTab(category: "Category 3"),
//           ]),
//           elevation: 0,
//           leadingWidth: 0,
//           centerTitle: false,
//           backgroundColor: Colors.white,
//           title: Container(
//             padding: const EdgeInsets.only(top: 15.0),
//             child: const Text(
//               "Articles",
//               style: TextStyle(
//                   fontSize: 28,
//                   color: Color(0xFFBA0C2F),
//                   fontWeight: FontWeight.bold),
//             ),
//           ),
//         ),
//         body: const TabBarView(children: [
//           ArticleListView(),
//           ArticleListView(),
//           ArticleListView(),
//         ]),
//       ),
//     );
//   }
// }
  