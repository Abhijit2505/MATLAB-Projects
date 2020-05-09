% loading the "electricity.mat" file that holds the required data
load electricity.mat
usage

% replacing the Nan value
usage(2,end) = 2.74

% residential data is stored in first column, commercial in second and industrial in third, getting them out
res = usage(:,1)
comm = usage(:,2)
ind = usage(:,3)

% creating a vector to hold the years from 1991 to 2013
yrs = [1991:2013]

% creating a plot with all three columns
hold on
plot(yrs,res,"b--")
plot(yrs,comm,"k:")
plot(yrs,ind,"m-.")

% giving a title and legends
title("July Electricity Usage")
legend("res","comm","ind")
