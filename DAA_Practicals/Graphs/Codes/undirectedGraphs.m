%% Undirected Graphs

%% method 1
s = [1 2]; % start nodes
t = [2 3]; % end nodes
G = graph(s,t);  % create a graph
plot(G); %% plot the graph
title('Graph'); % add a title


%% method 2
G = graph([1,2],[2,3]); % edges 1-2 and 2-3
plot(G);
title('undirected Graph');