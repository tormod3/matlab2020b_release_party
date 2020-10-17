n_beers = 20;
n_drinks = 10;
n_shots = 10;
n_wines = 10;

promille_beer = 0;
promille_wine = 0;
promille_shot = 0;
promille_drink = 0;

%n_beers = update_beers(n_beers);

%set_param(release_part/beer_gain, Gain, n_beers);
%check_drinks();
init();
add_beer(10);
add_wine(10);
add_drink(10);
add_shot(10);
for i=1:3
    SimOut = sim('release_party', 'ReturnWorkspaceOutputs', 'on');

    promille_beer = SimOut.beer_promille.Data(length(out.beer_promille.Data));
    promille_wine = SimOut.wine_promille.Data(length(out.wine_promille.Data));
    promille_drink = SimOut.drink_promille.Data(length(out.drink_promille.Data));
    promille_shot = SimOut.shot_promille.Data(length(out.shot_promille.Data));
end