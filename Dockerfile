# Use an official Python runtime as a parent image
FROM python:2.7-slim

# ワーキングディレクトリを /app に設定
WORKDIR /app

# カレントディレクトリの中身を/appにあるコンテナにコピー
COPY . /app

# requirements.txtに記載されたパッケージをインストールする
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# 外部からこのコンテナを使用できるようポート番号を80に設定する
EXPOSE 80

# 環境変数を設定
ENV NAME World

# コンテナがローンチされた時にapp.pyを実行する
CMD ["python", "app.py"]