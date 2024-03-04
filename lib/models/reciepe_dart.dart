class ReciepeDart {
    ReciepeDart({
        required this.categories,
    });

    final List<Category> categories;

    factory ReciepeDart.fromJson(Map<String, dynamic> json){ 
        return ReciepeDart(
            categories: json["categories"] == null ? [] : List<Category>.from(json["categories"]!.map((x) => Category.fromJson(x))),
        );
    }

    Map<String, dynamic> toJson() => {
        "categories": categories.map((x) => x?.toJson()).toList(),
    };

}

class Category {
    Category({
        required this.idCategory,
        required this.strCategory,
        required this.strCategoryThumb,
        required this.strCategoryDescription,
    });

    final String? idCategory;
    final String? strCategory;
    final String? strCategoryThumb;
    final String? strCategoryDescription;

    factory Category.fromJson(Map<String, dynamic> json){ 
        return Category(
            idCategory: json["idCategory"],
            strCategory: json["strCategory"],
            strCategoryThumb: json["strCategoryThumb"],
            strCategoryDescription: json["strCategoryDescription"],
        );
    }

    Map<String, dynamic> toJson() => {
        "idCategory": idCategory,
        "strCategory": strCategory,
        "strCategoryThumb": strCategoryThumb,
        "strCategoryDescription": strCategoryDescription,
    };

}
