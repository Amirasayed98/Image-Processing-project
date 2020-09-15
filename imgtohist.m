function [img] = imgtohist( img )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here

c = zeros(256,1);
for i = 1:256
    c(i) = sum(sum((img==i)));
   
    
end
 figure, bar(c);
end

