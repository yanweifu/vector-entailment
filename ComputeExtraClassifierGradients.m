% Want to distribute this code? Have other questions? -> sbowman@stanford.edu
function [matrixStackGradients, ...
          biasStackGradients, deltaDown] = ...
          ComputeExtraClassifierGradients(matrixStack, ...
              deltaDown, inputs, innerOutputs, classNLDeriv)
% Compute gradients for the middle NN layers of the classifier. This will 
% only do non-trivial work if STACKSIZE is greater than 0.

INDIM = size(matrixStack, 2);
OUTDIM = size(matrixStack, 1);
STACKSIZE = size(matrixStack, 3);

matrixStackGradients = zeros(OUTDIM, INDIM, STACKSIZE);
biasStackGradients = zeros(OUTDIM, STACKSIZE);

% We only support different input and output dimensionalities 
% if there is only one layer. Otherwise, the storage used here
% won't work.
assert(INDIM == OUTDIM || STACKSIZE < 2, 'Inconsistent dimensions.');

for layer = (STACKSIZE):-1:1
    NLDeriv = classNLDeriv(innerOutputs(:, layer));

    % Calculate matrix gradients
    for i = 1:OUTDIM
        matrixStackGradients(i, :, layer) = (NLDeriv(i) * deltaDown(i)) ...
            .* inputs(:, layer);
    end

    % Calculate bias gradients
    biasStackGradients(:, layer) = deltaDown;

    % Calculate deltas to pass down
    thirdTerm = matrixStack(:, :, layer)';
    deltaDown = (thirdTerm * (biasStackGradients(:, layer) .* NLDeriv));
end
    
end