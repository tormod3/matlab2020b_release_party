function remove_people()
    evalin('base', 'save drinks.mat');
    drinks = importdata('drinks.mat');
    assignin('base', 'n_people', drinks.n_people-1);
    set_param('release_party/decline_gain', 'Gain', 'n_people');
    set_param('release_party/avg1', 'Gain', '1/n_people');
    set_param('release_party/avg2', 'Gain', '1/n_people');
end