CUDA code for developmental biology using Subcellular Element Method

Hardware requirement: 
Nvidia video card that supports SM 2.0+ and CUDA 4.0 

Software environment requirement: 
CMAKE ----- Build system.
CUDA  ----- Provide runtime support for parallel GPU computation.
CGAL  ----- Computational geometry library.
Thrust ---- Build-in library of cuda, similar to STL of C++
Paraview -- (Optional) Visualization software for animation purpose. 

To obtain source code copy: 
git clone https://github.com/laosunhust/SceCells.git (original version)
git clone https://github.com/ali1363/scecells.git    (updated  version)

To compile:
 (1) In project root folder, type "cmake ." ("sudo cmake ." preferred)
 (2) type "make" 
Please note that CMake, CUDA, CGAL, Thrust, are all required for compilation.  

To run unit test from project root folder:
 Option 1: Simple run: type "make test"
 Option 2: See more details about unit test: type "./bin/UnitTest"
 
To run performance test from project root folder:
 In project root folder, type "./bin/PerfTest"

To run simulation:
 In project root folder, type "./bin/run***Simulation"
 Currently, two simulations are available: Beak and Disc.


************************
To run simulation on slurm cluster (acms-gpu is powered by slurm) 
 (1) In project root folder, cd ./scripts
 (2) sbatch *.sh, for example, sbatch discN01G02.sh means take 
     the first configuration file and then submit it to gpu02 compute node 
     so. The actual GPU device number that is going to run the program is 
     controled by slurm, and specified GPUDevice in the config file is ignored 
     if running on cluster.

Location of configuration files:
 ./resources
*******************************************
To run simulation on CRC clusters "acms.crc.nd.edu" which are based on SGE (Sun Grid Engine) cluster software :
   (1) git clone https://github.com/AliNemat/EpiScale_Signal.git
   (2) module load cmake gcc/4.9.2 cuda/8.0 bertini   
   (3) In the directory  ~/SceCells write the command "ccmake . -DCGAL_DIR:PATH=/afs/crc.nd.edu/x86_64_linux/c/cgal/4.7/gcc/4.9.2/build/lib/CGAL
   (4) In the directory ~/SceCells write the command "make"
   (5)Submit your simulation with the command "qsub EpiScale.sh"  # Note: Other .sh files in ~/script are not active anymore#


