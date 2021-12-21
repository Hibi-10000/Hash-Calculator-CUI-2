Hash計算CUI2 [ver2.7]
対応OS:Windows7,8(.1),10(恐らくWindowsServerでも動く)

ファイルをドロップすればハッシュ値がcmdに表示されます。
※フォルダのハッシュ値は取得できません。また、管理者権限は使用しません。

現在ver対応ハッシュアルゴリズム

 CMD

 ・SHA1,256,384,512
 ・MD2,4,5

 PowerShell-5.1

 ・RIPEMD160
 ・MACTripleDES

 7Zip-19.00

 ・CRC32,64
 ・BLAKE2sp


動作確認
Windows10 Pro 21H1 19043.1237 x86_64 PowerShell-5.1 7-Zip-19.00
	 CPU Intel core i7-4790k 4.00GHz 
	 RAM DDR3 16GB 1600MHz 
	 GPU NVIDIA Geforce GTX 960
	 ROM C:480GB(SSD)


不具合等ありましても作者は更新の責任を負いません。
PCに不具合等発生しても作者は責任を負いません。

Copyright © 2021 Hibi_10000 All Rights Reserved.


更新履歴
2021/03/07 ver1.0  初期ver SHA1,SHA256,MD5に対応。
	   ver1.1  SHA384,512,MD2,4に対応。
	   ver1.2  MACTripleDES,RIPEMD160を追加,PowerShellの更新リンクを同梱。
	   ver1.3  SHA512が正常に作動しない問題を解決。
	   ver1.4  CRC32,64,BLAKE2spに対応。7-ZipのDLリンクを同梱。文字化け対策。
	   ver2.0  ひとつのバッチファイルにまとめて使用法を簡単に。
2021/03/08 ver2.1  ハッシュのログを出力する機能を追加。(.\Log)
	   ver2.2  7-Zipがインストールされていなくても動くように。
	   ver2.3  PowerShell 4以上がインストールされていなくても動くように。
	   ver2.4  名称変更 Hash=を小文字で入力しても動作するように。
	   ver2.5  自動的にPowerShellと7zipのファイルをセットするように。
	   ver2.6  最高圧縮で配布。
2021/10/04 ver2.7  解凍のバグを修正。 GUI版の作成による名称変更