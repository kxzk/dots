<h3 align="center">dots</h3>

<br>
<br>

### install fira code

```bash
wget https://github.com/tonsky/FiraCode/releases/download/6.2/Fira_Code_v6.2.zip
unzip Fira_Code_v6.2.zip
mkdir -p ~/.fonts
cp Fira_Code_v6.2/ttf/*.ttf ~/.fonts/
fc-cache -f -v

# validate
fc-list | grep "Fira Code"
```

### remap caps lock to control

```bash
sudo nvim /etc/default/keyboard
XKBOPTIONS="ctrl:nocaps"

sudo dpkg-reconfigure keyboard-configuration
sudo systemctl restart keyboard-setup
```

<br>
<br>

### install python3.12

```bash
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update -y
sudo apt install python3.12

sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.12 1
sudo update-alternatives --config python3

curl -sS https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3.12 get-pip.py

# pip3.12 install requests
```

<br>
<br>

### gh

```bash
gh auth login
gh config set editor nvim

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
curl -LO https://github.com/neovim/neovim/releases/download/v0.10.0/nvim.appimage
chmod u+x nvim.appimage
# make sure fuse is installed
# sudo apt install fuse libfuse2
./nvim.appimage
sudo mv nvim.appimage /usr/local/bin/nvim
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

### ubuntu 22.04 for clangd

```bash
sudo apt-get install libllvm14=1:14.0.0-1ubuntu1
```

<br>
<br>

### duckdb

> https://duckdb.org/docs/installation/?version=stable&environment=cli&platform=linux&download_method=package_manager

```bash
wget https://github.com/duckdb/duckdb/releases/download/v0.10.2/duckdb_cli-linux-amd64.zip
unzip duckdb_cli-linux-amd64.zip
sudo mv duckdb /usr/local/bin/
sudo chmod +x /usr/local/bin/duckdb
```

<br>
<br>

### rust

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
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
go install github.com/cosmtrek/air@latest
```

<br>
<br>

### aws cli

```bash
curl "https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
```

<br>
<br>

### prettierd

```bash
npm install -g @fsouza/prettierd
```

<br>
<br>

### stylua/eza

```bash
cargo install zoxide
cargo install stylua
cargo install eza
```

<br>
<br>

### proxyman

```bash
# https://proxyman.io/download

# adjust according to the latest version
chmod +x Proxyman-2.14.0.AppImage
sudo mv Proxyman-2.14.0.AppImage /usr/local/bin/proxyman
```

<br>
<br>

### tableplus

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
