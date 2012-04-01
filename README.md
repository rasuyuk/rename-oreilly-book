## rename-oreilly-book.rb

O'Reilly Japan Ebookのファイル名をISBNから、本タイトルに変更するスクリプトです

以下のサンプルを参考に、rubyで書きました。
http://www.oreilly.co.jp/community/blog/2010/11/bibliographical-info-in-json.html

## 動作確認バージョン：
 ruby 1.8.7 (2010-01-10 patchlevel 249) [universal-darwin11.0]

## 使い方：

 % ruby rename-oreilly.book.rb <downloaded_file>
 ./distというディレクトリを作るので、その中にリネームしたファイルを置きます。

以下の２種類の形式のファイルのみ動作確認済みです
 
* oreilly-xxx-x-xxxxx-xxx-xe.pdf(DRMなし)
* oreilly-xxxxxxxxxxxxx.pdf(DRMあり)

##Copyright

Copyright (c) 2012 rasuyuk