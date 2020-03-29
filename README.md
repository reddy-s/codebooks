# Code books

Jupyter notebooks used for quick experimenting.

## Spark

You can privison a fully configured spark cluster by using the `Dataproc` tool which you can find in the `Tools` section. Once the cluster is up and running, go ahead an sync the `codebooks` directory to the dataproc clusters statestore directory which is `gs://$BUCKET/noteooks/jupyter/codebooks` by running the following command from the root dir of the repository.

```sh
export BUCKET=dataproc-statestore
gsutil -m rsync -d -r ./books gs://$BUCKET/notebooks/jupyter/books
```

Once you are done with experimenting, you can sync the changes back to you local dir by running the following command

```sh
export BUCKET=dataproc-statestore
gsutil -m rsync -d -r gs://$BUCKET/notebooks/jupyter/books ./books
```

## Tools

### DataProc

#### Provison a GCP DataProc Cluster using this script

-p   | --project-id              Project id to create/use (Mandatory)  
-ge  | --gcloud-email            Gcloud Email Address (Mandatory)  
-cn  | --cluster-name            Cluster name (Mandatory)  
-b   | --bucket                  Name of the bucket to be sued for state store (Mandatory)  
-e   | --environment             Which environment does this cluster belong to. DEFAULT: dev  
-r   | --region                  Which region should the cluster be deployed to. DEFAULT: europe-west2  
-a   | --action                  Create/Delete the cluster. DEFAULT: create  
-z   | --zone                    Which zone should the cluster be deployed to. DEFAULT: europe-west2-a  
-mmt | --master-machine-type     Master machine type. DEFAULT: n1-standard-2  
-wmt | --worker-machine-type     Worker machine type. DEFAULT: n1-standard-1  
-mds | --master-disk-size        Master disk size, DEFAULT: 100  
-wds | --worker-disk-size        Worker disk size, DEFAULT: 50  
-w   | --workers                 No of Workers, DEFAULT: 3  
-pw  | --preemptible-workers     No of preemptible workers, DEFAULT: 1  
-i   | --image                   Image to be used for dataproc cluster, DEFAULT: 1.3-debian9  
-h   | --help                    Displays all the available options  

#### Example usage

  => ./jupyter/gcp/dataproc --gcloud-email=sample@gmail.com  
          --project-id=spark-dataproc-cluster  
          --cluster-name=test-spark-cluster  
          --bucket=dataproc-statestore  
          --action=create  

### Running Jupiter notebook locally

Build the docker image to refresh the packages

```sh
docker build -t <docker-username>/jupyter-notebook:v0.0.1 -f ./jupyter/local/Dockerfile
```

If you want to use the docker image already built, run the following command

```sh
docker run --rm --name jupyter \
    -v ${PWD}/books:/home/jovyan/work/books \
    -v ${PWD}/data:/home/jovyan/work/data \
    -v ${PWD}/kaggle:/home/jovyan/work/kaggle \
    -v ${HOME}/.aws:/home/jovyan/.aws \
    -e AWS_DEFAULT_PROFILE=training \
    -p 8888:8888 \
    reddys310/jupyter-notebook:v0.0.1
```

### Data for Experimenting

```sh
export DATA_BUCKET=reddys-data-for-experimenting
gsutil -m rsync -d -r ./data gs://$DATA_BUCKET/
```

> Note: All data used for testing is sourced from [Spark: The definitive guide](https://github.com/databricks/Spark-The-Definitive-Guide)

### ML Experimenting

Using `Kaagle` datasets
