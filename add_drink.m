function add_drink(n)
    evalin('base', 'save drinks.mat');
    drinks = importdata('drinks.mat');
    if exist('n', 'var')
        assignin('base', 'n_drinks', drinks.n_drinks+n);
    else
        assignin('base', 'n_drinks', drinks.n_drinks+1);
    end
    set_param('release_party/drink_gain', 'Gain', 'n_drinks');
end