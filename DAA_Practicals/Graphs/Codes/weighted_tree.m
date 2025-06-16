% Directed Weighted tree

nodes = {'A', 'B', 'C', 'D', 'E', 'F', 'G'};

% Define Edges using source and target nodes

s = [1 1 2 2 3 3]; % From: A->B, A->C, B->D, B->E
t = [2 3 4 5 6 7];

% Define edges weightes

weights = [5 3 8 6 7 2];

% Create a directed graph
G = digraph(s, t, weights, nodes);

% plot the tree

plot(G, 'Layout', 'layered', 'Direction', 'down','EdgeLabel', G.Edges.Weight);
title('Weighted tree with 3 nodes');
