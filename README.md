# fastSTRUCTURE

This script is used to run the fastStructure software for genetic clustering analysis. It automates the process of running the program with different values of K, which represents the number of clusters to be inferred.

## Requirements
* Docker installed on your system
* Python installed inside the Docker container
## Usage
1. Clone the repository on your local machine:
```
git clone <repository_url>
```
2. Open the terminal and navigate to the directory where the repository is cloned.
3. Add the input files to the `data/` directory.
4. Open the `run_fastStructure.sh` file and edit the following variables according to your needs:
  1. `input`: The name of the input file (without extension) located in the data/ directory.
  2. `output`: The prefix to be used for the output files.
  3. `seq`: The range of K values to be used for the analysis.
  4. `seed`: The random seed to be used for the analysis.
5. Save and close the `run_fastStructure.sh` file.
6. In the terminal, run the following command:
```
bash run_fastStructure.sh
```
7. The program will generate output files for each value of K in the `output/` directory.

## Note
* The script assumes that the input file is in the `data/` directory and the output files will be saved in the `output/` directory.
* The docker run command in the script mounts the `data/` directory inside the Docker container at the `/fastStructure/data` path. Therefore, the input file name and path in the command should be relative to this path.
* The `--full` option in the command specifies the full data mode. You can remove this option if you want to use the SNP-only mode.
