function visited = bfs(startNode, adjacencyMatrix, names)
    numNodes = size(adjacencyMatrix,1);
    visited = false(1, numNodes);
    queue = [];

    fprintf("BFS Traversal Order: ");

    visited(startNode) = true;
    queue(end + 1) = startNode;

    while ~isempty(queue)
        node = queue(1);
        queue(1) = [];  % dequeue

        fprintf("%s ", names(node));

        adjacentNodes = find(adjacencyMatrix(node, :) > 0);

        for i = 1:length(adjacentNodes)
            adjacentNode = adjacentNodes(i);
            if ~visited(adjacentNode)
                visited(adjacentNode) = true;
                queue(end + 1) = adjacentNode;  % enqueue
            end
        end
    end
end



s = [1 2 2 3];
t = [2 3 4 5];
weights = [3 7 8 4];
names = ['A','B','C','D','E'];

numNodes = length(names);
adjacencyMatrix = zeros(numNodes);

for i = 1:length(s)
    adjacencyMatrix(s(i), t(i)) = weights(i);
    adjacencyMatrix(t(i), s(i)) = weights(i);  % undirected
end

bfs(1, adjacencyMatrix, names);
