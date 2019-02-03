accuracy_EMR = read.csv('/Users/zhili/Desktop/accuracy_EMR.csv')
time_RF = read.csv("/Users/zhili/Desktop/Time_RF.csv")
time_Algorithm = read.csv("/Users/zhili/Desktop/Time_algorithm.csv")
sklearn_Algorithm =read.csv('/Users/zhili/Desktop/sklearn_Algorithm.csv')
sklearn_RF =read.csv('/Users/zhili/Desktop/sklearn_RF.csv')

library(ggplot2)
library(cowplot)

accuracy_EMR
par(mfrow=c(1,1))
## Plot for the Evaluation metrics for different algorithm on EMR Cluster with 8GB CPU 
ggplot(data=accuracy_EMR, aes(x=Algorithm , y=Value, fill=Evaluation.Metrics )) +
  geom_bar(stat="identity", position=position_dodge())+
  theme(axis.text.x = element_text(angle = 50, hjust = 1,size=11),
        axis.title.x= element_text(size=14,face="bold"),
        axis.title.y= element_text(size=14,face="bold"))

## Plot for the executation time of Random Forest Classification  with different settings and number of Trees 
time_RF
sklearn_RF
cbbPalette <- c("#000000", "#E69F00", "#56B4E9", "#009E73", "#F0E442", "#0072B2", "#D55E00", "#CC79A7")

ggplot(data=time_RF, aes(x=Setting , y=CPU.TOTAL, fill=Tree )) +
  geom_bar(stat="identity", position=position_dodge())+
  ylab("Total CPU Execution Time (ms)")+
  theme(axis.text.x = element_text(angle = 50, hjust = 1,size=11),
        axis.title.x= element_text(size=14,face="bold"),
        axis.title.y= element_text(size=14,face="bold"))+
  scale_fill_brewer()

ggplot(data=sklearn_RF, aes(x=Setting , y=CPU.TOTAL, fill=Tree )) +
  geom_bar(stat="identity", position=position_dodge())+
  ylab("Total CPU Execution Time (s)")+
  theme(axis.text.x = element_text(angle = 50, hjust = 1,size=11),
        axis.title.x= element_text(size=14,face="bold"),
        axis.title.y= element_text(size=14,face="bold"))+
  scale_fill_brewer()

## Plot for the different executation time on different algorithms with different settings 
time_Algorithm
sklearn_Algorithm
a<-ggplot(data=time_Algorithm ,aes(x=Setting , y=CPU.TOTAL, fill=Algorithm )) +
  geom_bar(stat="identity", position=position_dodge())+
  ylab("Total CPU Execution Time (s)")+
  theme(axis.text.x = element_text(angle = 50, hjust = 1,size=11),
        axis.title.x= element_text(size=14,face="bold"),
        axis.title.y= element_text(size=14,face="bold"))

b<-ggplot(data=sklearn_Algorithm, aes(x=Setting , y=CPU.TOTAL, fill=Algorithm )) +
  geom_bar(stat="identity", position=position_dodge())+
  ylab("Total CPU Execution Time (s)")+
  theme(axis.text.x = element_text(angle = 50, hjust = 1,size=11),
        axis.title.x= element_text(size=14,face="bold"),
        axis.title.y= element_text(size=14,face="bold"))
a
b
plot_grid(a, b, labels = "AUTO")
