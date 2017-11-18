function even_odd(input)
switch input
    case {0,2,4}
        fprintf('even\n')
    case {1,3,5}
        fprintf('odd\n')
    otherwise
        fprintf('Let me get back to you on that one\n')
end
end
