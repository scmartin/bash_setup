#!/bin/bash
#SBATCH --job-name=notebook
#SBATCH --partition=laird,sixhour
#SBATCH --constraint=ib
#SBATCH --time=6:00:00
#SBATCH --ntasks=1
#SBATCH --mem=10G
#SBATCH --output=notebook.o%j

module load anaconda
conda activate MDanalysis
ipnport=$(shuf -i8000-9999 -n1)
ipnip=$(hostname -i)

jupyter notebook --no-browser --port=$ipnport --ip=$ipnip
