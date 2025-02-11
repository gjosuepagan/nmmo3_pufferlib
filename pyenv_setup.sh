# Update and install required dependencies
sudo apt update && sudo apt install -y \
    make build-essential libssl-dev zlib1g-dev \
    libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
    libncurses5-dev libncursesw5-dev xz-utils tk-dev \
    libffi-dev liblzma-dev python3-openssl git

# Clone pyenv repository
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

# Clone pyenv-virtualenv plugin
git clone https://github.com/pyenv/pyenv-virtualenv.git ~/.pyenv/plugins/pyenv-virtualenv

# Add pyenv to your shell
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init --path)"\nfi' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc

# Source the shell configuration to load pyenv into the current shell session
source ~/.bashrc

# Ensure pyenv is available
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# Install Python 3.11.10 using pyenv
pyenv install 3.11.10

# Set the installed Python version globally
pyenv global 3.11.10

# Create a virtual environment for Python 3.11.10
pyenv virtualenv 3.11.10 .nmmo3_env

# Activate the virtual environment
pyenv activate .nmmo3_env