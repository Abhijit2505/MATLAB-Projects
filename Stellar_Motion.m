load starData
nObs = size(spectra,1)
lambdaStart = 630.02
lambdaDelta = 0.14

lambdaEnd = lambdaStart + (nObs-1)*lambdaDelta
lambda = (lambdaStart:lambdaDelta:lambdaEnd)'

s = spectra(:,2)

loglog(lambda,s,".-")
xlabel("Wavelength")
ylabel("Intensity")

[sHa,idx] = min(s)
lambdaHa = lambda(idx)

hold on
loglog(lambdaHa,sHa,"rs","MarkerSize",8)
hold off

z = lambdaHa/656.28 - 1
speed = z*299792.458
