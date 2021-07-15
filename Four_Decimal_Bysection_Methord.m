% Name: Md. Imrul Kayes
% ID: 1106022
% CSE-312
% L-4 T-2 
%%

clc,clear
format long

%% f(x) = x^3-x-11;

%% Finding the range of a and b
for i = 0:20
    a = f(i);
    b = f(i+1);
    if a<0 && b>0
        a = i;
        b = i+1;
        break
    end
end

%% Applying Bysection Methord
for i = 1:16
    x1 = (a+b)/2;
    x = f(x1);
    if x>0
        b = x1;
    else
        a = x1;
    end    
end

%% Result
fprintf('f(x) = x^3-x-11\n');
X = sprintf('Four Decimal using Bysection Methord: %f %f.\n',a,b);
fprintf(X);

fprintf("Name: Md. Imrul kayes\nID: 1106022\nThank You.\n")

%%%% Implementing Function
function n = f(i)
    n = (i^3)-i-11;
end

