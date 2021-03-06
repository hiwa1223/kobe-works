# README

## 1.アプリ説明

クラウドソーシングサービスです。

近年、コワーキングスペースなどが増え、フリーランスの方が活躍できるようになりました。

そういった場で、案件のやりとりができるシステムです。

ユーザー登録機能や案件登録機能、メッセージ機能などを実装しています

![画像名](https://github.com/hiwa1223/kobe-works/blob/master/kobe-works%20%E3%82%A2%E3%83%95%E3%82%9A%E3%83%AA%E8%AA%AC%E6%98%8E.png)

## 2.機能説明及び使い方

### 2.1 アカウント登録機能

以下のフォーマットに則って、アカウントを作成します。

![画像名](https://github.com/hiwa1223/kobe-works/blob/master/kobe-works-create-acccount.png)

### 2.2 アカウント編集機能

以下のページにて、アカウントを編集することが出来ます。

![画像名](https://github.com/hiwa1223/kobe-works/blob/master/kobe-works-edit-account.png)

### 2.3 ログイン機能

作成したアカウントで、ログインをします。メールアドレスとパスワードが必要です。

![画像名](https://github.com/hiwa1223/kobe-works/blob/master/kobe-works-login.png)

### 2.4 案件登録機能

画面上部の新規案件募集をクリックすると、案件登録機能に遷移します。

入力を行い、登録をするボタンを実行することで、案件が登録されます。

登録後は、案件一覧(2.5.1)に移行します。

![画像名](https://github.com/hiwa1223/kobe-works/blob/master/%E6%96%B0%E8%A6%8F%E6%A1%88%E4%BB%B6%E3%81%AE%E5%8B%9F%E9%9B%86%EF%BC%91.png)

![画像名](https://github.com/hiwa1223/kobe-works/blob/master/%E6%96%B0%E8%A6%8F%E6%A1%88%E4%BB%B6%E3%81%AE%E5%8B%9F%E9%9B%86%EF%BC%92.png)

### 2.5.1 案件一覧表示機能

投稿した案件は、ログイン後のトップページに表示されます。

なお、「kobe works」のロゴをクリックしても、トップページを表示させることが出来ます。

![画像名](https://github.com/hiwa1223/kobe-works/blob/master/kobe-works_%E6%A1%88%E4%BB%B6%E4%B8%80%E8%A6%A7%E7%94%BB%E9%9D%A2.png)

### 2.5.2 ユーザー別投稿案件表示機能

画面上部の名前をクリックすると、ユーザー別の投稿案件を表示させることが出来ます。

![画像名](https://github.com/hiwa1223/kobe-works/blob/master/kobe_works_user_jobs.png)

### 2.6 案件詳細表示機能

案件一覧から案件をクリックすると、詳細が表示されます。

投稿者本人であれば、編集及び削除が可能です。条件分岐にてユーザーごとに切り替えを行っています。

![画像名](https://github.com/hiwa1223/kobe-works/blob/master/kobe-works%E6%A1%88%E4%BB%B6%E4%B8%80%E8%A6%A7%E8%A1%A8%E7%A4%BA.png)

### 2.7 案件編集及び削除機能

案件詳細画面から「編集」をクリックすると、以下のような画面が表示されて編集が可能です。
なお、「削除」をクリックすると案件が削除されて、トップページに戻ります。

![画像名](https://github.com/hiwa1223/kobe-works/blob/master/kobe-works%E6%A1%88%E4%BB%B6%E7%B7%A8%E9%9B%86.png)

### 2.8 案件応募機能

投稿者本人以外であれば、応募が可能です。こちらも条件分岐にてユーザーごとに切り替えを行っています。

![画像名](https://github.com/hiwa1223/kobe-works/blob/master/kobe-works%E5%BF%9C%E5%8B%9F%E7%94%BB%E9%9D%A2.png)

![画像名](https://github.com/hiwa1223/kobe-works/blob/master/kobe-works%E5%BF%9C%E5%8B%9F%E5%86%85%E5%AE%B9%E3%81%AE%E7%A2%BA%E8%AA%8D.png)

![画像名](https://github.com/hiwa1223/kobe-works/blob/master/kobe-works-%E5%AE%8C%E4%BA%86%E3%83%A1%E3%83%83%E3%82%BB%E3%83%BC%E3%82%B7%E3%82%99.png)

### 2.8 メッセージ機能

画面上部のメッセージをクリックすると、メッセージをやり取りすることが出来ます。

![画像名](https://github.com/hiwa1223/kobe-works/blob/master/kobe-works-messege.png)

## 3.環境

Ruby,Ruby on Rails,Haml,SCSS,Javascript,jQuery,Mysql,AWS

Ruby on Railsのフレームワークを用いて実装しました。

データベースは、開発環境・本番環境ともにMYSQLです。

AWSのEC2インスタンスを用いて本番環境を構築しました。

![画像名](https://github.com/hiwa1223/kobe-works/blob/master/%E6%9C%AC%E7%95%AA%E7%92%B0%E5%A2%83.png)

アプリケーションサーバーは、unicorn

webサーバーは、nginx

データベースサーバーは、MYSQLが対応しています。

capistranoを用いて、デプロイ作業を自動化しています。


## 4.制作の背景

web関連の仕事を探していた際に、web制作とコワーキングスペースの両方の事業を行っている会社さんに出会った。

将来、単なる交流だけでなく案件のやり取りまでを行えるようにしたいというお話があったので、

実際にそういったシステムを、自分が学んだ技術を用いて実装した。

## 5.今後の追加機能

メッセージ機能の非同期通信実装

入金をメッセージではなく、システムでやり取りできるようにする
