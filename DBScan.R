library(factoextra)
library(fpc)
library(dbscan)
library(cluster)

###Dataset
dados<-read.csv('dataset/dados.csv', row.names = 1)
dados<-scale(dados)

###DBScan
minpts<-3

#Definição do epsilon
kNNdistplot(dados, k =  minpts)
abline(h = 1.2)

#Implemenação 
dbscan_cluster<-fpc::dbscan(dados, eps=1.2, MinPts =minpts)

#Resultados
table(dbscan_cluster$cluster)

#Visualização (gráfico de componentes principais)
fviz_cluster(dbscan_cluster, data=dados,geom = "text", xlab = '', ylab = '', main='Grupos com DBScan')

###Avaliação
cs<-cluster.stats(dist(dados),  dbscan_cluster$cluster)
#Média por cluster (coeficiente de silhueta)
cs$clus.avg.silwidths
#Média geral
cs$avg.silwidth

