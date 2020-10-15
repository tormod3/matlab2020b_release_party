function add_shot(n)
    evalin('base', 'save drinks.mat');
    drinks = importdata('drinks.mat');
    if exist('n', 'var')
        assignin('base', 'n_shots', drinks.n_shots+n);
    else
        assignin('base', 'n_shots', drinks.n_shots+1);
    end
    set_param('release_party/shot_gain', 'Gain', 'n_shots');
end