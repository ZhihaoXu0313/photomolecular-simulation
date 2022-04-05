#!/bin/bash
#$ -M  zhihaoxu0313@gmail.com    # Email address for job notification
#$ -m  abe        # Send mail when job begins, ends and aborts
#$ -pe smp 64      # Specify parallel environment and legal core size
#$ -q  long@@tengfeiluo
#$ -N  swm4_run # Specify job name

module load intel/18.0 ompi/3.0.0/intel/18.0
module load lammps    # Required modules
mpiexec -n $NSLOTS lmp_mpi < 03_run.in 
