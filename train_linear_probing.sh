#!/bin/bash

conda init

conda activate ffcv

cd /data2/dse316/grp_029/new/scaling_mlps


python3 train.py --dataset cifar10 --model BottleneckMLP --architecture B_6-Wi_1024 --batch_size 16384 --resolution 32 --epochs 50 --lr 0.00001

python3 train.py --dataset cifar10 --model BottleneckMLP --architecture B_12-Wi_1024 --batch_size 16384 --resolution 32 --epochs 50  --lr 0.00001

python3 train.py --dataset cifar100 --model BottleneckMLP --architecture B_6-Wi_1024 --batch_size 16384 --resolution 32 --epochs 50  --lr 0.00001

python3 train.py --dataset cifar100 --model BottleneckMLP --architecture B_12-Wi_1024 --batch_size 16384 --resolution 32 --epochs 50  --lr 0.00001

python3 train.py --dataset tinyimagenet --model BottleneckMLP --architecture B_6-Wi_1024 --batch_size 16384 --resolution 64 --epochs 50  --lr 0.00001

python3 train.py --dataset tinyimagenet --model BottleneckMLP --architecture B_12-Wi_1024 --batch_size 16384 --resolution 64 --epochs 50  --lr 0.00001