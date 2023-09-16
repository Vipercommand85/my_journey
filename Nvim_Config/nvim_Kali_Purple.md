## With Kali Purple 2023 you will need Neovim 0.9.1
* you can find this at the [Neovim](https://github.com/neovim/neovim/releases/tag/v0.9.0) offical doucmentation
* follow the provided instructions

## Will need to add a few utilities and add from a PPA in order to get TREESITTER to function properly
```bash
sudo apt-get install software-properties-common -y
```
```bash
sudo apt-get install apt-file && apt-file update
```
* add the code in add-apt-repository file to exact file in the **/usr/bin/add-apt-repository**
* change permissions to 744 (execute for owner only)
* change owner to root
```bash
chown root:root /usr/bin/add-apt-repository
```
```bash
sudo add-apt-repository ppa:neovim-ppa/stable
```





