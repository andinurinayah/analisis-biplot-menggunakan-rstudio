#Panggil library yang diperlukan dan pastikan sudah install library tersebut
library(factoextra)

#import data City crime
data<- read.csv(file.choose(),header = T) 

X<-scale(data[,2:8])
X.stad<-as.matrix(X)
rownames(X.stad)<-data[,1]
Model<-princomp(X.stad,cor=T,score=T, main="Biplot City Crime", line=3)

fviz_pca_biplot(Model)

