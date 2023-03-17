from airflow import DAG
from datetime import datetime, timedelta
from airflow.models import Variable
from airflow.contrib.operators.spark_submit_operator import SparkSubmitOperator

def build_drug_dimension(dag: DAG, default_conf):
    drug_dimension = SparkSubmitOperator(task_id='load_drug_dimension',
                                                   conn_id=default_conf['connection_id'],
                                                   application=f"{default_conf['spark_app_home']}/load-drug-dimension-1.0-SNAPSHOT-jar-with-dependencies.jar",
                                                   total_executor_cores=default_conf['default_spark_total_executor_cores'],
                                                   executor_cores=default_conf['default_spark_executor_cores'],
                                                   executor_memory=default_conf['default_spark_executor_memory'],
                                                   driver_memory=default_conf['default_spark_driver_memory'],
                                                   name='load_drug_dimension',
                                                   conf=default_conf,
                                                   execution_timeout=timedelta(minutes=600),
                                                   dag=dag
                                                   )
    return drug_dimension
