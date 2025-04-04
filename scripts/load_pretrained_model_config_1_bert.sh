#!/bin/bash
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=2
#SBATCH --mem-per-cpu=20G
#SBATCH --gres=gpu:1
#SBATCH --time=10:00:00
#SBATCH --output=logs/load_pretrained_model/config_1_bert.log
#SBATCH --error=logs/load_pretrained_model/error/config_1_bert.log
#SBATCH --mail-type=begin,end,fail
#SBATCH --mail-user=XXXX
#SBATCH --account=p_scads_llm_secrets

source ./../semevalenv/bin/activate
export HF_HOME=

python commands.py train_with_pretrained_model_and_save_best \
        --config_path ./config/load_pretrained_model/config_1_bert.yaml
