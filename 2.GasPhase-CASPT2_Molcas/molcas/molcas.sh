#!/bin/bash
#PBS -S /bin/bash
#PBS -m be
#PBS -u marlenne
#PBS -N JOB
#PBS -l nodes=1:ppn=2
#PBS 
################################################################################
export MKL_NUM_THREADS=1
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/soft/intel/mkl/lib/intel64
export LD_LIBRARY_PATH=:/soft/lib:$LD_LIBRARY_PATH:/soft/OPENMOLCAS/openmpi_3.1.0/lib/

source /soft/intel/compilers_and_libraries/linux/bin/compilervars.sh intel64
source /soft/intel/mkl/bin/mklvars.sh intel64
#source /soft/intel/impi/2018.3.222/bin64/mpivars.sh

export MOLCAS='/soft/OPENMOLCAS/CASPT2-GRADIENTS/OpenMolcas/build'

export MOLCAS_NPROCS=1
export MOLCAS_PRINT=3

export MOLCAS_MEM=4000
export Project="JOB"

export HomeDir=$PBS_O_WORKDIR
export TempDir=/scr/marlenne/${PBS_JOBID}_$Project
export WorkDir=$TempDir/Work
#rm -rf $TempDir
[ ! -d '$TempDir' ] && mkdir $TempDir
[ ! -d '$WorkDir' ] && mkdir $WorkDir
cd $WorkDir


pymolcas $HomeDir/$Project.input > $TempDir/$Project.log

cp $TempDir/*.log $HomeDir
cp $TempDir/*.molden $HomeDir

cd -
exit 0

