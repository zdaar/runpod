apt -y update && apt -y install python3.11 python3.11-venv nvidia-cuda-toolkit libgl1-mesa-dri git-lfs
cd /workspace
git clone --branch=release https://github.com/bghira/SimpleTuner.git
cd SimpleTuner

python3.11 -m venv .venv
source .venv/bin/activate
pip install -U poetry pip

poetry install --no-root

pip uninstall -y deepspeed bitsandbytes diffusers
pip install git+https://github.com/huggingface/diffusers
huggingface-cli login --api-key $HF_TOKEN
wandb offline
mkdir /workspace/data

if [ -d "/workspace/runpod/config" ]; then
    cp -r /workspace/runpod/config/* /workspace/SimpleTuner/config/
fi