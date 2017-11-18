classdef contact < orderedNode
    
    properties
        firstname
        middlename
        lastname
        phonenumber
    end
    
    methods
        function obj = contact(lname,mname,fname,phone)
            if nargin>0 obj.lastname=lname;end
            if nargin>1 obj.middlename=mname;end
            if nargin>2 obj.firstname=fname;end
            if nargin>3
                if ~ischar(phone)
                    error('phonenumber is expected to be a string')
                end
                obj.phonenumber=phone;
            end
        end
        function disp(obj)
            if isscalar(obj)
                fprintf('name: %s, %s %s\n',obj.lastname,...
                    obj.middlename,obj.firstname)
                fprintf('phone: %s\n\n',obj.phonenumber)
            else
                fprintf('array of contacts\n')
            end
        end
        function obj = set.phonenumber(obj,value)
            if ~isempty(value) && ~ischar(value)
                error('phone number is expected to be a string')
            end
            obj.phonenumber=value;
        end
        function dispList(node)
            while ~isempty(node)
                disp(node);
                node = node.next;
                if ~isempty(node)
                    fprintf('|------------------------|\n');
                end
            end
        end
        function name = nameToCompare(obj)
            name = [obj.lastname ' ' obj.firstname ' ' ...
                obj.middlename];
        end
    end
    methods (Static)
        function a = strgt(s1,s2)
            % a == 1 when s1 > s2
            % a == 0 otherwise
            a = 0;
            s1 = upper(s1);
            s2 = upper(s2);
            for ii = 1 : min(length(s1),length(s2))
                if s1(ii) > s2(ii)
                    a = 1;
                    return;
                elseif s1(ii) < s2(ii)
                    return;
                end
            end
            if length(s1) > length(s2)
                a = 1;
            end
        end
        function a = gt(o1,o2)
            a = contact.strgt(o1.nameToCompare(), ...
                o2.nameToCompare());
        end
        function a = lt(o1,o2)
            a = contact.strgt(o2.nameToCompare(), ...
                o1.nameToCompare());
        end
    end
end






