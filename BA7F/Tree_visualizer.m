% Define the edges as a cell array of strings
edges = {
    'ATTGCGAC->ATAGCCAC:2',
    'ATAGACAA->ATAGCCAC:2',
    'ATAGACAA->ATGGACTA:2',
    'ATGGACGA->ATGGACTA:1',
    'CTGCGCTG->ATGGACTA:4',
    'ATGGACTA->CTGCGCTG:4',
    'ATGGACTA->ATGGACGA:1',
    'ATGGACTA->ATAGACAA:2',
    'ATAGCCAC->CAAATCCC:5',
    'ATAGCCAC->ATTGCGAC:2',
    'ATAGCCAC->ATAGACAA:2',
    'CAAATCCC->ATAGCCAC:5'
};

% Create a directed graph
G = digraph();

% Parse each edge and add it to the graph
for i = 1:numel(edges)
    edge = edges{i};
    parts = strsplit(edge, {'->', ':'});
    source_node = parts{1};
    target_node = parts{2};
    weight = str2double(parts{3});
    
    % Add the edge to the graph
    G = addedge(G, source_node, target_node, weight);
end

% Visualize the graph with edge labels
figure;
plot(G, 'Layout', 'force', 'EdgeLabel', G.Edges.Weight);
title('Rosalind');

%% 
% Define the edges as a cell array of strings
edges = {
    'ATTGCGAC->ATAGACAC:3',
'ATAGACAA->ATAGACAC:1',
'ATAGACAA->ATGGACAA:1',
'ATGGACGA->ATGGACAA:1',
'CTGCGCTG->ATGGACAA:5',
'ATGGACAA->CTGCGCTG:5',
'ATGGACAA->ATGGACGA:1',
'ATGGACAA->ATAGACAA:1',
'ATAGACAC->CAAATCCC:5',
'ATAGACAC->ATTGCGAC:3',
'ATAGACAC->ATAGACAA:1',
'CAAATCCC->ATAGACAC:5'
};

% Create a directed graph
G = digraph();

% Parse each edge and add it to the graph
for i = 1:numel(edges)
    edge = edges{i};
    parts = strsplit(edge, {'->', ':'});
    source_node = parts{1};
    target_node = parts{2};
    weight = str2double(parts{3});
    
    % Add the edge to the graph
    G = addedge(G, source_node, target_node, weight);
end

% Visualize the graph with edge labels
figure;
plot(G, 'Layout', 'force', 'EdgeLabel', G.Edges.Weight);
title({'Small parsimony function'});
