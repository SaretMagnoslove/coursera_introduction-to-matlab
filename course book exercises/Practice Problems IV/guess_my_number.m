function guess_my_number
guess = input('Try to guess my number: ');
while guess ~=42
    if guess<42; fprintf('Higher\n')
    else fprintf('Lower\n')
    end
    guess = input('Try to guess my number: ');
end
fprintf('That''s it!\n')