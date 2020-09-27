# ALGORITMOS DE AGRUPAMENTO

___

### Implementação básica no R dos principais algoritmos de machine learning para agrupamento de dados.

___


### Dataset
Indicadores socioeconômicos de 150 países em datasets/dados.csv

___

### Pacotes necessários

```
install.packages("factoextra")
install.packages("fpc")
install.packages("dbscan")
install.packages("cluster")
install.packages("factoextra")

```
___

### K-Means
Definição do parâmetro k, implementação, impressão do agrupamento e visualização com gráfico de componentes principais. Avaliação do algotitmo pelo coeficiente de silhueta.

### Agrupamento hierárquico
Implementação, impressão do agrupamento e visualização com gráfico de componentes principais. Avaliação do algotitmo pelo coeficiente de silhueta.

### Dbscan
Definição do parâmetro epsilon, implementação, impressão do agrupamento e visualização com gráfico de componentes principais. Avaliação do algotitmo pelo coeficiente de silhueta.

___

### Resultados
Comparação da média dos coeficientes de silhueta para cada método.

| Algoritmo   | Silhouette width|
|-|-|
| k-means     | 0.30 |
| Hierárquico | 0.23 |
| DBscan      | 0.13 |
