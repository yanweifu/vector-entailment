function [ hyperParams, options, wordMap, relationMap ] = SNLI(expName, dataflag, embDim, dim, topDepth, penult, lambda, composition, bottomDropout, topDropout, collo, relu, dp)
% Configuration for experiments involving the SemEval SICK challenge and ImageFlickr 30k. 

[hyperParams, options] = Defaults();

% Generate an experiment name that includes all of the hyperparameter values that
% are being tuned.
hyperParams.name = [expName, '-', dataflag, '-l', num2str(lambda), '-dim', num2str(dim),...
    '-ed', num2str(embDim), '-td', num2str(topDepth),...
    '-pen', num2str(penult), '-do', num2str(bottomDropout), '-', num2str(topDropout), '-co', num2str(collo),...
    '-comp', num2str(composition), ...
    '-dp', num2str(dp), '-relu', num2str(relu)];

if relu
  hyperParams.classNL = @LReLU;
  hyperParams.classNLDeriv = @LReLUDeriv;
end

hyperParams.parensInSequences = 0;

hyperParams.dataPortion = dp;

% The dimensionality of the word/phrase vectors. Currently fixed at 25 to match
% the GloVe vectors.
hyperParams.dim = dim;
hyperParams.embeddingDim = embDim;

if collo == 1
    hyperParams.vocabPath = ['/scr/nlp/data/glove_vecs/glove.6B.' num2str(embDim) 'd.txt'];
elseif collo == 2
    hyperParams.vocabPath = '/u/nlp/data/senna_embeddings/combined.txt';  
    assert(embDim == 50, 'The Collobert and Weston-sourced vectors only come in dim 50.'); 
elseif collo == 3
    hyperParams.vocabPath = ['/scr/nlp/data/glove_vecs/glove.840B.' num2str(embDim) 'd.txt'];
end

% The number of embedding transform layers. topDepth > 0 means NN layers will be
% added above the embedding matrix. This is likely to only be useful when
% learnWords is false, and so the embeddings do not exist in the same space
% the rest of the constituents do.
hyperParams.embeddingTransformDepth = 1;


% The number of comparison layers. topDepth > 1 means NN layers will be
% added between the RNTN composition layer and the softmax layer.
hyperParams.topDepth = topDepth;

% If set, store embedding matrix gradients as spare matrices, and only apply regularization
% to the parameters that are in use at each step.
hyperParams.fastEmbed = true; % If we train words, go ahead and use it.

% The dimensionality of the comparison layer(s).
hyperParams.penultDim = penult;

% Regularization coefficient.
hyperParams.lambda = lambda; % 0.002 works?;

% Apply dropout to the top feature vector of each tree, preserving activations
% with this probability. If this is set to 1, dropout is effectively not used.
hyperParams.bottomDropout = bottomDropout;
hyperParams.topDropout = topDropout;

if composition < 0
  hyperParams.useSumming = 1;
  hyperParams.useThirdOrder = 0;
  hyperParams.useThirdOrderComparison = 0;
elseif composition < 2
  hyperParams.useThirdOrder = composition;
  hyperParams.useThirdOrderComparison = composition;
elseif composition == 2
  hyperParams.lstm = 1;
  hyperParams.useTrees = 0;
  hyperParams.eyeScale = 0;
  hyperParams.useThirdOrder = 0;
  hyperParams.useThirdOrderComparison = 0;
  hyperParams.parensInSequences = 0;
elseif composition == 3
  hyperParams.lstm = 0;
  hyperParams.useTrees = 0;
  hyperParams.eyeScale = 0;
  hyperParams.useThirdOrder = 0;
  hyperParams.useThirdOrderComparison = 0;
  hyperParams.parensInSequences = 0;
end

hyperParams.loadWords = true;
hyperParams.trainWords = true;

hyperParams.fragmentData = false;

% How many examples to run before taking a parameter update step on the accumulated gradients.
options.miniBatchSize = 32;

options.updateFn = @AdaDeltaUpdate;

if findstr(dataflag, 'snli-temp-sick')
    wordMap = InitializeMaps('./sick_data/sick-snli_dev_words.txt');
    hyperParams.vocabName = 'ssdev'; 

    hyperParams.numRelations = [3, 3];

    hyperParams.relations = {{'entailment', 'contradiction', 'neutral'},
                             {'ENTAILMENT', 'CONTRADICTION', 'NEUTRAL'}};
    relationMap = cell(2, 1);
    relationMap{1} = containers.Map(hyperParams.relations{1}, 1:length(hyperParams.relations{1}));
    relationMap{2} = containers.Map(hyperParams.relations{2}, 1:length(hyperParams.relations{2}));

    hyperParams.trainFilenames = {'../data/phase1_results_parsed_temptrain.txt', ...
                                  './sick_data/SICK_train_parsed.txt'};    
    hyperParams.splitFilenames = {};    
    hyperParams.testFilenames = {'../data/phase1_results_parsed_tempdev.txt', ...
                                 './sick_data/SICK_trial_parsed.txt'};

    hyperParams.relationIndices = [1, 2; 1, 2; 1, 2];
    hyperParams.testRelationIndices = [1, 2];
    hyperParams.trainingMultipliers = [1; 6];
end

end
