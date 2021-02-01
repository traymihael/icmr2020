# icmr2020

## 進め方
- private repositoryにする
- `master（本番サーバ）` -> `debelop（テストサーバ）` -> `修正ブランチ`が理想？
- 本番サーバにgit入れれなかったので今回は`master（テストサーバ）` -> `修正ブランチ`で
- 本番サーバではシェル書いてテストサーバからscpでデータ持ってくる

## 気づいたこと
- githubをprivate repositoryで使用すると一部機能（networkとか）が制限される（無料会員）
- 今まで
    - ブランチ切ってローカルで編集
    - ローカルで良さそうならmasterにmerge
    - deployサーバーでmasterをpull
    - 確認してもらう
    - 修正箇所は再度ブランチ切って修正
    - merge...
    
    だったけど、以下のようにしたらmergeの回数減らせるので良さそう。
    - ブランチ切ってローカルで編集
    - ローカルで良さそうならdeployサーバーでbranchをfetch
    - 確認してもらう
    - 修正箇所は再度同じbranchを修正し終わったらdeployサーバでfetch
    - よければmergeにmerge
    
    (2021/01/31追記。多分本来はこうすべきだった。)
