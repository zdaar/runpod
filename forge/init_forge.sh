apt update && apt install -y vim tmux ncdu
pip install -U "huggingface_hub[cli]"
hf-cli login --api-key $HF_TOKEN
cd /workspace/stable-diffusion-webui-forge
git pull
cd /workspace/stable-diffusion-webui-forge/models/Stable-diffusion
huggingface-cli download lllyasviel/flux1_dev
cd /workspace/stable-diffusion-webui-forge/extensions
git clone https://github.com/Bing-su/adetailer.git
git clone https://github.com/SignalFlagZ/sd-webui-civbrowser.git
git clone https://github.com/Coyote-A/ultimate-upscale-for-automatic1111.git




