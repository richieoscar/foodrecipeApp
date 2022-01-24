// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_recipe_serialize_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiRecipeQuery _$ApiRecipeQueryFromJson(Map<String, dynamic> json) =>
    ApiRecipeQuery(
      query: json['q'] as String?,
      from: json['from'] as int?,
      to: json['to'] as int?,
      count: json['count'] as int?,
      links: Links.fromJson(json['links'] as Map<String, dynamic>),
      hits: (json['hits'] as List<dynamic>)
          .map((e) => Hit.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ApiRecipeQueryToJson(ApiRecipeQuery instance) =>
    <String, dynamic>{
      'q': instance.query,
      'from': instance.from,
      'to': instance.to,
      'count': instance.count,
      'links': instance.links,
      'hits': instance.hits,
    };

Hit _$HitFromJson(Map<String, dynamic> json) => Hit(
      recipe: (json['recipe'] as List<dynamic>)
          .map((e) => Recipe.fromJson(e as Map<String, dynamic>))
          .toList(),
      links: Links.fromJson(json['links'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HitToJson(Hit instance) => <String, dynamic>{
      'recipe': instance.recipe,
      'links': instance.links,
    };

Ingredient _$IngredientFromJson(Map<String, dynamic> json) => Ingredient(
      text: json['text'] as String,
      quantity: json['quantity'] as String,
      measure: json['measure'] as String,
      food: json['food'] as String,
      weight: json['weight'] as String,
    );

Map<String, dynamic> _$IngredientToJson(Ingredient instance) =>
    <String, dynamic>{
      'text': instance.text,
      'quantity': instance.quantity,
      'measure': instance.measure,
      'food': instance.food,
      'weight': instance.weight,
    };

Recipe _$RecipeFromJson(Map<String, dynamic> json) => Recipe(
      uri: json['uri'] as String,
      label: json['label'] as String,
      image: json['image'] as String,
      source: json['source'] as String,
      url: json['url'] as String,
      calories: (json['calories'] as num).toDouble(),
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((e) => Ingredient.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalWeight: (json['totalWeight'] as num).toDouble(),
    );

Map<String, dynamic> _$RecipeToJson(Recipe instance) => <String, dynamic>{
      'uri': instance.uri,
      'label': instance.label,
      'image': instance.image,
      'source': instance.source,
      'url': instance.url,
      'ingredients': instance.ingredients,
      'calories': instance.calories,
      'totalWeight': instance.totalWeight,
    };

Links _$LinksFromJson(Map<String, dynamic> json) => Links(
      self: Link.fromJson(json['self'] as Map<String, dynamic>),
      next: Link.fromJson(json['next'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LinksToJson(Links instance) => <String, dynamic>{
      'self': instance.self,
      'next': instance.next,
    };

Link _$LinkFromJson(Map<String, dynamic> json) => Link(
      href: json['href'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$LinkToJson(Link instance) => <String, dynamic>{
      'href': instance.href,
      'title': instance.title,
    };
