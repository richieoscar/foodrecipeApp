import 'package:json_annotation/json_annotation.dart';

part 'api_recipe_serialize_model.g.dart';

@JsonSerializable()
class ApiRecipeQuery {
  @JsonKey(name: 'q')
  String? query;
  int? from;
  int? to;
  int? count;
  Links links;
  List<Hit> hits;

  ApiRecipeQuery(
      {required this.query,
      required this.from,
      required this.to,
      required this.count,
      required this.links,
      required this.hits});

  factory ApiRecipeQuery.fromJson(Map<String, dynamic> json) =>
      _$ApiRecipeQueryFromJson(json);

  Map<String, dynamic> toJson() => _$ApiRecipeQueryToJson(this);
}

@JsonSerializable()
class Hit {
  List<Recipe> recipe;
  Links links;

  Hit({required this.recipe, required this.links});

  factory Hit.fromJson(Map<String, dynamic> json) => _$HitFromJson(json);
  Map<String, dynamic> toJson() => _$HitToJson(this);
}

@JsonSerializable()
class Ingredient {
  String text;
  String quantity;
  String measure;
  String food;
  String weight;
  Ingredient({
    required this.text,
    required this.quantity,
    required this.measure,
    required this.food,
    required this.weight,
  });

  factory Ingredient.fromJson(Map<String, dynamic> json) =>
      _$IngredientFromJson(json);

  Map<String, dynamic> toJson() => _$IngredientToJson(this);
}

@JsonSerializable()
class Recipe {
  String uri;
  String label;
  String image;
  String source;
  String url;
  List<Ingredient>? ingredients;
  double calories;
  double totalWeight;

  Recipe({
    required this.uri,
    required this.label,
    required this.image,
    required this.source,
    required this.url,
    required this.calories,
    required this.ingredients,
    required this.totalWeight,
  });

  factory Recipe.fromJson(Map<String, dynamic> json) => _$RecipeFromJson(json);

  Map<String, dynamic> toJson() => _$RecipeToJson(this);
}

@JsonSerializable()
class Links {
  Link self;
  Link next;
  Links({
    required this.self,
    required this.next,
  });

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
  Map<String, dynamic> toJson() => _$LinksToJson(this);
}

@JsonSerializable()
class Link {
  String href;
  String title;
  Link({
    required this.href,
    required this.title,
  });

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);
  Map<String, dynamic> toJson() => _$LinkToJson(this);
}
