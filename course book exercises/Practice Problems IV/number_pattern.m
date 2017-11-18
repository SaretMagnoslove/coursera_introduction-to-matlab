function number_pattern
temp = input('Please input a number: ');
while 1
    a = input('Please input number (I''m looking for a pattern): ');
    if a == temp; fprintf('That''s it. Well done!\n');return;
    else temp = a; fprintf('Sorry, that''s not what I''m looking for.\n')
    end
end