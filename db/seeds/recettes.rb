# Vérifier si la recette existe déjà, sinon la créer
tiramisu = Recette.find_or_create_by(nom: 'Tiramisu')
mousse_chocolat = Recette.find_or_create_by(nom: 'Mousse au chocolat')
creme_brulee = Recette.find_or_create_by(nom: 'Crème brûlée')
