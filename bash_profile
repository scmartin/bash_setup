# .bash_profile

export PS1='| \u@\h | \w\n>>> '
PATH=$PATH:~/bash/

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi
alias jobs='squeue -u sether35 -o "%.18i %.10P %.14j %.4t %.12M %.8C %R"'
alias group='squeue -u e924p726,blaird,sether35,m605w568,c662h070,n686n273'
alias irun='srun --time=4:00:00 --ntasks=4 --mem=5gb --partition=sixhour --x11 --pty /bin/bash'
alias gnodes='sinfo -N -p laird -o "%.9N %.14C %.14e %.45b"'

source $WORK/bash_waypoint

function mvo(){
  mv *.o* $1/
}

