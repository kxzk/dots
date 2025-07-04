<h3 align="center">dots</h3>

<br>
<br>

### install

```bash
# Basic usage without handling comments or blank lines
xargs sudo apt install -y < Aptfile
```

<br>
<br>

### stow

```bash
stow -v bash

stow -Rv bin -t ~/.local/bin
```

<br>
<br>

### remap caps lock to control

```bash
sudo nvim /etc/default/keyboard
XKBOPTIONS="ctrl:nocaps"

sudo dpkg-reconfigure keyboard-configuration
sudo systemctl restart keyboard-setup
```

<br>
<br>

### atuin

```bash
curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh

atuin login -u <username> -p <password> -k <key>
atuin sync
```

<br>
<br>

### install python3.13

```bash
# add deadsnakes ppa if not already present
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update -y

# install python 3.13 with development headers and venv support
sudo apt install python3.13 python3.13-venv python3.13-dev

# configure as default python3 (priority 2 > default system python)
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.13 2
sudo update-alternatives --config python3

# install pip for python 3.13
curl -sS https://bootstrap.pypa.io/get-pip.py | python3.13 -

# verify installation
python3 --version
pip3 --version
```

<br>
<br>

### gh

```bash
gh auth login
gh config set editor nvim
gh config set pager delta

# nvim
# :Copilot setup

# store creds
git config --global credential.helper store
```

<br>
<br>

### neovim

```bash
# https://github.com/neovim/neovim/releases
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage
# make sure fuse is installed
# sudo apt install fuse libfuse2
mkdir -p /opt/nvim
mv nvim.appimage /opt/nvim/nvim
# in .bashrc
export PATH="$PATH:/opt/nvim/"
```

<br>
<br>

### uv and ruff

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
curl -LsSf https://astral.sh/ruff/install.sh | sh
```

<br>
<br>

### nodejs

```bash
# https://deb.nodesource.com/
curl -fsSL https://deb.nodesource.com/setup_current.x | sudo -E bash -
sudo apt-get install -y nodejs
```

<br>
<br>

### duckdb

* [download](https://duckdb.org/docs/installation/?version=stable&environment=cli&platform=linux&download_method=direct&architecture=x86_64)

```bash
wget https://github.com/duckdb/duckdb/releases/download/v0.10.2/duckdb_cli-linux-amd64.zip
unzip duckdb_cli-linux-amd64.zip
sudo mv duckdb /usr/local/bin/
sudo chmod +x /usr/local/bin/duckdb
```

<br>
<br>

### git-delta

```bash
wget https://github.com/dandavison/delta/releases/download/0.17.0/git-delta-musl_0.17.0_amd64.deb
sudo dpkg -i git-delta-musl_0.17.0_amd64.deb
sudo apt-get install -f
```

<br>
<br>

### air (golang)

```bash
# binary will be $(go env GOPATH)/bin/air
curl -sSfL https://raw.githubusercontent.com/air-verse/air/master/install.sh | sh -s -- -b $(go env GOPATH)/bin
```

<br>
<br>

### prettierd

```bash
sudo npm install -g @fsouza/prettierd
```

<br>
<br>

### rust utils

```bash
cargo install zoxide
cargo install stylua
cargo install eza
cargo install glimpse
cargo install ast-grep --locked
```

<br>
<br>

### proxyman

* [download](https://proxyman.io/download)

```bash
# https://proxyman.io/download

# adjust according to the latest version
chmod +x Proxyman-2.14.0.AppImage
sudo mv Proxyman-2.14.0.AppImage /usr/local/bin/proxyman
```

<br>
<br>

### tableplus

* [download](https://tableplus.com/blog/2019/10/tableplus-linux-installation.html)

```bash
# https://tableplus.com/download

# Add TablePlus gpg key
wget -qO - https://deb.tableplus.com/apt.tableplus.com.gpg.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/tableplus-archive.gpg > /dev/null

# Add TablePlus repo
sudo add-apt-repository "deb [arch=amd64] https://deb.tableplus.com/debian/22 tableplus main"

# Install
sudo apt update
sudo apt install tableplus
```

<br>
<br>

### marp

```
npm install -g @marp-team/marp-cli
```
