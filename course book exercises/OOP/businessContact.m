classdef businessContact < contact
    properties
        companyname
        fax
    end
    methods
        function obj = businessContact(cname, contactobj, f)
            if nargin > 0
                obj.companyname = cname;
            end
            if nargin > 1 && ~isempty(contactobj)
                obj.lastname = contactobj.lastname;
                obj.firstname = contactobj.firstname;
                obj.middlename = contactobj.middlename;
                obj.phonenumber = contactobj.phonenumber;
            end
            if nargin > 2
                if ~ischar(f)
                    error('string expected for fax number');
                end
                obj.fax = f;
            end
        end
        function obj = set.fax(obj,value)
            if ~isempty(value) && ~ischar(value)
                error('string expected for fax number');
            end
            obj.fax = value;
        end
        function disp(obj)
            if isscalar(obj)
                fprintf(' Company: %s\n',obj.companyname);
                if(~isempty(obj.lastname))
                    fprintf(' Contact: %s, %s %s\n', ...
                        obj.lastname, ...
                        obj.firstname, ...
                        obj.middlename);
                end
                fprintf(' Tel: %s\n',obj.phonenumber);
                if ~isempty(obj.fax)
                    fprintf(' Fax: %s\n',obj.fax);
                end
            else
                fprintf('array of businessContacts\n');
            end
        end
        function name = nameToCompare(obj)
            name = [obj.companyname ' ' obj.lastname ' ' ...
                obj.firstname ' ' obj.middlename];
        end
    end
end