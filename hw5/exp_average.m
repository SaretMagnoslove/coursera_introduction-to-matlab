function out = exp_average(in,b)
persistent c_out c_b 

switch nargin
    case 1
       if isempty(c_b)
           b = 0.1;
       else
           b = c_b;
       end
       if isempty (c_out)
           c_out = in;
       else
           c_out = b*in+(1-b)*c_out;
       end
    case 2
        c_b = b;
        c_out = in;
end
out = c_out;
end



        
           
           
        
            

    

