enum NewsCategory {
  general,
  technology,
  business,
  entertainment,
  health,
  science,
  sports,
}

String newsCategoryToString(NewsCategory category) {
  switch (category) {
    case NewsCategory.business:
      return "business";

    case NewsCategory.entertainment:
      return "entertainment";

    case NewsCategory.general:
      return "general";

    case NewsCategory.health:
      return "health";

    case NewsCategory.science:
      return "science";

    case NewsCategory.sports:
      return "sports";

    case NewsCategory.technology:
      return "technology";

    default:
      return "";
  }
}
