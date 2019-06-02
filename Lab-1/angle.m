function [delta] = angle(AB,BC)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
delta=acos((dot(AB, BC)/(norm(AB)*norm(BC))));
end

