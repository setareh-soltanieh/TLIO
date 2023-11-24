#!/bin/bash -l
# SLURM SUBMIT SCRIPT
#SBATCH --account=ingenuitylabs
#SBATCH --partition=Sasquatch
#SBATCH --nodes=1
#SBATCH --time=48:00:00
#SBATCH --ntasks-per-node=1
#SBATCH --gres=gpu:1
#SBATCH --output=test_3_out.log
#SBATCH --error=test_3_out.err

nvidia-smi
python3 main_net.py --mode test --root_dir my_local_data/tlio_golden --model_path outputs/resnet_seq/checkpoint_best.pt --out_dir test_outputs_3 --batch_size 1