from airflow import DAG
from datetime import datetime, timedelta
from airflow.contrib.operators.spark_submit_operator import SparkSubmitOperator

def build_load_ct_cancer_screening_task(dag: DAG, default_conf) -> SparkSubmitOperator:

    load_ct_cancer_screening = SparkSubmitOperator(task_id='load_ct_cancer_screening',
                                                  conn_id='spark_standalone',
                                                  application=f"{default_conf['spark_app_home']}/load-ct-cancer-screening-1.0-SNAPSHOT-jar-with-dependencies.jar",
                                                  total_executor_cores=default_conf[
                                                      'default_spark_total_executor_cores'],
                                                  executor_cores=default_conf['default_spark_executor_cores'],
                                                  executor_memory=default_conf['default_spark_executor_memory'],
                                                  driver_memory=default_conf['default_spark_driver_memory'],
                                                  name='load_ct_cancer_screening',
                                                  conf=default_conf,
                                                  execution_timeout=timedelta(
                                                      minutes=600),
                                                  dag=dag
                                                  )
    return load_ct_cancer_screening