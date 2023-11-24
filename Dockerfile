FROM ubuntu/mlflow:2.1.1_1.0-22.04
WORKDIR /
ENV MLFLOW_BACKEND_STORE_URI="file:///mlflow"
RUN mkdir /mlflow
EXPOSE 5000
ENTRYPOINT mlflow server --host 0.0.0.0 --port 5000 --backend-store-uri $MLFLOW_BACKEND_STORE_URI

# docker run -d -p 5000:5000 --mount source=itba-mlops-mlflow-volume,target=/mlflow itba-mlops-mlflow
