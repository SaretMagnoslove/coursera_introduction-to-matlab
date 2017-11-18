function n = between(a,u,v)
n = sum((a<=v&a>=u)|(a>=v&a<=u));
end