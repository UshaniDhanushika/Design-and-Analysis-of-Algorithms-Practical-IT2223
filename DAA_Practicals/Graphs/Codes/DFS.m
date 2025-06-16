function visited = dfs(startNode, adjacencyMatrix, names)
    numNodes = size(adjacencyMatrix,1);
    visited = false(1,numNodes);

    fprintf("DFS Traversal Order: ");

    visited = dfsRecursive(startNode, adjacencyMatrix, visited, names);
end

function visited = dfsRecursive(node, adjacencyMatrix, visited, names)
    visited(node) = true;

    fprintf("%s ", names(node));  % print node name

    adjacentNodes = find(adjacencyMatrix(node,:) > 0);

    for i = 1:length(adjacentNodes)
        adjacentNode = adjacentNodes(i);
        if ~visited(adjacentNode)
            visited = dfsRecursive(adjacentNode, adjacencyMatrix, visited, names);
        end
    end
end

% ===== Main Code =====

s = [1 2 2 3];
t = [2 3 4 5];
weights = [3 7 8 4];
names = ['A','B','C','D','E'];

numNodes = length(names);
adjacencyMatrix = zeros(numNodes);

for i = 1:length(s)
    adjacencyMatrix(s(i),t(i)) = weights(i);
    adjacencyMatrix(t(i),s(i)) = weights(i);  % undirected
end

dfs(1, adjacencyMatrix, names);
