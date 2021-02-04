# dotfiles

My dotfiles.


## vim

### 準備

Mac標準のvim本体が署名されてて、vimprocが署名されてないとエラーが出る。
のでbrewで（署名されてない）vimを入れる。
（ついでに+Luaになったものが入るので幸せになれる）

```
$ brew update
$ brew install vim
```

Ref: https://qiita.com/hrnrhty/items/597fe78657539c603b59

### 設定

```
cd ./bundle
git clone git://github.com/Shougo/neobundle.vim

cd ~
ln -s /path/to/here/_vimrc .vimrc
ln -s /path/to/here/_vim .vim
```

