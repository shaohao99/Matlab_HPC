clear all

%parpool(12)

spmd

% broadcast data from one worker to all other workers
source=1;
if labindex== source
   data=1:12;
   shared_data = labBroadcast(source,data) % send data from source to other workers, and asign data to shared data
else
   shared_data = labBroadcast(source) % receive data on other workers and save it in sharedata
end

end

%delete(gcp)
