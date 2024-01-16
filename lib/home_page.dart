import 'package:flutter/material.dart';
import 'package:satsetsatset/app_routes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget header(BuildContext context) {
    return Row(
      children: [
        Text(
          "This Week",
          style: Theme.of(context).textTheme.displaySmall,
        ),
        const Spacer(),
        IconButton(onPressed: () {}, icon: const Icon(Icons.tune))
      ],
    );
  }

  Widget displayIncomeExpense(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: ShapeDecoration(
        gradient: const LinearGradient(
          begin: Alignment(-1.00, 0),
          end: Alignment(1, 0),
          colors: [
            Color.fromRGBO(255, 0, 0, .55),
            Color.fromRGBO(0, 102, 255, .55),
            Color.fromRGBO(105, 0, 154, .55)
          ],
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        shadows: const [
          BoxShadow(
            color: Color(0x3F969696),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                Image.asset('assets/images/income.png'),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Income",
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary)),
                    const SizedBox(height: 4),
                    Text("Rp. 20000",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary))
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Image.asset('assets/images/expense.png'),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Expense",
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary)),
                    const SizedBox(height: 4),
                    Text("Rp. 20000",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: Theme.of(context).colorScheme.onPrimary))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget notaItem(String title, bool isIncome, String leadingIconPath,
      int value, BuildContext context) {
    String assetNaikTurun =
    isIncome ? 'assets/images/stoknaik.png' : 'assets/images/stokturun.png';
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        shadows: const [
          BoxShadow(
            color: Color(0x3F969696),
            blurRadius: 4,
            offset: Offset(0, 4),
            spreadRadius: 0,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Image.asset(leadingIconPath),
            const SizedBox(width: 16),
            Expanded(
                flex: 10,
                child:
                Text(title, style: Theme.of(context).textTheme.bodyMedium)),
            SizedBox(
              width: 84,
              child: Row(
                children: [
                  Image.asset(assetNaikTurun),
                  Text(value.toString(),
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
            ),
            Image.asset('assets/images/next.png')
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () { Navigator.pushNamed(context, AppRoutes.addPage);},
        label: const Text("New"),
        icon: const Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Column(
            children: [
              const SizedBox(height: 60),
              header(context),
              const SizedBox(height: 16),
              displayIncomeExpense(context),
              const SizedBox(height: 16),
              notaItem(
                  "Test", true, 'assets/images/category.png', 1000, context),
              const SizedBox(height: 8),
              notaItem(
                  "Test", true, 'assets/images/category.png', 1000, context),
              const SizedBox(height: 8),
              notaItem(
                  "Test", true, 'assets/images/category.png', 1000, context),
              const SizedBox(height: 8),
              notaItem(
                  "Test", true, 'assets/images/category.png', 1000, context),
              const SizedBox(height: 8),
              notaItem(
                  "Test", true, 'assets/images/category.png', 1000, context),
              const SizedBox(height: 8),
              notaItem(
                  "Test", true, 'assets/images/category.png', 1000, context),
              const SizedBox(height: 8),
              notaItem(
                  "Test", true, 'assets/images/category.png', 1000, context),
              const SizedBox(height: 8),
              notaItem(
                  "Test", true, 'assets/images/category.png', 1000, context),
              const SizedBox(height: 8),
              notaItem(
                  "Test", true, 'assets/images/category.png', 1000, context),
              const SizedBox(height: 8),
              notaItem(
                  "Test", true, 'assets/images/category.png', 1000, context),
              const SizedBox(height: 8),
              notaItem(
                  "Test", true, 'assets/images/category.png', 1000, context),
              const SizedBox(height: 8),
              notaItem(
                  "Test", true, 'assets/images/category.png', 1000, context),
              const SizedBox(height: 8),
              notaItem(
                  "Test", true, 'assets/images/category.png', 1000, context),
              const SizedBox(height: 8),
            ],
          ),
        ),
      ),
    );
  }
}
