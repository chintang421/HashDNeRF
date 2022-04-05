# CUDA_VISIBLE_DEVICES=0 python run_nerf.py --config configs/chair.txt --finest_res 1024
# CUDA_VISIBLE_DEVICES=1 python run_nerf.py --config configs/chair.txt --finest_res 1024 --i_embed_views 0
# CUDA_VISIBLE_DEVICES=2 python run_nerf.py --config configs/chair.txt --finest_res 1024 --lrate 0.01 --lrate_decay 100
# CUDA_VISIBLE_DEVICES=3 python run_nerf.py --config configs/chair.txt --finest_res 1024 --log2_hashmap_size 14 

CUDA_VISIBLE_DEVICES=0 python run_nerf.py --config configs/mutant.txt --finest_res 1024
CUDA_VISIBLE_DEVICES=0 python run_nerf.py --config configs/bouncingballs.txt --finest_res 1024 
CUDA_VISIBLE_DEVICES=0 python run_nerf.py --config configs/lego.txt --finest_res 1024 

CUDA_VISIBLE_DEVICES=0 python run_nerf.py --config configs/lego.txt --finest_res 1024 --i_embed 0 --i_embed_views 0 --i_video 50000 --i_testset 50000
CUDA_VISIBLE_DEVICES=1 python run_nerf.py --config configs/lego.txt --finest_res 1024 --i_embed 0 --i_embed_views 0 --i_video 50000 --i_testset 50000 --render_only --render_test

CUDA_VISIBLE_DEVICES=0 python run_nerf.py --config configs/lego.txt --finest_res 1024 --i_video 50000 --i_testset 50000 --chunk 3276800 --netchunk 6553600
