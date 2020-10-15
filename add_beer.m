function add_beer(n)
    evalin('base', 'save drinks.mat');
    drinks = importdata('drinks.mat');
    if exist('n', 'var')
        assignin('base', 'n_beers', drinks.n_beers+n);
    else
        assignin('base', 'n_beers', drinks.n_beers+1);
    end
    set_param('release_party/beer_gain', 'Gain', 'n_beers');
end