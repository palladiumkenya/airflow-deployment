from airflow import DAG
from datetime import datetime, timedelta
from airflow.contrib.operators.spark_submit_operator import SparkSubmitOperator

def build_load_fact_hts_client_tests(dag: DAG, default_conf):
    load_fact_hts_client_tests = SparkSubmitOperator(task_id='load_fact_hts_client_tests',
                                                   conn_id=default_conf['connection_id'],
                                                   application=f"{default_conf['spark_app_home']}/load-hts-fact-client-tests-1.0-SNAPSHOT-jar-with-dependencies.jar",
                                                   total_executor_cores=default_conf['default_spark_total_executor_cores'],
                                                   executor_cores=default_conf['default_spark_executor_cores'],
                                                   executor_memory=default_conf['default_spark_executor_memory'],
                                                   driver_memory=default_conf['default_spark_driver_memory'],
                                                   name='load_fact_hts_client_tests',
                                                   conf=default_conf,
                                                   execution_timeout=timedelta(minutes=600),
                                                   dag=dag
                                                   )
    return load_fact_hts_client_tests
