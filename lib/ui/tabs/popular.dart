import 'package:flutter/material.dart';
import 'package:umarket/model/uzum_model.dart';
import 'package:umarket/service/uzum_service.dart';

class PopularSale extends StatelessWidget {
  const PopularSale({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: UzumService().getData(),
      builder: (context, AsyncSnapshot snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator.adaptive());
        } else if (snapshot.data is String) {
          return Center(child: Text(snapshot.error.toString()));
        } else {
          List<UzumModel> data = snapshot.data as List<UzumModel>;
          return ListView.builder(
            itemBuilder: (context, index) {
              return SizedBox(
                height: 340,
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.black),
                              ),
                              child: Image(
                                height: 220,
                                width: 300,
                                image: NetworkImage(
                                  data[index].image.toString(),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.black),
                              ),
                              child: Image(
                                height: 220,
                                width: 300,
                                image: NetworkImage(
                                  data[index].image.toString(),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Center(
                            child: Text(
                              data[index].title.toString(),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              data[index].title.toString(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Center(
                            child: Text(
                              data[index].price.toString(),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              data[index].price.toString(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            },
            itemCount: data.length,
          );
        }
      },
    );
  }
}
