import 'package:flutter/material.dart';
import 'package:satsetsatset/model_category.dart';

class AddPage extends StatelessWidget {
  const AddPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: const ShapeDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.99, 0.15),
                end: Alignment(-0.99, -0.15),
                colors: [
                  Color(0xA00066FF),
                  Color(0xF47A28A0),
                ],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 40, 16, 16),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Tambah",
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium
                          ?.copyWith(
                              color: Theme.of(context).colorScheme.onPrimary),
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: Center(
                          child: Text("Pemasukan",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary)),
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text("Pengeluaran",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall
                                  ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimary)),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          DropdownCategoryWidget()
        ],
      ),
    );
  }
}

class DropdownCategoryWidget extends StatefulWidget {
  const DropdownCategoryWidget({super.key});

  @override
  State<DropdownCategoryWidget> createState() => _DropdownCategoryWidgetState();
}

class _DropdownCategoryWidgetState extends State<DropdownCategoryWidget> {
  String dropdownValue = ModelCategory.getList().first.resourcePath;

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      items: ModelCategory.getList().map((ModelCategory e) {
        return DropdownMenuItem<String>(
            value: e.resourcePath, child: Text(e.resourcePath));
      }).toList(),
      onChanged: (String? value){
        setState(() {
          dropdownValue = value!;
        });
      },
    );
  }
}
