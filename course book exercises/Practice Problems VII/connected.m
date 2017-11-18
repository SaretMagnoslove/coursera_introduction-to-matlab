function [isConnected] = connected(A)
 g = digraph(A);
 bins = conncomp(g);
 isConnected = all(bins == 1);
end

            
        
        