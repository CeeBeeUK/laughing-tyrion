glasses = [
  "Absinthe",
  "Bauble",
  "Cactus",
  "Clay Cantaritos",
  "Cooper Mule",
  "Coupe",
  "Flutes",
  "Gin Goblet",
  "Highball",
  "Hot",
  "Hurricane",
  "Martini",
  "Old",
  "Sake",
  "Saucers",
  "Shark",
  "Shot",
  "Silver metal Julep",
  "Sling (Speakeasy)",
  "Tiki",
  "Toucan",
  "Tumbler",
  "Wine"
]

ice_types = [
  "Regular",
  "Crushed",
  "Cracked",
  "Large cube",
  "Large ball",
  "Large speciality"
]

%w[Whisky Vodka].each do |name|
  Ingredient.find_or_create_by(name:)
end

glasses.each do |name|
  Glass.find_or_create_by(name:)
end

ice_types.each do |name|
  Ice.find_or_create_by(name:)
end

[ "Whisky sour" ].each do |name|
  Cocktail.find_or_create_by(name:, glass: Glass.find_by(name: "Tumbler"))
end

CocktailsIngredient.find_or_create_by(cocktail: Cocktail.first, ingredient: Ingredient.first, quantity: 50, measurement: "ml")
