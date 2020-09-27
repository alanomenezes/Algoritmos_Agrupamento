library(factoextra)
library(fpc)

###Dataset
dados<-read.csv('dataset/dados.csv', row.names = 1)
dados<-scale(dados)

###K-Means
#Elbow method para definir k
fviz_nbclust(dados, FUNcluster = kmeans, method = "wss")

#Implementação
kmeans_clusters <- eclust(dados, FUNcluster = 'kmeans' , k = 4, graph = FALSE)

#Resultados
kmeans_clusters$centers
kmeans_clusters$cluster
kmeans_clusters$size

#Visualização (gráfico de componentes principais)
fviz_cluster(kmeans_clusters, geom='text',xlab='', ylab='', main='Grupos com kmeans', repel=TRUE)

###Avaliação
silhueta<-kmeans_clusters$silinfo
fviz_silhouette(kmeans_clusters)

#Por observação
silhueta$widths[order(silhueta$widths$cluster, silhueta$widths$sil_width, decreasing = TRUE),]
#Por cluster
silhueta$clus.avg.widths
#Média
silhueta$avg.width
