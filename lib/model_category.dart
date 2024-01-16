
class ModelCategory{
  String resourcePath;
  String categoryTitle;
  ModelCategory({required this.categoryTitle, required this.resourcePath});

  static List<ModelCategory> getList(){
    return <ModelCategory>[
      ModelCategory(categoryTitle: 'Cash', resourcePath: 'assets/images/category.png'),
      ModelCategory(categoryTitle: 'Bill', resourcePath: 'assets/images/category2.png'),
      ModelCategory(categoryTitle: 'Purchase', resourcePath: 'assets/images/category3.png'),
    ];
  }
}