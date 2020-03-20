# hasura-svelte-app

## 手順

### postgress and hasura
- dockerを利用。

```bash
# postgres and hasuraを起動
$ docker-compose up -d
```

- `localhost:8080`を開き、hasura画面を確認する。
- 確認後、「DATA」ページを開き、docker起動時にインポートした下記のテーブルを、「track all」で許可する。

![image](https://user-images.githubusercontent.com/44114228/77143403-91c69180-6ac6-11ea-83f5-bdb8215b23d7.png)

- テーブルの許可後、下記のように外部キーの許可設定が表示されるので、同様に「track all」で許可する。

![image](https://user-images.githubusercontent.com/44114228/77143672-33e67980-6ac7-11ea-9cf1-9b36b7edbcb3.png)

- これで、graphql環境のsetup完了。
- 次のフロント環境手順へ進む。

### svelte

```bash
# package install。
$ npm install
# 開発サーバー起動
$ npm run dev
```

- 上記のコマンドまで入力したら、`localhost:5000`を開き、画面を確認。
- これで、フロントエンド・バックエンド環境構築完了。