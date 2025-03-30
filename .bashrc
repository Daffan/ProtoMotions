export BUFFER_PATH=/u/zifan/buffer
export PATH=$PATH:/lusr/opt/singularity-3.9.7/bin
export BUFFER_TEST_PATH=/u/zifan/buffer_test
umask 077

# export PATH=/opt/cuda-11.3/bin:$PATH; export LD_LIBRARY_PATH=/opt/cuda-11.3/lib64:$LD_LIBRARY_PATH
export PATH=/usr/local/cuda-11.6/bin:$PATH; export LD_LIBRARY_PATH=/usr/local/cuda-11.6/lib64:$LD_LIBRARY_PATH

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/scratch/cluster/zifan/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/scratch/cluster/zifan/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/scratch/cluster/zifan/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/scratch/cluster/zifan/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export SREGISTRY_NVIDIA_TOKEN=MjVyNTNnYmNjYTFscGUyYWNzcmJzc3Qya246Njg0YjBkNDMtN2JiYy00YTYxLThjMzItMDBiZDAyYjNhNjA0
#export SREGISTRY_NVIDIA_BASE=nvcr.io
#export SREGISTRY_NVIDIA_VERSION=v2
#export SREGISTRY_NVIDIA_USERNAME='$oauthtoken'

conda activate /var/local/zifan/conda_env/humanoid
export PATH="$HOME/.local/bin:$PATH"

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/u/zifan/.mujoco/mujoco210/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/nvidia
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/scratch/cluster/zifan/miniconda3/envs/legged/lib
