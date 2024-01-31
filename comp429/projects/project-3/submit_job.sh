#!/usr/bin/env bash
#
# You should only work under the /scratch/users/<username> directory.
#
# Example job submission script
#
# -= Resources =-
#SBATCH --job-name=cardiacsim
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=16
#SBATCH --cores-per-socket=16
#SBATCH --partition=short
#SBATCH --time=00:30:00
#SBATCH --output=cardiacsim.out

module load openmpi/4.0.1
export PATH=/kuacc/apps/openmpi/4.0.1/bin/:$PATH
export LD_LIBRARY_PATH=/kuacc/apps/openmpi/4.0.1/lib/:$LD_LIBRARY_PATH
export PATH=/kuacc/apps/openmpi/4.0.1/include:$PATH

################################################################################
##################### !!! DO NOT EDIT ABOVE THIS LINE !!! ######################
################################################################################
echo "Setting stack size to unlimited..."
ulimit -s unlimited
ulimit -l unlimited
ulimit -a

echo

echo "Running Job...!"
echo "==============================================================================="
echo "Running compiled binary..."

bash study_0.sh
bash study_1.sh
bash study_2.sh
bash study_3.sh
bash study_4.sh

echo "Finished!!!"
echo "==============================================================================="
echo "Cleaning Files"

make clean

echo "Finished Cleaning!!!"
echo "==============================================================================="
