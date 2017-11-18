function mint = bridge(left)

mint = RecurseBridge(left,[]);

end

function mint = RecurseBridge(left, right)

mint = max(left) * length(left) * 2;
for ii = 1 : length(left)
    for jj = ii+1 : length(left)
        t = max(left(ii),left(jj));
        if length(left) > 2
            r = [right left(ii) left(jj)];
            l = [left(1:ii-1) left(ii+1:jj-1) left(jj+1:end)];
            [m mi] = min(r); 
            r = [r(1:mi-1) r(mi+1:end)];
            l = [l m];
            t = t + m + RecurseBridge(l,r);
        end
        if t < mint
            mint = t;
        end
    end
end
        
end            
   