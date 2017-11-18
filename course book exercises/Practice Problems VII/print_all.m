function print_all(varargin)
switch nargin
    case 0
        fprintf('We received no numbers.\n');
    case 1
        fprintf('We received the following number: %d\n',varargin{1});
    otherwise
        fprintf('We received the following numbers: ');
        for ii=1:nargin-1
            fprintf('%d ',varargin{ii});
        end
        fprintf(' and %d ',varargin{end});
        fprintf('\n');
end
end