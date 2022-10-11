#!/bin/bash -l
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=1
#SBATCH --mem-per-cpu=10G
#SBATCH --output=my.stdout
#SBATCH --mail-user=useremail@address.com
#SBATCH --mail-type=ALL
#SBATCH --job-name="test"
#SBATCH -p gpu # This is the default partition, you can use any of the following; intel, batch, highmem, gpu


module load slurm/17.02.5
module load cmake
module load cuda/9.0
module load gcc/6.3.0
module load extra
module load matlab/R2018b

srun -p gpu --gres=gpu:1 ./bin/runDiscSimulation_M
#srun ./bin/runDiscSimulation_M
