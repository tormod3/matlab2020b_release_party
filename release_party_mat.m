
init();
add_beer(10);
add_wine(10);
add_drink(10);
add_shot(10);
n_people = 3;
for i=1:3
    SimOut = sim('release_party', 'ReturnWorkspaceOutputs', 'on');

    promille_beer = SimOut.beer_promille.Data(length(SimOut.beer_promille.Data));
    promille_wine = SimOut.wine_promille.Data(length(SimOut.wine_promille.Data));
    promille_drink = SimOut.drink_promille.Data(length(SimOut.drink_promille.Data));
    promille_shot = SimOut.shot_promille.Data(length(SimOut.shot_promille.Data));
end