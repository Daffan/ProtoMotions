```
CUDA_VISIBLE_DEVICES=1 python protomotions/train_agent.py +exp=full_body_tracker/mlp_single_motion_amp_flat_terrain +robot=t1 +simulator=isaacgym motion_file=/var/local/zifan/motion_data_x/CMU-t1_retargeted/01/01_01_stageii.npy +experiment_name=mlp_full_body_tracker_t1_0401 num_envs=4096 +opt=wandb ngpu=1
```