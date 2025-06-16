% Directed Unweighted tree

nodes = {'A', 'B', 'C', 'D', 'E', 'F', 'G'};

% Define Edges using source and target nodes

s = [1 1 2 2 3 3]; % From: A->B, A->C, B->D, B->E
t = [2 3 4 5 6 7];

% Create a directed graph
G = digraph(s, t, [], nodes);

% plot the tree

plot(G, 'Layout', 'layered', 'Direction', 'down');
title('Simple tree with 3 nodes');
