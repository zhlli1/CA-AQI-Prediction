# California Air Quality Prediction

## Problem Description

Due to the rapid global Industrialization and urbanization process, environmental pollution issues such as air pollution have become more and more severe. The problem of air pollution is much severe in California.  Air quality forecasting is an effective way of protecting public health by providing an early warning against harmful air pollutants.

The Air Quality Index (AQI) is an index for reporting daily air quality and it can be used to warn the public when air pollution is hazardous. Now, with the development of big data technology, many studies have been predicted air quality through machine learning or deep learning based model to achieve better accuracy. However, these studies simply apply the machine learning models and seldomly utilize distributed system computing methods.  As the volume of data increase,  it would be computationally expansive to train these machine learning and deep learning models without using distributed computing system.

In this study, we focus on using Big Data technology (MongoDB, Apache Spark, AWS) and machine learning methods to model and predict California daily AQI with better computation efficiency on the basis of historical metrological data and air pollution data. By doing this, this study aims to give public warning in advance and let the public sector to engage in pre-event planning.

To achieve these, our study evaluated the Spark performance under different type of machine learning algorithm. We also compared the its performance with the similar processes being run on a local machine with PySpark (standalone) or with Python machine learning library Scikit-Learn. This would help us to determine which condition is beneficial to implement distributed systems for machine learning algorithm to achieve better computation efficiency.
 
## System Workflow 

For this study, the data science pipeline was designed around scalability, cloud resources, and distributed computing methods. In this case, we developed our pipeline by using Amazon Web Service (AWS), for AWS can provide high availability and scalability and makes its components including storage and processing engines to be compatible.  In general,  our preprocessed data was stored in AWS Simple Storage Service(S3) bucket, then data was transferred and loaded into the MongoDB on AWS Elastic Compute Cloud (EC2). Later, our data was processed using Apache Spark on AWS Elastic MapReduce (EMR).

![alt text](https://github.com/zhlli1/Spark_AirQualityIndexClassification/blob/master/workflow.png)

To achieve this,  this project included the following files: 

<ul>
<li> LR_PySpark.ipynb; implement Logistic Regression with Spark ML </li>
<li> LR_Sklearn.ipynb; implement Logistic Regression with Scikit-Learn </li>
<li> RF_PySpark.ipynb; implement Random Forest Classification with Spark ML </li>
<li> RF_SKlearn.ipynb; implement Random Forest Classification with Scikit-Learn</li>
<li> data_query.ipynb; implement big query for data loading and data preprocessing </li>
</ul>

As for the evulation part, the EvalutionMetric Folder included the following files :

<ul>
<li> Plot.R; implement ggplot for ploting  </li>
<li> Time_RF.csv; Comparison of Random Forest Regressor fit times for Cluster vs PySpark (standalone) </li>
<li> sklearn_RF.csv; Random Forest Regressor fit times for  Scikit-Learn</li>
<li> sklearn_Algorithm.csv; Comparison of different algorithms fit times for Cluster vs PySpark (standalone) </li>
<li> accuracy_EMR.csv; implement Different algorithms fit times for Scikit-Learn</li>
</ul>
