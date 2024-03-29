from airflow import DAG
from datetime import datetime, timedelta
from airflow.models import Variable
from airflow.contrib.operators.spark_submit_operator import SparkSubmitOperator

lf_spark_source_database_name = Variable.get("LF_SPARK_SOURCE_DATABASE_NAME")
lf_spark_source_database_host = Variable.get("LF_SPARK_SOURCE_DATABASE_HOST")
lf_spark_source_url = Variable.get("LF_SPARK_SOURCE_URL")
lf_spark_source_driver = Variable.get("LF_SPARK_SOURCE_DRIVER")
lf_spark_source_user = Variable.get("LF_SPARK_SOURCE_USER")
lf_spark_source_password = Variable.get("LF_SPARK_SOURCE_PASSWORD")
lf_spark_source_numpartitions = Variable.get("LF_SPARK_SOURCE_NUMPARTITIONS")
lf_spark_sink_url = Variable.get("LF_SPARK_SINK_URL")
lf_spark_sink_driver = Variable.get("LF_SPARK_SINK_DRIVER")
lf_spark_sink_user = Variable.get("LF_SPARK_SINK_USER")
lf_spark_sink_password = Variable.get("LF_SPARK_SINK_PASSWORD")
lf_spark_sink_dbtable = Variable.get("LF_SPARK_SINK_DBTABLE")
lf_spark_sink_numpartitions = Variable.get("LF_SPARK_SINK_NUMPARTITIONS")

def build_load_all_facilities_task(dag: DAG, default_conf) -> SparkSubmitOperator:
    task_conf = {
        "spark.source.database-name": lf_spark_source_database_name,
        "spark.source.database-host": lf_spark_source_database_host,
        "spark.source.url": lf_spark_source_url,
        "spark.source.driver": lf_spark_source_driver,
        "spark.source.user": lf_spark_source_user,
        "spark.source.password": lf_spark_source_password,
        "spark.source.numpartitions": lf_spark_source_numpartitions,
        "spark.sink.url": lf_spark_sink_url,
        "spark.sink.driver": lf_spark_sink_driver,
        "spark.sink.user": lf_spark_sink_user,
        "spark.sink.password": lf_spark_sink_password,
        "spark.sink.dbtable": lf_spark_sink_dbtable,
        "spark.sink.numpartitions": lf_spark_sink_numpartitions
    }
    custom_default_conf = default_conf.copy()
    custom_default_conf.update(task_conf)
    load_all_facilities = SparkSubmitOperator(task_id='load_facilities',
                                              conn_id=default_conf['connection_id'],
                                              application=f"{default_conf['spark_app_home']}/load-all-facilities-1.0-SNAPSHOT-jar-with-dependencies.jar",
                                              total_executor_cores=default_conf['default_spark_total_executor_cores'],
                                              executor_cores=default_conf['default_spark_executor_cores'],
                                              executor_memory=default_conf['default_spark_executor_memory'],
                                              driver_memory=default_conf['default_spark_driver_memory'],
                                              name='load_facilities',
                                              conf=custom_default_conf,
                                              execution_timeout=timedelta(
                                                      minutes=600),
                                              dag=dag
                                              )

    return load_all_facilities
