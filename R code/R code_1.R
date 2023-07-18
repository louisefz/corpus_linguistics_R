library(tidyverse)
library(mclm)
library(XML)
library(filesstrings)


##### the source corpus archives files randomly according to the alphabet order including A, B, C, D, E, F, G, H, J and K. 
###to sort out source XML files according to genres
##### the source files in alphabetic directories will be traversed one by one, and pick out the source file with the target genre. Then the picked files will be stored in the new categories.
#### That is source texts with the identical genre will be put in one new directory.
#### As R Studio is not good at looping and traversing, each time of looping has been seperate apart. You can see there are 4 blocks of R codes that share the same logic. 
BNP_fnames <- get_fnames("/Users/zhoujie/Desktop/Texts/text_classified/stext_CONVRSN")
print(BNP_fnames)


BNP_flist <- freqlist(BNP_fnames)%>%
  print(n=10)




####find all paths of ACPROSE wtext files, and turn them into a vector. Then put these files into a new file named "ACPROSE"
bnc_corpus <- get_fnames("/Users/zhoujie/Desktop/Texts/A")
#print(bnc_corpus) 
A_file<- as.vector(bnc_corpus)
print(A_file)



for (a in A_file){
  result <- xmlTreeParse(a)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "ACPROSE") {
    file.move(a, "/Users/zhoujie/Desktop/Texts/wtext_ACPROSE")
  }
}


bnc_corpus_B <- get_fnames("/Users/zhoujie/Desktop/Texts/B")
print(bnc_corpus_B) 
B_file<- as.vector(bnc_corpus_B)
print(B_file)
for (b in B_file){
  result <- xmlTreeParse(b)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "ACPROSE") {
    file.move(b, "/Users/zhoujie/Desktop/Texts/wtext_ACPROSE")
  }
}


bnc_corpus_C <- get_fnames("/Users/zhoujie/Desktop/Texts/C")
print(bnc_corpus_C) 
C_file<- as.vector(bnc_corpus_C)
print(C_file)
for (c in C_file){
  result <- xmlTreeParse(c)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "ACPROSE") {
    file.move(c, "/Users/zhoujie/Desktop/Texts/wtext_ACPROSE")
  }
}




bnc_corpus_D <- get_fnames("/Users/zhoujie/Desktop/Texts/D")
print(bnc_corpus_D) 
D_file<- as.vector(bnc_corpus_D)
print(D_file)
for (d in D_file){
  result <- xmlTreeParse(d)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "ACPROSE") {
    file.move(d, "/Users/zhoujie/Desktop/Texts/wtext_ACPROSE")
  }
}


bnc_corpus_E <- get_fnames("/Users/zhoujie/Desktop/Texts/E")
print(bnc_corpus_E) 
E_file<- as.vector(bnc_corpus_E)
print(E_file)
for (e in E_file){
  result <- xmlTreeParse(e)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "ACPROSE") {
    file.move(e, "/Users/zhoujie/Desktop/Texts/wtext_ACPROSE")
  }
}




bnc_corpus_F <- get_fnames("/Users/zhoujie/Desktop/Texts/F")
print(bnc_corpus_F) 
F_file<- as.vector(bnc_corpus_F)
print(F_file)
for (f in F_file){
  result <- xmlTreeParse(f)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "ACPROSE") {
    file.move(f, "/Users/zhoujie/Desktop/Texts/wtext_ACPROSE")
  }
}




bnc_corpus_G <- get_fnames("/Users/zhoujie/Desktop/Texts/G")
print(bnc_corpus_G) 
G_file<- as.vector(bnc_corpus_G)
print(G_file)
for (g in G_file){
  result <- xmlTreeParse(g)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "ACPROSE") {
    file.move(g, "/Users/zhoujie/Desktop/Texts/wtext_ACPROSE")
  }
}




bnc_corpus_H <- get_fnames("/Users/zhoujie/Desktop/Texts/H")
print(bnc_corpus_H) 
H_file<- as.vector(bnc_corpus_H)
print(H_file)
for (h in H_file){
  result <- xmlTreeParse(h)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "ACPROSE") {
    file.move(h, "/Users/zhoujie/Desktop/Texts/wtext_ACPROSE")
  }
}



bnc_corpus_J <- get_fnames("/Users/zhoujie/Desktop/Texts/J")
print(bnc_corpus_J) 
J_file<- as.vector(bnc_corpus_J)
print(J_file)
for (j in J_file){
  result <- xmlTreeParse(j)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "ACPROSE") {
    file.move(j, "/Users/zhoujie/Desktop/Texts/wtext_ACPROSE")
  }
}




bnc_corpus_K <- get_fnames("/Users/zhoujie/Desktop/Texts/K")
print(bnc_corpus_K) 
K_file<- as.vector(bnc_corpus_K)
print(K_file)
for (k in K_file){
  result <- xmlTreeParse(k)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "ACPROSE") {
    file.move(k, "/Users/zhoujie/Desktop/Texts/wtext_ACPROSE")
  }
}



####find all paths of FICTION wtext files, and turn them into a vector. Then put these files into a new file named "FICTION"
bnc_corpus <- get_fnames("/Users/zhoujie/Desktop/Texts/A")
#print(bnc_corpus) 
A_file<- as.vector(bnc_corpus)
print(A_file)
for (a in A_file){
  result <- xmlTreeParse(a)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "FICTION") {
    file.move(a, "/Users/zhoujie/Desktop/Texts/wtext_FICTION")
  }
}


bnc_corpus_B <- get_fnames("/Users/zhoujie/Desktop/Texts/B")
print(bnc_corpus_B) 
B_file<- as.vector(bnc_corpus_B)
print(B_file)
for (b in B_file){
  result <- xmlTreeParse(b)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "FICTION") {
    file.move(b, "/Users/zhoujie/Desktop/Texts/wtext_FICTION")
  }
}


bnc_corpus_C <- get_fnames("/Users/zhoujie/Desktop/Texts/C")
print(bnc_corpus_C) 
C_file<- as.vector(bnc_corpus_C)
print(C_file)
for (c in C_file){
  result <- xmlTreeParse(c)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "FICTION") {
    file.move(c, "/Users/zhoujie/Desktop/Texts/wtext_FICTION")
  }
}




bnc_corpus_D <- get_fnames("/Users/zhoujie/Desktop/Texts/D")
print(bnc_corpus_D) 
D_file<- as.vector(bnc_corpus_D)
print(D_file)
for (d in D_file){
  result <- xmlTreeParse(d)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "FICTION") {
    file.move(d, "/Users/zhoujie/Desktop/Texts/wtext_FICTION")
  }
}


bnc_corpus_E <- get_fnames("/Users/zhoujie/Desktop/Texts/E")
print(bnc_corpus_E) 
E_file<- as.vector(bnc_corpus_E)
print(E_file)
for (e in E_file){
  result <- xmlTreeParse(e)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "FICTION") {
    file.move(e, "/Users/zhoujie/Desktop/Texts/wtext_FICTION")
  }
}




bnc_corpus_F <- get_fnames("/Users/zhoujie/Desktop/Texts/F")
print(bnc_corpus_F) 
F_file<- as.vector(bnc_corpus_F)
print(F_file)
for (f in F_file){
  result <- xmlTreeParse(f)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "FICTION") {
    file.move(f, "/Users/zhoujie/Desktop/Texts/wtext_FICTION")
  }
}




bnc_corpus_G <- get_fnames("/Users/zhoujie/Desktop/Texts/G")
print(bnc_corpus_G) 
G_file<- as.vector(bnc_corpus_G)
print(G_file)
for (g in G_file){
  result <- xmlTreeParse(g)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "FICTION") {
    file.move(g, "/Users/zhoujie/Desktop/Texts/wtext_FICTION")
  }
}




bnc_corpus_H <- get_fnames("/Users/zhoujie/Desktop/Texts/H")
print(bnc_corpus_H) 
H_file<- as.vector(bnc_corpus_H)
print(H_file)
for (h in H_file){
  result <- xmlTreeParse(h)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "FICTION") {
    file.move(h, "/Users/zhoujie/Desktop/Texts/wtext_FICTION")
  }
}



bnc_corpus_J <- get_fnames("/Users/zhoujie/Desktop/Texts/J")
print(bnc_corpus_J) 
J_file<- as.vector(bnc_corpus_J)
print(J_file)
for (j in J_file){
  result <- xmlTreeParse(j)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "FICTION") {
    file.move(j, "/Users/zhoujie/Desktop/Texts/wtext_FICTION")
  }
}




bnc_corpus_K <- get_fnames("/Users/zhoujie/Desktop/Texts/K")
print(bnc_corpus_K) 
K_file<- as.vector(bnc_corpus_K)
print(K_file)
for (k in K_file){
  result <- xmlTreeParse(k)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "FICTION") {
    file.move(k, "/Users/zhoujie/Desktop/Texts/wtext_FICTION")
  }
}

####find all paths of NEWS wtext files, and turn them into a vector. Then put these files into a new file named "NEWS"

bnc_corpus <- get_fnames("/Users/zhoujie/Desktop/Texts/A")
#print(bnc_corpus) 
A_file<- as.vector(bnc_corpus)
print(A_file)
for (a in A_file){
  result <- xmlTreeParse(a)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "NEWS") {
    file.move(a, "/Users/zhoujie/Desktop/Texts/wtext_NEWS")
  }
}


bnc_corpus_B <- get_fnames("/Users/zhoujie/Desktop/Texts/B")
print(bnc_corpus_B) 
B_file<- as.vector(bnc_corpus_B)
print(B_file)
for (b in B_file){
  result <- xmlTreeParse(b)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "NEWS") {
    file.move(b, "/Users/zhoujie/Desktop/Texts/wtext_NEWS")
  }
}


bnc_corpus_C <- get_fnames("/Users/zhoujie/Desktop/Texts/C")
print(bnc_corpus_C) 
C_file<- as.vector(bnc_corpus_C)
print(C_file)
for (c in C_file){
  result <- xmlTreeParse(c)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "NEWS") {
    file.move(c, "/Users/zhoujie/Desktop/Texts/wtext_NEWS")
  }
}




bnc_corpus_D <- get_fnames("/Users/zhoujie/Desktop/Texts/D")
print(bnc_corpus_D) 
D_file<- as.vector(bnc_corpus_D)
print(D_file)
for (d in D_file){
  result <- xmlTreeParse(d)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "NEWS") {
    file.move(d, "/Users/zhoujie/Desktop/Texts/wtext_NEWS")
  }
}


bnc_corpus_E <- get_fnames("/Users/zhoujie/Desktop/Texts/E")
print(bnc_corpus_E) 
E_file<- as.vector(bnc_corpus_E)
print(E_file)
for (e in E_file){
  result <- xmlTreeParse(e)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "NEWS") {
    file.move(e, "/Users/zhoujie/Desktop/Texts/wtext_NEWS")
  }
}




bnc_corpus_F <- get_fnames("/Users/zhoujie/Desktop/Texts/F")
print(bnc_corpus_F) 
F_file<- as.vector(bnc_corpus_F)
print(F_file)
for (f in F_file){
  result <- xmlTreeParse(f)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "NEWS") {
    file.move(f, "/Users/zhoujie/Desktop/Texts/wtext_NEWS")
  }
}




bnc_corpus_G <- get_fnames("/Users/zhoujie/Desktop/Texts/G")
print(bnc_corpus_G) 
G_file<- as.vector(bnc_corpus_G)
print(G_file)
for (g in G_file){
  result <- xmlTreeParse(g)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "NEWS") {
    file.move(g, "/Users/zhoujie/Desktop/Texts/wtext_NEWS")
  }
}




bnc_corpus_H <- get_fnames("/Users/zhoujie/Desktop/Texts/H")
print(bnc_corpus_H) 
H_file<- as.vector(bnc_corpus_H)
print(H_file)
for (h in H_file){
  result <- xmlTreeParse(h)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "NEWS") {
    file.move(h, "/Users/zhoujie/Desktop/Texts/wtext_NEWS")
  }
}



bnc_corpus_J <- get_fnames("/Users/zhoujie/Desktop/Texts/J")
print(bnc_corpus_J) 
J_file<- as.vector(bnc_corpus_J)
print(J_file)
for (j in J_file){
  result <- xmlTreeParse(j)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "NEWS") {
    file.move(j, "/Users/zhoujie/Desktop/Texts/wtext_NEWS")
  }
}




bnc_corpus_K <- get_fnames("/Users/zhoujie/Desktop/Texts/K")
print(bnc_corpus_K) 
K_file<- as.vector(bnc_corpus_K)
print(K_file)
for (k in K_file){
  result <- xmlTreeParse(k)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "NEWS") {
    file.move(k, "/Users/zhoujie/Desktop/Texts/wtext_NEWS")
  }
}


####find all paths of NONAC wtext files, and turn them into a vector. Then put these files into a new file named "NONAC"


bnc_corpus <- get_fnames("/Users/zhoujie/Desktop/Texts/A")
#print(bnc_corpus) 
A_file<- as.vector(bnc_corpus)
print(A_file)
for (a in A_file){
  result <- xmlTreeParse(a)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "NONAC") {
    file.move(a, "/Users/zhoujie/Desktop/Texts/wtext_NONAC")
  }
}


bnc_corpus_B <- get_fnames("/Users/zhoujie/Desktop/Texts/B")
print(bnc_corpus_B) 
B_file<- as.vector(bnc_corpus_B)
print(B_file)
for (b in B_file){
  result <- xmlTreeParse(b)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "NONAC") {
    file.move(b, "/Users/zhoujie/Desktop/Texts/wtext_NONAC")
  }
}


bnc_corpus_C <- get_fnames("/Users/zhoujie/Desktop/Texts/C")
print(bnc_corpus_C) 
C_file<- as.vector(bnc_corpus_C)
print(C_file)
for (c in C_file){
  result <- xmlTreeParse(c)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "NONAC") {
    file.move(c, "/Users/zhoujie/Desktop/Texts/wtext_NONAC")
  }
}




bnc_corpus_D <- get_fnames("/Users/zhoujie/Desktop/Texts/D")
print(bnc_corpus_D) 
D_file<- as.vector(bnc_corpus_D)
print(D_file)
for (d in D_file){
  result <- xmlTreeParse(d)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "NONAC") {
    file.move(d, "/Users/zhoujie/Desktop/Texts/wtext_NONAC")
  }
}


bnc_corpus_E <- get_fnames("/Users/zhoujie/Desktop/Texts/E")
print(bnc_corpus_E) 
E_file<- as.vector(bnc_corpus_E)
print(E_file)
for (e in E_file){
  result <- xmlTreeParse(e)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "NONAC") {
    file.move(e, "/Users/zhoujie/Desktop/Texts/wtext_NONAC")
  }
}




bnc_corpus_F <- get_fnames("/Users/zhoujie/Desktop/Texts/F")
print(bnc_corpus_F) 
F_file<- as.vector(bnc_corpus_F)
print(F_file)
for (f in F_file){
  result <- xmlTreeParse(f)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "NONAC") {
    file.move(f, "/Users/zhoujie/Desktop/Texts/wtext_NONAC")
  }
}




bnc_corpus_G <- get_fnames("/Users/zhoujie/Desktop/Texts/G")
print(bnc_corpus_G) 
G_file<- as.vector(bnc_corpus_G)
print(G_file)
for (g in G_file){
  result <- xmlTreeParse(g)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "NONAC") {
    file.move(g, "/Users/zhoujie/Desktop/Texts/wtext_NONAC")
  }
}




bnc_corpus_H <- get_fnames("/Users/zhoujie/Desktop/Texts/H")
print(bnc_corpus_H) 
H_file<- as.vector(bnc_corpus_H)
print(H_file)
for (h in H_file){
  result <- xmlTreeParse(h)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "NONAC") {
    file.move(h, "/Users/zhoujie/Desktop/Texts/wtext_NONAC")
  }
}



bnc_corpus_J <- get_fnames("/Users/zhoujie/Desktop/Texts/J")
print(bnc_corpus_J) 
J_file<- as.vector(bnc_corpus_J)
print(J_file)
for (j in J_file){
  result <- xmlTreeParse(j)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "NONAC") {
    file.move(j, "/Users/zhoujie/Desktop/Texts/wtext_NONAC")
  }
}




bnc_corpus_K <- get_fnames("/Users/zhoujie/Desktop/Texts/K")
print(bnc_corpus_K) 
K_file<- as.vector(bnc_corpus_K)
print(K_file)
for (k in K_file){
  result <- xmlTreeParse(k)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "NONAC") {
    file.move(k, "/Users/zhoujie/Desktop/Texts/wtext_NONAC")
  }
}


####find all paths of CONVERSN Stext files, and turn them into a vector. Then put these files into a new file named "CONVERSN"


bnc_corpus <- get_fnames("/Users/zhoujie/Desktop/Texts/A")
#print(bnc_corpus) 
A_file<- as.vector(bnc_corpus)
print(A_file)
for (a in A_file){
  result <- xmlTreeParse(a)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "CONVRSN") {
    file.move(a, "/Users/zhoujie/Desktop/Texts/stext_CONVRSN")
  }
}


bnc_corpus_B <- get_fnames("/Users/zhoujie/Desktop/Texts/B")
print(bnc_corpus_B) 
B_file<- as.vector(bnc_corpus_B)
print(B_file)
for (b in B_file){
  result <- xmlTreeParse(b)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "CONVRSN") {
    file.move(b, "/Users/zhoujie/Desktop/Texts/stext_CONVRSN")
  }
}


bnc_corpus_C <- get_fnames("/Users/zhoujie/Desktop/Texts/C")
print(bnc_corpus_C) 
C_file<- as.vector(bnc_corpus_C)
print(C_file)
for (c in C_file){
  result <- xmlTreeParse(c)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "CONVRSN") {
    file.move(c, "/Users/zhoujie/Desktop/Texts/stext_CONVRSN")
  }
}




bnc_corpus_D <- get_fnames("/Users/zhoujie/Desktop/Texts/D")
print(bnc_corpus_D) 
D_file<- as.vector(bnc_corpus_D)
print(D_file)
for (d in D_file){
  result <- xmlTreeParse(d)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "CONVRSN") {
    file.move(d, "/Users/zhoujie/Desktop/Texts/stext_CONVRSN")
  }
}


bnc_corpus_E <- get_fnames("/Users/zhoujie/Desktop/Texts/E")
print(bnc_corpus_E) 
E_file<- as.vector(bnc_corpus_E)
print(E_file)
for (e in E_file){
  result <- xmlTreeParse(e)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "CONVRSN") {
    file.move(e, "/Users/zhoujie/Desktop/Texts/stext_CONVRSN")
  }
}




bnc_corpus_F <- get_fnames("/Users/zhoujie/Desktop/Texts/F")
print(bnc_corpus_F) 
F_file<- as.vector(bnc_corpus_F)
print(F_file)
for (f in F_file){
  result <- xmlTreeParse(f)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "CONVRSN") {
    file.move(f, "/Users/zhoujie/Desktop/Texts/stext_CONVRSN")
  }
}




bnc_corpus_G <- get_fnames("/Users/zhoujie/Desktop/Texts/G")
print(bnc_corpus_G) 
G_file<- as.vector(bnc_corpus_G)
print(G_file)
for (g in G_file){
  result <- xmlTreeParse(g)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "CONVRSN") {
    file.move(g, "/Users/zhoujie/Desktop/Texts/stext_CONVRSN")
  }
}




bnc_corpus_H <- get_fnames("/Users/zhoujie/Desktop/Texts/H")
print(bnc_corpus_H) 
H_file<- as.vector(bnc_corpus_H)
print(H_file)
for (h in H_file){
  result <- xmlTreeParse(h)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "CONVRSN") {
    file.move(h, "/Users/zhoujie/Desktop/Texts/stext_CONVRSN")
  }
}



bnc_corpus_J <- get_fnames("/Users/zhoujie/Desktop/Texts/J")
print(bnc_corpus_J) 
J_file<- as.vector(bnc_corpus_J)
print(J_file)
for (j in J_file){
  result <- xmlTreeParse(j)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "CONVRSN") {
    file.move(j, "/Users/zhoujie/Desktop/Texts/stext_CONVRSN")
  }
}




bnc_corpus_K <- get_fnames("/Users/zhoujie/Desktop/Texts/K")
print(bnc_corpus_K) 
K_file<- as.vector(bnc_corpus_K)
print(K_file)
for (k in K_file){
  result <- xmlTreeParse(k)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "CONVRSN") {
    file.move(k, "/Users/zhoujie/Desktop/Texts/stext_CONVRSN")
  }
}


####find all paths of OTHERSP stext files, and turn them into a vector. Then put these files into a new file named "OTHERSP"


bnc_corpus <- get_fnames("/Users/zhoujie/Desktop/Texts/A")
#print(bnc_corpus) 
A_file<- as.vector(bnc_corpus)
print(A_file)
for (a in A_file){
  result <- xmlTreeParse(a)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "OTHERSP") {
    file.move(a, "/Users/zhoujie/Desktop/Texts/stext_OTHERSP")
  }
}


bnc_corpus_B <- get_fnames("/Users/zhoujie/Desktop/Texts/B")
print(bnc_corpus_B) 
B_file<- as.vector(bnc_corpus_B)
print(B_file)
for (b in B_file){
  result <- xmlTreeParse(b)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "OTHERSP") {
    file.move(b, "/Users/zhoujie/Desktop/Texts/stext_OTHERSP")
  }
}


bnc_corpus_C <- get_fnames("/Users/zhoujie/Desktop/Texts/C")
print(bnc_corpus_C) 
C_file<- as.vector(bnc_corpus_C)
print(C_file)
for (c in C_file){
  result <- xmlTreeParse(c)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "OTHERSP") {
    file.move(c, "/Users/zhoujie/Desktop/Texts/stext_OTHERSP")
  }
}




bnc_corpus_D <- get_fnames("/Users/zhoujie/Desktop/Texts/D")
print(bnc_corpus_D) 
D_file<- as.vector(bnc_corpus_D)
print(D_file)
for (d in D_file){
  result <- xmlTreeParse(d)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "OTHERSP") {
    file.move(d, "/Users/zhoujie/Desktop/Texts/stext_OTHERSP")
  }
}


bnc_corpus_E <- get_fnames("/Users/zhoujie/Desktop/Texts/E")
print(bnc_corpus_E) 
E_file<- as.vector(bnc_corpus_E)
print(E_file)
for (e in E_file){
  result <- xmlTreeParse(e)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "OTHERSP") {
    file.move(e, "/Users/zhoujie/Desktop/Texts/stext_OTHERSP")
  }
}




bnc_corpus_F <- get_fnames("/Users/zhoujie/Desktop/Texts/F")
print(bnc_corpus_F) 
F_file<- as.vector(bnc_corpus_F)
print(F_file)
for (f in F_file){
  result <- xmlTreeParse(f)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "OTHERSP") {
    file.move(f, "/Users/zhoujie/Desktop/Texts/stext_OTHERSP")
  }
}




bnc_corpus_G <- get_fnames("/Users/zhoujie/Desktop/Texts/G")
print(bnc_corpus_G) 
G_file<- as.vector(bnc_corpus_G)
print(G_file)
for (g in G_file){
  result <- xmlTreeParse(g)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "OTHERSP") {
    file.move(g, "/Users/zhoujie/Desktop/Texts/stext_OTHERSP")
  }
}




bnc_corpus_H <- get_fnames("/Users/zhoujie/Desktop/Texts/H")
print(bnc_corpus_H) 
H_file<- as.vector(bnc_corpus_H)
print(H_file)
for (h in H_file){
  result <- xmlTreeParse(h)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "OTHERSP") {
    file.move(h, "/Users/zhoujie/Desktop/Texts/stext_OTHERSP")
  }
}



bnc_corpus_J <- get_fnames("/Users/zhoujie/Desktop/Texts/J")
print(bnc_corpus_J) 
J_file<- as.vector(bnc_corpus_J)
print(J_file)
for (j in J_file){
  result <- xmlTreeParse(j)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "OTHERSP") {
    file.move(j, "/Users/zhoujie/Desktop/Texts/stext_OTHERSP")
  }
}




bnc_corpus_K <- get_fnames("/Users/zhoujie/Desktop/Texts/K")
print(bnc_corpus_K) 
K_file<- as.vector(bnc_corpus_K)
print(K_file)
for (k in K_file){
  result <- xmlTreeParse(k)
  rootnode <- xmlRoot(result)
  relsuot<-xmlGetAttr(rootnode[[2]], name = "type")
  if (relsuot == "OTHERSP") {
    file.move(k, "/Users/zhoujie/Desktop/Texts/stext_OTHERSP")
  }
}



