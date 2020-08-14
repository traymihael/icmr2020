# icmr2020

## 進め方
- private repositoryにする
- `master（本番サーバ）` -> `debelop（テストサーバ）` -> `修正ブランチ`が理想？
- 本番サーバにgit入れれなかったので今回は`master（テストサーバ）` -> `修正ブランチ`で
- 本番サーバではシェル書いてテストサーバからscpでデータ持ってくる

## 気づいたこと
- private repositoryだと一部機能（networkとか）が制限される（無料会員）