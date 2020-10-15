function check_drinks(n)
    if exist('n', 'var')
        disp(n)
    end
    evalin('base', 'save drinks.mat')
    a = importdata('drinks.mat');
    disp(a);
end