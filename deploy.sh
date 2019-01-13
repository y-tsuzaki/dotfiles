#!/bin/sh

# ".*"ファイルのシンボリックリンクを作るシェルスクリプト
# from https://qiita.com/okamos/items/40966158d0271ae7198b

DOT_DIRECTORY="${HOME}/dotfiles"

cd ${DOT_DIRECTORY}

for f in .??*
do
  # 無視したいファイルやディレクトリはこんな風に追加してね
  [[ ${f} = ".git" ]] && continue
  [[ ${f} = ".gitignore" ]] && continue
  ln -snfv ${DOT_DIRECTORY}/${f} ${HOME}/${f}
done
echo $(tput setaf 2)Deploy dotfiles complete!. ✔︎$(tput sgr0)
