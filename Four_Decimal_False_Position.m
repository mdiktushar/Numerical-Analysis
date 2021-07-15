% Name: Md. Imrul Kayes
% ID: 1106022
% CSE-312
% L-4 T-2 
%%
clc,clear
format long
%f(x) = xe^(x) - 3

%% Finding the range of a and b
for i = 0:.1:50
    a = f(i);
    b = f(i+1);
    if a<0 && b>0
        a = i;
        b = i+1;
        break
    end
end

%% Applying False Position Methord
for i = 1:20
    A = f(a);
    B = f(b);
    Xi = ((a*B)-(b*A))/(B-A);
    
    X = f(Xi);
    
    if X<0 
        a = Xi;
    else
        b = Xi;
    end
end

%% Result
fprintf('f(x) = xe^(x) - 3\n');
X = sprintf('Four Decimal using Fals Position: %f %f.\n',a,b);
fprintf(X);

fprintf("Name: Md. Imrul kayes\nID: 1106022\nThank You.\n")

%% Implementing Function
function n = f(i)
    n = i*exp(i) - 3;
end

