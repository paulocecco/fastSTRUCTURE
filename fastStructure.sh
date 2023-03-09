#!/bin/bash

for k in $(seq 1 8); do
	docker run -it -v /${PWD}/data/:/fastStructure/data d2e python structure.py \
	 -K $k \ 
	 --input=ArBos_Bos1_merge_sort_CrBo-Ze-Ho_prune_Structure \ 
	 --output=ArBos_Bos1_merge_sort_CrBo-Ze-Ho_prune_Structure-$k \ 
	 --full \ 
	 --seed=100
done
