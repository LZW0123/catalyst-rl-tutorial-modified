- 如何训练智能体
1. 运行`bash scripts/run-training.sh`
2. 打开一个终端，执行`mongod --config configs/_mongod.conf`
3. 打开一个终端，执行`CUDA_VISIBLE_DEVICES='0' catalyst-rl run-trainer --config configs/config.yml`
4. 打开一个终端，执行`CUDA_VISIBLE_DEVICES="" catalyst-rl run-samplers --seed 42 configs/config.yml`