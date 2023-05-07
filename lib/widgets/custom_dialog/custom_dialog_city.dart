import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/Search_controller.dart';

class CityName extends StatelessWidget {
 
  final SearchController searchController = Get.find();
  CityName({super.key});
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: const Color(0xffededed),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5))),
      content: Builder(
        builder: (context) {
          var height = MediaQuery.of(context).size.height;
          var width = MediaQuery.of(context).size.width;

          return Container(
              margin: const EdgeInsets.only(
                top: 7,
              ),
              height: height - 60,
              width: width - 70,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Text('اختار المدينة',
                        style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        )),

                    TextField(
                      textAlign: TextAlign.end,
                      onChanged: (query) => searchController.filter(query),
                      decoration: const InputDecoration(
                        hintText: 'بحث',
                        hintStyle: TextStyle(
                          fontSize: 20,
                        ),
                        suffixIcon: Icon(Icons.search),
                      ),
                    ),

                    const SizedBox(height: 16),
                    Expanded(
                        child: Obx(
                      () => ListView.separated(
                        itemBuilder: (context, index) {
                          final item = searchController.filteredItems[index];
                          return ListTile(
                            title: Text(
                              item,
                              textAlign: TextAlign.right,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onTap: () => Get.back(result: item),
                          );
                        },
                        separatorBuilder: (context, index) => Container(
                          width: double.infinity,
                          height: 1.0,
                          color: Colors.grey[400],
                        ),
                        itemCount: searchController.filteredItems.length,
                      ),
                    )),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () => Get.back(),
                          child: const Text(
                            'اغلاق',
                            style: TextStyle(color: Colors.red, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                    // ),
                  ]));
        },
      ),
    );
  }
}
