class CategoryModel {
  String iconPath;
  bool isSelected;
  String name;

  CategoryModel({
    required this.iconPath,
    required this.isSelected,
    required this.name,
  });

  static List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];

    categories.add(
      CategoryModel(
          iconPath: 'assets/icons/heart.svg',
          isSelected: true,
          name: 'Cardiologists'),
    );

    categories.add(
      CategoryModel(
        iconPath: 'assets/icons/pil.svg',
        isSelected: false,
        name: 'General',
      ),
    );

    categories.add(
      CategoryModel(
          iconPath: 'assets/icons/dentist.svg',
          isSelected: false,
          name: 'Dentists'),
    );

    categories.add(
      CategoryModel(
          iconPath: 'assets/icons/pregnant.svg',
          isSelected: false,
          name: 'Gynaecologists'),
    );

    return categories;
  }
}
