#!/bin/bash

#SBATCH --job-name=train-USVTrack-yolox-pytorch
#SBATCH --partition=gpu3090 # gpu3090 队列
#SBATCH --qos=8gpus
#SBATCH --nodes=1 # 单节点
#SBATCH --gpus=1 # 1 块 GPU
#SBATCH --cpus-per-task=8       # 1:4 GPU:CPU ratio      
#SBATCH --output=hpc/%j.out
#SBATCH --error=hpc/%j.err
#SBATCH --mail-type=all
#SBATCH --mail-user=shanliang.yao19@student.xjtlu.edu.cn

module load anaconda3
source activate yolox

# Train
# python train.py

# Eval
# python get_map.py

# FPS
python predict.py