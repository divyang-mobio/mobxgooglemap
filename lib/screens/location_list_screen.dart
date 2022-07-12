import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../controller/mobx_controller.dart';
import 'package:provider/provider.dart';

class LocationList extends StatelessWidget {
  const LocationList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<LocationController>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios)),
        title: const Text('Saved Data'),
      ),
      body: Observer(
        builder: (_) => (controller.data.isNotEmpty)
            ? ListView.builder(
                itemCount: controller.data.length,
                itemBuilder: (context, index) => GestureDetector(
                  onDoubleTap: () =>
                      controller.delete(controller.data[index].id as int),
                  child: Card(
                    elevation: 8,
                    child: ListTile(
                      title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("id: ${controller.data[index].id}"),
                            const SizedBox(height: 10),
                            Text(
                              "longitude: ${controller.data[index].longitude.toString()}",
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "latitude: ${controller.data[index].latitude.toString()}",
                            )
                          ]),
                    ),
                  ),
                ),
              )
            : const Center(child: Text("No data")),
      ),
    );
  }
}
