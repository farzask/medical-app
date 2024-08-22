class CategoryModel {
  String iconPath;
  bool isSelected;

  CategoryModel({
    required this.iconPath,
    required this.isSelected,
  });

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(
      CategoryModel(
        iconPath: 'assets/icons/heart.svg',
        isSelected: false,
      ),
    );

    categories.add(
      CategoryModel(
        iconPath: 'assets/icons/pil.svg',
        isSelected: false,
      ),
    );

    categories.add(
      CategoryModel(
        iconPath: 'assets/icons/dentist.svg',
        isSelected: true,
      ),
    );

    categories.add(
      CategoryModel(
        iconPath: 'assets/icons/pregnant.svg',
        isSelected: false,
      ),
    );

    return categories;
  }
}
