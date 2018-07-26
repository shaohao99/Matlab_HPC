clear all

%parpool(4)


spmd

DataSent=labindex

right = mod(labindex, numlabs) + 1; % one worker to the right
left = mod(labindex - 2, numlabs) + 1; % one worker to the left

DataRcv = labSendReceive(right, left, DataSent) % send data to the right, receive data from left and save it in other_data

% shift the data to the right among all workers
%to = mod(labindex, numlabs) + 1; % one to the right
%from = mod(labindex-2, numlabs) + 1; % one to the left
%I = labSendReceive(labTo, labFrom, I);
%out = gcat(I, 2, 1); % reconstruct the shifted array on the 1st worker

end

%delete(gcp)
