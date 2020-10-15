function add_wine(n)
    evalin('base', 'save drinks.mat');
    drinks = importdata('drinks.mat');
    if exist('n', 'var')
        assignin('base', 'n_wines', drinks.n_wines+n);
    else
        assignin('base', 'n_wines', drinks.n_wines+1);
    end
    set_param('release_party/wine_gain', 'Gain', 'n_wines');
end