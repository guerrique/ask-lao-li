Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.

result_traits = []
tirage.traits.each do |trait|
  result_traits << trait.nom
end

traits = ["yang", "yin", etc]



pour le tirages controller
    # result_lancer = []
    # peut-être que je peux faire ça... remplir une array à chaque
    # fonction set_jet, et la récupérer pour set_hexagramme
    # ... avant de trouver une solution pour rendre tout ça DRY
    # par javascript (comment passer value de js à ruby?)
    # ou avec ruby instance_variable_set
