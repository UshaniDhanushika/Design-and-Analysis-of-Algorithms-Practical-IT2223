% 1.Write the MATLAB code to import a graph.Use the following source and
% destination data
% 2.Using the imported data, draw the graph
% 3. Writhe the MATLAB code to find and display the subgraph for the given
% nodes
% 4. Identify and display the adjacent vertices for each node 
% 5. Label the edges of the graph
% 6. Label the nodes of the graph
% 7. Writhe the MATLAB code to color the graph(graph coloring)
% 8. Writhe the MATLAB code to find the shortest path from node 1 to node 5


% source = [1,1,2,3,4];% 1.Write the MATLAB code to import a graph.Use the following source and
% destination data
% 2.Using the imported data, draw the graph
% 3. Writhe the MATLAB code to find and display the subgraph for the given
% nodes
% 4. Identify and display the adjacent vertices for each node 
% 5. Label the edges of the graph
% 6. Label the nodes of the graph
% 7. Writhe the MATLAB code to color the graph(graph coloring)
% 8. Writhe the MATLAB code to find the shortest path from node 1 to node 5


% source = [1,1,2,3,4];
% destination = [2,3,4,4,5];


source = [1, 1, 2, 3, 4];
destination = [2, 3, 4, 4, 5];
G = graph(source, destination);

figure;
plot_G = plot(G);
title('Original Graph');

nodes_of_interest = [2, 3, 4];
G_sub = subgraph(G, nodes_of_interest);

figure;
plot(G_sub);
title('Subgraph with Nodes 2, 3, 4');

disp('Adjacent vertices for each node:');
adjMatrix = adjacency(G); 
for i = 1:numnodes(G)
    adjNodes = find(adjMatrix(i, :) > 0); 
    fprintf('Node %d is adjacent to: %s\n', i, num2str(adjNodes));
end

figure;
plot_G = plot(G);
labelnode(plot_G, 1:numnodes(G), 1:numnodes(G)); % Label nodes
labeledge(plot_G, G.Edges.EndNodes(:,1), G.Edges.EndNodes(:,2), 1:numedges(G)); 
title('Graph with Node and Edge Labels');

node_colors = randi([1 5], numnodes(G), 1); % Random color IDs from 1 to 5

figure;
plot_G = plot(G, 'NodeCData', node_colors, 'MarkerSize', 7, 'EdgeColor', 'k');
labelnode(plot_G, 1:numnodes(G), 1:numnodes(G)); % Node labels
colorbar; 
title('Graph Coloring');

[spath, spath_length] = shortestpath(G, 1, 5);

fprintf('Shortest path from node 1 to node 5: %s\n', num2str(spath));
fprintf('Length of the shortest path: %d\n', spath_length);

highlight(plot_G, spath, 'EdgeColor', 'r', 'LineWidth', 2);
title('Graph Coloring with Shortest Path Highlighted');
% destination = [2,3,4,4,5];


source = [1, 1, 2, 3, 4];
destination = [2, 3, 4, 4, 5];
G = graph(source, destination);

figure;
plot_G = plot(G);
title('Original Graph');

nodes_of_interest = [2, 3, 4];
G_sub = subgraph(G, nodes_of_interest);

figure;
plot(G_sub);
title('Subgraph with Nodes 2, 3, 4');

disp('Adjacent vertices for each node:');
adjMatrix = adjacency(G); 
for i = 1:numnodes(G)
    adjNodes = find(adjMatrix(i, :) > 0); 
    fprintf('Node %d is adjacent to: %s\n', i, num2str(adjNodes));
end

figure;
plot_G = plot(G);
labelnode(plot_G, 1:numnodes(G), 1:numnodes(G)); % Label nodes
labeledge(plot_G, G.Edges.EndNodes(:,1), G.Edges.EndNodes(:,2), 1:numedges(G)); 
title('Graph with Node and Edge Labels');

node_colors = randi([1 5], numnodes(G), 1); % Random color IDs from 1 to 5

figure;
plot_G = plot(G, 'NodeCData', node_colors, 'MarkerSize', 7, 'EdgeColor', 'k');
labelnode(plot_G, 1:numnodes(G), 1:numnodes(G)); % Node labels
colorbar; 
title('Graph Coloring');

[spath, spath_length] = shortestpath(G, 1, 5);

fprintf('Shortest path from node 1 to node 5: %s\n', num2str(spath));
fprintf('Length of the shortest path: %d\n', spath_length);

highlight(plot_G, spath, 'EdgeColor', 'r', 'LineWidth', 2);
title('Graph Coloring with Shortest Path Highlighted');