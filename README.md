# codebooks
Jupyter notebooks used for quick experimenting

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
  => ./dataproc.sh --gcloud-email=sample@gmail.com  
          --project-id=spark-dataproc-cluster  
          --cluster-name=test-spark-cluster  
          --bucket=dataproc-statestore  
          --action=create  

> Note: All data used for testing is sourced from [Spark: The definitive guide](https://github.com/databricks/Spark-The-Definitive-Guide)
