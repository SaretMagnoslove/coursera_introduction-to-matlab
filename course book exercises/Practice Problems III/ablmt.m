function  [a]=ablmt(in)
switch in
    case {'M','A','T','L','B'}
        a = 'MATLAB';
        fprintf('MATLAB\n')
    case {'m','a','t','l','b'}
        a = 'matlab';
        fprintf('matlab\n');
    otherwise
        a = 'I just don''t have it in me';
        fprintf('I just don’t have it in me\n');
end
end