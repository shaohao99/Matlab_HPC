#!/bin/bash -l

#$ -pe omp 1
#$  -l h_rt=00:20:00
#$ -N matlab_test

module load matlab 

matlab -nodisplay -singleCompThread -r "rand($SGE_TASK_ID), exit"
#matlab -nodisplay -r "addpath /usr1/scv/shaohao/training/matlab/src/exercises-hpc; hello"
#matlab -nodisplay -r "addpath /usr1/scv/shaohao/training/matlab/src/exercises-hpc; hello"
#matlab -nodisplay -nojvm -nosplash -r "addpath /my/custom/path; fname"

