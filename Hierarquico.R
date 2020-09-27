library(factoextra)

###Dataset
dados<-read.csv('dataset/dados.csv', row.names = 1)
dados<-scale(dados)


###Agrupamento hierárquico
#Implementação
hc <- eclust(dados, FUNcluster = 'hclust', hc_method='ward.D')
fviz_dend(hc)

#Resultados
hc$cluster
hc$size

###Visualização (gráfico de componentes principais)
fviz_cluster(hc, geom='text',xlab='', ylab='', main='Grupos com agrupamento hierárquico', repel=TRUE)

###Avaliação
silhueta<-hc$silinfo
fviz_silhouette(hc)
#Por observação
silhueta$widths[order(silhueta$widths$cluster, silhueta$widths$sil_width, decreasing = TRUE),]
#Por cluster
silhueta$clus.avg.widths
#Média
silhueta$avg.width


