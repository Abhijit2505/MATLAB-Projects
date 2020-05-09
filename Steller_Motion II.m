load starData

[sHa,idx] = min(spectra);
lambdaHa = lambda(idx);
z = lambdaHa/656.28 - 1;
speed = z*299792.458

for c = 1:7
    s = spectra(:,c);

    if speed(c) <= 0
        loglog(lambda,s,"--")
    else
       loglog(lambda,s,"LineWidth",3) 
    end
    hold on
end
hold off

legend(starnames)

movaway = starnames(speed > 0) 
