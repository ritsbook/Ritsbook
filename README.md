# ritsbook

# 立命館大学BKCキャンパス専用教科書フリマアプリ

# アーキテクチャ
クリーンアーキテクチャを採用。
ディレクトリ構造
lib/
├── core/
│   ├── exception/
│   │   ├── auth_repository.dart
│   │   └── firestore_repository.dart
│   └── utils/
│       ├── user.dart
│       └── post.dart
├── data/
│   ├── repositories/
│   │   ├── auth_repository.dart
│   │   └── firestore_repository.dart
│   └── models/
│       ├── user.dart
│       └── post.dart
├── domain/
│   ├── entities/
│   │   ├── user.dart
│   │   └── post.dart
│   ├── repositories/
│   │   ├── auth_repository.dart
│   │   └── firestore_repository.dart
│   └── usecases/
│       ├── login_usecase.dart
│       ├── logout_usecase.dart
│       ├── create_post_usecase.dart
│       └── get_posts_usecase.dart
└── presentation/
    ├── screens/
    │   ├── login_screen.dart
    │   ├── home_screen.dart
    │   └── create_post_screen.dart
    ├── viewmodels/
    │   ├── login_viewmodel.dart
    │   ├── home_viewmodel.dart
    │   └── create_post_viewmodel.dart
    └── widgets/
        ├── post_widget.dart
        └── user_widget.dart

## domain層とdata層で2つrepositoriesがある理由
domainパッケージ内のrepositoriesはデータの取得方法やデータの保存場所を知らせないためにデータ層に依存しないようにするため。そのためdomain層ではインターフェースのみを定義し、実際の取得方法などはdomain層で行っております。



# 使用ライブラリ
