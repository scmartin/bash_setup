# .bash_profile

module load anaconda/4.7
export PS1='| \u@\h | \w\n>>> '
export PATH=$PATH:~/bash/:$WORK/DynamO/build/:$WORK/python_utilities/
export PYTHONPATH=$WORK/hoomd-blue/no_mpi_build:~/python_utilities:$PYTHONPATH

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi
alias jbatch='squeue -u sether35 -o "%.15i %.8P %.12j %.4t %.12M %.4C %7m %12R %10S"'
alias group='squeue -u e924p726,blaird,m605w568,n686n273,k415m550 -o "%.18i %.10P %.14j %10u %.4t %.12M %.4C %.4m %R"'
alias irun='srun --time=4:00:00 --ntasks=4 --mem=5gb --partition=sixhour,laird,shontz --x11 --pty /bin/bash'
alias gnodes='sinfo -N -p laird,cebc,shontz -o "%.9N %.10P %.14C %.14e %.14m %.45b %.10G"'
alias deact='conda deactivate'
alias gshare='sshare -u e924p726,blaird,m605w568,n686n273,k415m550,sether35'

source $WORK/bash_waypoint

