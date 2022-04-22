#!/usr/bin/env bash
pyrep_src="../PyRep"
env_name="catalystenv"
tensorboard_port=6380
useGPU=0
useDBPORT=13013
logs_folder=/media/datf/lzh
series_name=tutorial_training
config=./configs/config.yml
seed=42


EXP_CONFIG=$config LOGDIR=$logs_folder/$series_name DBPORT=$useDBPORT . ./scripts/prepare_configs.sh
if [[ -z "$series_name" ]]; then
  tb_logdir=${CUR_TB_LOGDIR}; else
  tb_logdir=$logs_folder/$series_name;
fi

