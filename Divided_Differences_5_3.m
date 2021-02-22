function [ ret ] = dividedifefrences ()
    clc
    clear
    x = [0,1,2,3,4,5];
    y = [0.100,0.065,0.042,0.029,0.022,0.020]
    d(:,1) = y;
    b0 = d(1,1);
    n = length(x);
    k = 2;
    for i = 2 : n 
    	for j = 2 : k
    		d(i,j) = (d(i,j-1)- d(i-1,j-1))/(x(i)-x(i-j+1));
    	end
    	k = k +1;
    end
    disp ('those are the divided diferences: ')
    disp (d)
    
    
    for g = 2 : n
    	b(g-1) = d(g,g);
    end
    xa = input ('Type the number to evaluate: [For finish type "no"]:');
    while xa ~= 'no'
    	p = d(1,1);
    		for c = 1:n-1
    		z = 1;
    		for m = 1:c
    			z = z*(xa - x(m));
    		end
    		p = p + z*b(c);
    	end
    	fprintf('y(%g)= %g \n',xa,p)
    	xa = input ('Type the number to evaluate [For finish type "no"]:');
    end
endfunction