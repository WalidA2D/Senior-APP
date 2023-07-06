# Vérifier si l'ingrédient existe déjà, sinon le créer
sucre_roux = Ingredient.find_or_create_by(nom: 'Sucre roux')
sucre_vanille = Ingredient.find_or_create_by(nom: 'Sucre vanillé')
biscuits_cuillere = Ingredient.find_or_create_by(nom: 'Biscuits à la cuillère')
cacao_amer = Ingredient.find_or_create_by(nom: 'Cacao amer')
oeufs = Ingredient.find_or_create_by(nom: 'Oeufs')
mascarpone = Ingredient.find_or_create_by(nom: 'Mascarpone')
cafe_noir = Ingredient.find_or_create_by(nom: 'Café noir')

# Associer les ingrédients aux recettes (en évitant les doublons)
Recette.all.each do |recette|
    case recette.nom
    when 'Tiramisu'
      recette.ingredients << sucre_roux unless recette.ingredients.include?(sucre_roux)
      recette.ingredients << sucre_vanille unless recette.ingredients.include?(sucre_vanille)
      recette.ingredients << biscuits_cuillere unless recette.ingredients.include?(biscuits_cuillere)
      recette.ingredients << cacao_amer unless recette.ingredients.include?(cacao_amer)
      recette.ingredients << oeufs unless recette.ingredients.include?(oeufs)
      recette.ingredients << mascarpone unless recette.ingredients.include?(mascarpone)
      recette.ingredients << cafe_noir unless recette.ingredients.include?(cafe_noir)
    when 'Mousse au chocolat'
      recette.ingredients << cacao_amer unless recette.ingredients.include?(cacao_amer)
      recette.ingredients << oeufs unless recette.ingredients.include?(oeufs)
      recette.ingredients << mascarpone unless recette.ingredients.include?(mascarpone)
      recette.ingredients << sucre_vanille unless recette.ingredients.include?(sucre_vanille)
    when 'Crème brûlée'
      recette.ingredients << sucre_vanille unless recette.ingredients.include?(sucre_vanille)
      recette.ingredients << oeufs unless recette.ingredients.include?(oeufs)
      recette.ingredients << mascarpone unless recette.ingredients.include?(mascarpone)
      recette.ingredients << sucre_vanille unless recette.ingredients.include?(sucre_vanille)
    end
  end
