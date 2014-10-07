% Want to distribute this code? Have other questions? -> sbowman@stanford.edu
function TrainModel(dataflag, pretrainingFilename, expName, mbs, dim, lr, lambda, tot, sig)

echo "cd quant; mbs = [16]; name=['test-sick-only-',num2str(mbs)]; disp(name); TrainModel('sick-only', '', name, mbs, 25, 0.01, 0.001, 1);" | /afs/cs/software/bin/matlab_r2012b

echo "cd quant; mbs = [16]; name=['sick-only-',num2str(mbs)]; disp(name); TrainModel('sick-only', '', name, mbs, 25, 0.01, 0.001, 1, 0);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; mbs = [16]; name=['sick-only-2']; disp(name); TrainModel('sick-only', '', name, mbs, 25, 0.01, 0.001, 1, 0);" | /afs/cs/software/bin/matlab_r2012b

echo "cd quant; mbs = [16]; name=['sick-plus-',num2str(mbs)]; disp(name); TrainModel('sick-plus', '', name, mbs, 25, 0.01, 0.001, 1, 0);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; mbs = [16]; name=['sick-plus-full-',num2str(mbs)]; disp(name); TrainModel('sick-plus', '', name, mbs, 25, 0.01, 0.001, 1, 1);" | /afs/cs/software/bin/matlab_r2012b

echo "cd quant; mbs = [16]; name=['sick-plus-clean-',num2str(mbs)]; disp(name); TrainModel('sick-plus', '', name, mbs, 25, 0.01, 0.01, 1, 1);" | /afs/cs/software/bin/matlab_r2012b

echo "cd quant; lambda = 0.01; lr = 0.1; name=['sick-plus-clean-', num2str(lr), '-', num2str(lambda)]; disp(name); TrainModel('sick-plus', '', name, 48, 25, lr, lambda, 1, 1);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.001; lr = 0.1; name=['sick-plus-clean-', num2str(lr), '-', num2str(lambda)]; disp(name); TrainModel('sick-plus', '', name, 48, 25, lr, lambda, 1, 1);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.00001; lr = 0.1; name=['sick-plus-clean-', num2str(lr), '-', num2str(lambda)]; disp(name); TrainModel('sick-plus', '', name, 48, 25, lr, lambda, 1, 1);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.0001; lr = 0.01; name=['sick-plus-clean-', num2str(lr), '-', num2str(lambda)]; disp(name); TrainModel('sick-plus', '', name, 48, 25, lr, lambda, 1, 1);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.00001; lr = 0.01; name=['sick-plus-clean-', num2str(lr), '-', num2str(lambda)]; disp(name); TrainModel('sick-plus', '', name, 48, 25, lr, lambda, 1, 1);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.001; lr = 0.001; name=['sick-plus-clean-', num2str(lr), '-', num2str(lambda)]; disp(name); TrainModel('sick-plus', '', name, 48, 25, lr, lambda, 1, 1);" | /afs/cs/software/bin/matlab_r2012b

echo "cd quant; lambda = 0.001; lr = 0.001; name=['word-relations-', num2str(lr), '-', num2str(lambda)]; disp(name); TrainModel('word-relations', '', name, 48, 25, lr, lambda, 1, 1);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.001; lr = 0.0001; name=['word-relations-', num2str(lr), '-', num2str(lambda)]; disp(name); TrainModel('word-relations', '', name, 48, 25, lr, lambda, 1, 1);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.0001; lr = 0.01; name=['word-relations-', num2str(lr), '-', num2str(lambda)]; disp(name); TrainModel('word-relations', '', name, 48, 25, lr, lambda, 1, 1);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.0001; lr = 0.001; name=['word-relations-', num2str(lr), '-', num2str(lambda)]; disp(name); TrainModel('word-relations', '', name, 48, 25, lr, lambda, 1, 1);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.00001; lr = 0.01; name=['word-relations-', num2str(lr), '-', num2str(lambda)]; disp(name); TrainModel('word-relations', '', name, 48, 25, lr, lambda, 1, 1);" | /afs/cs/software/bin/matlab_r2012b

echo "cd quant; lambda = 0.0001; lr = 0.01; name=['wr-frozen-', num2str(lr), '-', num2str(lambda)]; disp(name); TrainModel('word-relations', '', name, 48, 25, lr, lambda, 1, 1);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.0001; lr = 0.1; name=['wr-frozen-', num2str(lr), '-', num2str(lambda)]; disp(name); TrainModel('word-relations', '', name, 48, 25, lr, lambda, 1, 1);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.00003; lr = 0.1; name=['wr-frozen-', num2str(lr), '-', num2str(lambda)]; disp(name); TrainModel('word-relations', '', name, 48, 25, lr, lambda, 1, 1);" | /afs/cs/software/bin/matlab_r2012b

echo "cd quant; lambda = 0.00003; lr = 0.1; name=['gradcheck1-', num2str(lr), '-', num2str(lambda)]; disp(name); TrainModel('gradcheck', '', name, 48, 25, 2, lr, lambda, 1, 0);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.003; lr = 0.1; name=['gradcheck2-', num2str(lr), '-', num2str(lambda)]; disp(name); TrainModel('gradcheck', '', name, 48, 25, 2, lr, lambda, 1, 1);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.00003; lr = 0.1; name=['gradcheck3-', num2str(lr), '-', num2str(lambda)]; disp(name); TrainModel('gradcheck', '', name, 48, 25, 2, lr, lambda, 1, 2);" | /afs/cs/software/bin/matlab_r2012b

echo "cd quant; lambda = 0.0001; lr = 0.01; name=['wr-frozen-', num2str(lr), '-', num2str(lambda)]; disp(name); TrainModel('word-relations', '', name, 48, 25, lr, lambda, 1, 1);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.0001; lr = 0.1; name=['wr-frozen-', num2str(lr), '-', num2str(lambda)]; disp(name); TrainModel('word-relations', '', name, 48, 25, lr, lambda, 1, 1);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.00003; lr = 0.1; name=['wr-frozen-', num2str(lr), '-', num2str(lambda)]; disp(name); TrainModel('word-relations', '', name, 48, 25, lr, lambda, 1, 1);" | /afs/cs/software/bin/matlab_r2012b


echo "cd quant; lambda = 0.0001; lr = 0.03; ed = 0; name=['wr-tfrozen-', num2str(lr), '-', num2str(lambda), '-', num2str(ed)]; disp(name); TrainModel('word-relations', '', name, 48, 25, lr, lambda, 1, ed);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.0001; lr = 0.1; ed = 0; name=['wr-tfrozen-', num2str(lr), '-', num2str(lambda), '-', num2str(ed)]; disp(name); TrainModel('word-relations', '', name, 48, 25, lr, lambda, 1, ed);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.0001; lr = 0.03; ed = 1; name=['wr-tfrozen-', num2str(lr), '-', num2str(lambda), '-', num2str(ed)]; disp(name); TrainModel('word-relations', '', name, 48, 25, lr, lambda, 1, ed);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.0001; lr = 0.1; ed = 1; name=['wr-tfrozen-', num2str(lr), '-', num2str(lambda), '-', num2str(ed)]; disp(name); TrainModel('word-relations', '', name, 48, 25, lr, lambda, 1, ed);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.0001; lr = 0.03; ed = 2; name=['wr-tfrozen-', num2str(lr), '-', num2str(lambda), '-', num2str(ed)]; disp(name); TrainModel('word-relations', '', name, 48, 25, lr, lambda, 1, ed);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.0001; lr = 0.1; ed = 2; name=['wr-tfrozen-', num2str(lr), '-', num2str(lambda), '-', num2str(ed)]; disp(name); TrainModel('word-relations', '', name, 48, 25, lr, lambda, 1, ed);" | /afs/cs/software/bin/matlab_r2012b

echo "cd quant; lambda = 0.000001; lr = 0.01; mbs = 16; trainwords = true; ed = 0; name=['sick-plus-clean-', num2str(lr), '-', num2str(lambda), '-', num2str(mbs), '-', num2str(ed), '-', num2str(trainwords)]; disp(name); TrainModel('sick-plus', '', name, mbs, 25, lr, lambda, 1, ed, trainwords);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.000001; lr = 0.1; mbs = 16; trainwords = true; ed = 0; name=['sick-plus-clean-', num2str(lr), '-', num2str(lambda), '-', num2str(mbs), '-', num2str(ed), '-', num2str(trainwords)]; disp(name); TrainModel('sick-plus', '', name, mbs, 25, lr, lambda, 1, ed, trainwords);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.000001; lr = 0.01; mbs = 16; trainwords = true; ed = 1; name=['sick-plus-clean-', num2str(lr), '-', num2str(lambda), '-', num2str(mbs), '-', num2str(ed), '-', num2str(trainwords)]; disp(name); TrainModel('sick-plus', '', name, mbs, 25, lr, lambda, 1, ed, trainwords);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.000001; lr = 0.1; mbs = 16; trainwords = true; ed = 1; name=['sick-plus-clean-', num2str(lr), '-', num2str(lambda), '-', num2str(mbs), '-', num2str(ed), '-', num2str(trainwords)]; disp(name); TrainModel('sick-plus', '', name, mbs, 25, lr, lambda, 1, ed, trainwords);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.000001; lr = 0.01; mbs = 16; trainwords = true; ed = 2; name=['sick-plus-clean-', num2str(lr), '-', num2str(lambda), '-', num2str(mbs), '-', num2str(ed), '-', num2str(trainwords)]; disp(name); TrainModel('sick-plus', '', name, mbs, 25, lr, lambda, 1, ed, trainwords);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.000001; lr = 0.1; mbs = 16; trainwords = true; ed = 2; name=['sick-plus-clean-', num2str(lr), '-', num2str(lambda), '-', num2str(mbs), '-', num2str(ed), '-', num2str(trainwords)]; disp(name); TrainModel('sick-plus', '', name, mbs, 25, lr, lambda, 1, ed, trainwords);" | /afs/cs/software/bin/matlab_r2012b

echo "cd quant; lambda = 0.0005; lr = 0.1; ed = 0; mbs = 16; name=['wr-tfrozen-', num2str(mbs), '-', num2str(lambda), '-', num2str(ed)]; disp(name); TrainModel('word-relations', '', name, mbs, 25, lr, lambda, 1, ed);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.0005; lr = 0.1; ed = 1; mbs = 16; name=['wr-tfrozen-', num2str(mbs), '-', num2str(lambda), '-', num2str(ed)]; disp(name); TrainModel('word-relations', '', name, mbs, 25, lr, lambda, 1, ed);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.005; lr = 0.1; ed = 0; mbs = 16; name=['wr-tfrozen-', num2str(mbs), '-', num2str(lambda), '-', num2str(ed)]; disp(name); TrainModel('word-relations', '', name, mbs, 25, lr, lambda, 1, ed);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.005; lr = 0.1; ed = 1; mbs = 16; name=['wr-tfrozen-', num2str(mbs), '-', num2str(lambda), '-', num2str(ed)]; disp(name); TrainModel('word-relations', '', name, mbs, 25, lr, lambda, 1, ed);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.0005; lr = 0.1; ed = 1; mbs = 64; name=['wr-tfrozen-', num2str(mbs), '-', num2str(lambda), '-', num2str(ed)]; disp(name); TrainModel('word-relations', '', name, mbs, 25, lr, lambda, 1, ed);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.005; lr = 0.1; ed = 0; mbs = 64; name=['wr-tfrozen-', num2str(mbs), '-', num2str(lambda), '-', num2str(ed)]; disp(name); TrainModel('word-relations', '', name, mbs, 25, lr, lambda, 1, ed);" | /afs/cs/software/bin/matlab_r2012b

echo "cd quant; lambda = 0.000001; lr = 0.1; mbs = 16; trainwords = true; ed = 0; name=['sick-plus-demo-', num2str(lr), '-', num2str(lambda), '-', num2str(mbs), '-', num2str(ed), '-', num2str(trainwords)]; disp(name); TrainModel('sick-plus', '', name, mbs, 25, 80, lr, lambda, 1, ed, trainwords);" | /afs/cs/software/bin/matlab_r2012b

# TODO: Turn on word loading
# TODO: try not training words?
function TrainModel(dataflag, pretrainingFilename, expName, mbs, dim, penult, lr, lambda, tot, transDepth, trainwords)

echo "cd quant; lambda = 0.0005; ed = 0; train = 0; penult = 80, name=['wr-tfrozen-l', num2str(lambda), '-ed', num2str(ed), '-tr', num2str(train), '-pen', num2str(penult)]; disp(name); TrainModel('word-relations', '', name, 64, 25, penult, 0.1, lambda, 1, ed, train);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.001; ed = 0; train = 0; penult = 15, name=['wr-tfrozen-l', num2str(lambda), '-ed', num2str(ed), '-tr', num2str(train), '-pen', num2str(penult)]; disp(name); TrainModel('word-relations', '', name, 64, 25, penult, 0.1, lambda, 1, ed, train);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.0005; ed = 1; train = 0; penult = 80, name=['wr-tfrozen-l', num2str(lambda), '-ed', num2str(ed), '-tr', num2str(train), '-pen', num2str(penult)]; disp(name); TrainModel('word-relations', '', name, 64, 25, penult, 0.1, lambda, 1, ed, train);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.001; ed = 1; train = 0; penult = 15, name=['wr-tfrozen-l', num2str(lambda), '-ed', num2str(ed), '-tr', num2str(train), '-pen', num2str(penult)]; disp(name); TrainModel('word-relations', '', name, 64, 25, penult, 0.1, lambda, 1, ed, train);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.0005; ed = 2; train = 0; penult = 80, name=['wr-tfrozen-l', num2str(lambda), '-ed', num2str(ed), '-tr', num2str(train), '-pen', num2str(penult)]; disp(name); TrainModel('word-relations', '', name, 64, 25, penult, 0.1, lambda, 1, ed, train);" | /afs/cs/software/bin/matlab_r2012b

echo "cd quant; lambda = 0.0005; ed = 2; train = 0; penult = 15, name=['wrtest-tfrozen-l', num2str(lambda), '-ed', num2str(ed), '-tr', num2str(train), '-pen', num2str(penult)]; disp(name); TrainModel('word-relations', '', name, 64, 25, penult, 0.1, lambda, 1, ed, train);" | /afs/cs/software/bin/matlab_r2012b

echo "cd quant; lambda = 0.000001; lr = 0.01; mbs = 16; trainwords = true; ed = 0; name=['sick-plus-clean-', num2str(lr), '-', num2str(lambda), '-', num2str(mbs), '-', num2str(ed), '-', num2str(trainwords)]; disp(name); TrainModel('sick-plus', '', name, mbs, 25, lr, lambda, 1, ed, trainwords);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.000001; lr = 0.1; mbs = 16; trainwords = true; ed = 0; name=['sick-plus-clean-', num2str(lr), '-', num2str(lambda), '-', num2str(mbs), '-', num2str(ed), '-', num2str(trainwords)]; disp(name); TrainModel('sick-plus', '', name, mbs, 25, lr, lambda, 1, ed, trainwords);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.000001; lr = 0.01; mbs = 16; trainwords = true; ed = 1; name=['sick-plus-clean-', num2str(lr), '-', num2str(lambda), '-', num2str(mbs), '-', num2str(ed), '-', num2str(trainwords)]; disp(name); TrainModel('sick-plus', '', name, mbs, 25, lr, lambda, 1, ed, trainwords);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.000001; lr = 0.1; mbs = 16; trainwords = true; ed = 1; name=['sick-plus-clean-', num2str(lr), '-', num2str(lambda), '-', num2str(mbs), '-', num2str(ed), '-', num2str(trainwords)]; disp(name); TrainModel('sick-plus', '', name, mbs, 25, lr, lambda, 1, ed, trainwords);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.000001; lr = 0.01; mbs = 16; trainwords = true; ed = 2; name=['sick-plus-clean-', num2str(lr), '-', num2str(lambda), '-', num2str(mbs), '-', num2str(ed), '-', num2str(trainwords)]; disp(name); TrainModel('sick-plus', '', name, mbs, 25, lr, lambda, 1, ed, trainwords);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.000001; lr = 0.1; mbs = 16; trainwords = true; ed = 2; name=['sick-plus-clean-', num2str(lr), '-', num2str(lambda), '-', num2str(mbs), '-', num2str(ed), '-', num2str(trainwords)]; disp(name); TrainModel('sick-plus', '', name, mbs, 25, lr, lambda, 1, ed, trainwords);" | /afs/cs/software/bin/matlab_r2012b

echo "cd quant; lambda = 0.0005; ed = 0; train = 0; penult = 15, name=['sick-plus-', num2str(lambda), '-ed', num2str(ed), '-tr', num2str(train), '-pen', num2str(penult)]; disp(name); TrainModel('sick-plus', '', name, 64, 25, penult, 0.1, lambda, 1, ed, train);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.00005; ed = 0; train = 1; penult = 15, name=['sick-plus-', num2str(lambda), '-ed', num2str(ed), '-tr', num2str(train), '-pen', num2str(penult)]; disp(name); TrainModel('sick-plus', '', name, 64, 25, penult, 0.1, lambda, 1, ed, train);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.0005; ed = 1; train = 0; penult = 15, name=['sick-plus-', num2str(lambda), '-ed', num2str(ed), '-tr', num2str(train), '-pen', num2str(penult)]; disp(name); TrainModel('sick-plus', '', name, 64, 25, penult, 0.1, lambda, 1, ed, train);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.0005; ed = 1; train = 0; penult = 15, name=['sick-plus-', num2str(lambda), '-ed', num2str(ed), '-tr', num2str(train), '-pen', num2str(penult)]; disp(name); TrainModel('sick-plus', '', name, 64, 25, penult, 0.1, lambda, 1, ed, train);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.0005; ed = 2; train = 1; penult = 15, name=['sick-plus-', num2str(lambda), '-ed', num2str(ed), '-tr', num2str(train), '-pen', num2str(penult)]; disp(name); TrainModel('sick-plus', '', name, 64, 25, penult, 0.1, lambda, 1, ed, train);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.0005; ed = 2; train = 0; penult = 15, name=['sick-plus-', num2str(lambda), '-ed', num2str(ed), '-tr', num2str(train), '-pen', num2str(penult)]; disp(name); TrainModel('sick-plus', '', name, 64, 25, penult, 0.1, lambda, 1, ed, train);" | /afs/cs/software/bin/matlab_r2012b


echo "cd quant; lambda = 0.0005; ed = 0; train = 0; penult = 80, name=['wr-f-tfrozen-l', num2str(lambda), '-ed', num2str(ed), '-tr', num2str(train), '-pen', num2str(penult)]; disp(name); TrainModel('word-relations', '', name, 64, 25, penult, 0.1, lambda, 1, ed, train);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.001; ed = 0; train = 0; penult = 15, name=['wr-f-tfrozen-l', num2str(lambda), '-ed', num2str(ed), '-tr', num2str(train), '-pen', num2str(penult)]; disp(name); TrainModel('word-relations', '', name, 64, 25, penult, 0.1, lambda, 1, ed, train);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.0005; ed = 1; train = 0; penult = 80, name=['wr-f-tfrozen-l', num2str(lambda), '-ed', num2str(ed), '-tr', num2str(train), '-pen', num2str(penult)]; disp(name); TrainModel('word-relations', '', name, 64, 25, penult, 0.1, lambda, 1, ed, train);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.001; ed = 1; train = 0; penult = 15, name=['wr-f-tfrozen-l', num2str(lambda), '-ed', num2str(ed), '-tr', num2str(train), '-pen', num2str(penult)]; disp(name); TrainModel('word-relations', '', name, 64, 25, penult, 0.1, lambda, 1, ed, train);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.0005; ed = 2; train = 0; penult = 80, name=['wr-f-tfrozen-l', num2str(lambda), '-ed', num2str(ed), '-tr', num2str(train), '-pen', num2str(penult)]; disp(name); TrainModel('word-relations', '', name, 64, 25, penult, 0.1, lambda, 1, ed, train);" | /afs/cs/software/bin/matlab_r2012b

echo "cd quant; lambda = 0.0005; ed = 0; train = 0; penult = 15, name=['sick-plus-f-', num2str(lambda), '-ed', num2str(ed), '-tr', num2str(train), '-pen', num2str(penult)]; disp(name); TrainModel('sick-plus', '', name, 64, 25, penult, 0.1, lambda, 1, ed, train);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.00005; ed = 0; train = 1; penult = 15, name=['sick-plus-f-', num2str(lambda), '-ed', num2str(ed), '-tr', num2str(train), '-pen', num2str(penult)]; disp(name); TrainModel('sick-plus', '', name, 64, 25, penult, 0.1, lambda, 1, ed, train);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.0005; ed = 1; train = 0; penult = 15, name=['sick-plus-f-', num2str(lambda), '-ed', num2str(ed), '-tr', num2str(train), '-pen', num2str(penult)]; disp(name); TrainModel('sick-plus', '', name, 64, 25, penult, 0.1, lambda, 1, ed, train);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.0005; ed = 1; train = 0; penult = 15, name=['sick-plus-f-', num2str(lambda), '-ed', num2str(ed), '-tr', num2str(train), '-pen', num2str(penult)]; disp(name); TrainModel('sick-plus', '', name, 64, 25, penult, 0.1, lambda, 1, ed, train);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.0005; ed = 2; train = 1; penult = 15, name=['sick-plus-f-', num2str(lambda), '-ed', num2str(ed), '-tr', num2str(train), '-pen', num2str(penult)]; disp(name); TrainModel('sick-plus', '', name, 64, 25, penult, 0.1, lambda, 1, ed, train);" | /afs/cs/software/bin/matlab_r2012b
echo "cd quant; lambda = 0.0005; ed = 2; train = 0; penult = 15, name=['sick-plus-f-', num2str(lambda), '-ed', num2str(ed), '-tr', num2str(train), '-pen', num2str(penult)]; disp(name); TrainModel('sick-plus', '', name, 64, 25, penult, 0.1, lambda, 1, ed, train);" | /afs/cs/software/bin/matlab_r2012b
