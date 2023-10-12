from airflow import DAG
from datetime import datetime, timedelta
from airflow.contrib.operators.spark_submit_operator import SparkSubmitOperator

def build_load_dim_treatment_type(dag: DAG, default_conf):
    load_dim_treatment_type = SparkSubmitOperator(task_id='load_dim_treatment_type',
                                                   conn_id=default_conf['connection_id'],
                                                   application=f"{default_conf['spark_app_home']}/load-dim-treatment-type-1.0-SNAPSHOT-jar-with-dependencies.jar",
                                                   total_executor_cores=default_conf['default_spark_total_executor_cores'],
                                                   executor_cores=default_conf['default_spark_executor_cores'],
                                                   executor_memory=default_conf['default_spark_executor_memory'],
                                                   driver_memory=default_conf['default_spark_driver_memory'],
                                                   name='load_dim_treatment_type',
                                                   conf=default_conf,
                                                   execution_timeout=timedelta(minutes=600),
                                                   dag=dag
                                                   )
    return load_dim_treatment_type