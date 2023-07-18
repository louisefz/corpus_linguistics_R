library(tidyverse)
library(mclm)
library(XML)
####retrieve all sentences which contains "announce" and "declare"
#####academy
BNP_fnames1 <- get_fnames("/Users/zhoujie/Desktop/Texts/text_classified/txt/wtext_ACPROSE_TXT")
print(BNP_fnames1)
academy_announce <- conc(BNP_fnames1, re('announce'))
print(academy_announce）
write.csv(academy_announce, "/Users/zhoujie/Documents/corpus/项目/project_academy_announce.csv", append ="T")

academy_declare <- conc(BNP_fnames1, re('declare'))
print(academy_declare）
write.csv(academy_declare, "/Users/zhoujie/Documents/corpus/项目/project_academy_declare.csv", append ="T")

#####fiction
BNP_fnames2 <- get_fnames("/Users/zhoujie/Desktop/Texts/text_classified/txt/wtext_FICTION_TXT")
print(BNP_fnames2)
fiction_announce <- conc(BNP_fnames2, re('announce'))
print(fiction_announce）
write.csv(fiction_announce, "/Users/zhoujie/Documents/corpus/项目/project_fiction_announce.csv", append ="T")

fiction_declare <- conc(BNP_fnames2, re('declare'))
print(fiction_declare）
write.csv(fiction_declare, "/Users/zhoujie/Documents/corpus/项目/project_fiction_declare.csv", append ="T")


##### news
BNP_fnames3 <- get_fnames("/Users/zhoujie/Desktop/Texts/text_classified/txt/wtext_NEWS_TXT")
print(BNP_fnames3)
news_announce <- conc(BNP_fnames3, re('announce'))
print(news_announce）
write.csv(news_announce, "/Users/zhoujie/Documents/corpus/项目/project_news_announce.csv", append ="T")
      

news_declare <- conc(BNP_fnames3, re('declare'))
print(news_declare）
write.csv(news_declare, "/Users/zhoujie/Documents/corpus/项目/project_news_declare.csv", append ="T")

##### spoken
BNP_fnames4 <- get_fnames("/Users/zhoujie/Desktop/Texts/text_classified/txt/stext_OTHERSP_TXT")
print(BNP_fnames4)
spoken_announce <- conc(BNP_fnames4, re('announce'))
print(spoken_announce）
write.csv(spoken_announce, "/Users/zhoujie/Documents/corpus/项目/project_spoken_announce.csv", append ="T")
      
      
spoken_declare <- conc(BNP_fnames4, re('declare'))
print(spoken_declare）
write.csv(spoken_declare, "/Users/zhoujie/Documents/corpus/项目/project_spoken_declare.csv", append ="T")




######multiple logistc regression
library(rms)
project <- read.csv("/Users/zhoujie/Documents/corpus/project/csv/big_csv/project_form_no_sentence.csv")

head(project)
project$variant <- factor(project$variant)
levels(project$variant) ####declare是success level

###the first model: main effects only
project.glm.1 <- glm(as.factor(variant) ~ sentiment + objectivity + 
                                        emotion + type, 
                    data=project, family=binomial)
summary(project.glm.1)
confint(project.glm.1)


with(project.glm.1, pchisq(null.deviance-deviance, df.null-df.residual, lower.tail=FALSE))  ####p值很小，说明模型拟合得很好


### predition correction
pred <- predict(project.glm.1, type = "response")
obs <- as.numeric(project$variant) - 1
head(obs)
class.table <- table(obs, as.numeric(pred>=0.5),
                     dnn=c("obs", "pred"))
class.table
sum(diag(class.table)) / sum(class.table) 
max(apply(class.table,1,sum)) / sum(class.table) 

#####lrm-based analysis for model 1
project.dd <- datadist(project)
options(datadist="project.dd")
project.lrm.1 <- lrm(variant ~ sentiment + objectivity + emotion + type, 
                    data=project, x=T, y=T)
project.lrm.1

drop1(project.glm.1, test="Chisq")  ###4个predictor都对模型有效
Predict(project.lrm.1, fun=plogis)
plot(Predict(project.lrm.1, fun=plogis))


#####model 2: main effects and interactions, by using glm for analysis

project.glm.2 <- glm(as.factor(variant) ~ sentiment + objectivity + 
                       emotion + type + 
                       objectivity:type, 
                    data=project, family=binomial)
summary(project.glm.2)


with(project.glm.2, pchisq(null.deviance-deviance, df.null-df.residual, lower.tail=FALSE))  ####p值很小，说明模型拟合得很好
par(mfrow=c(2,2))
plot(project.glm.2)


####model 2's prediction correction
pred <- predict(project.glm.2, type = "response")
obs <- as.numeric(project$variant) - 1
head(obs)
class.table <- table(obs, as.numeric(pred>=0.5),
                     dnn=c("obs", "pred"))
print(class.table)
sum(diag(class.table)) / sum(class.table) 
max(apply(class.table,1,sum)) / sum(class.table) 

#####using lrm to analyze model 2
plot(table(project$objectivity, project$type, project$variant), col=T, main="variant ~ objectivity + type")  #####为什么要选这两个变量

project.lrm.2 <- lrm(variant ~ sentiment + objectivity + 
                       emotion + type + objectivity:type, 
                     data=project,x=T, y=T)
project.lrm.2

drop1(project.glm.2, test="Chisq")
plot(Predict(project.lrm.2, fun=plogis))


predict.info <- function(x) { 
  # assumes x is numeric vector of predictions
  result <- c(mean(x), sd(x), length(x))
  names(result) <- c("mean", "sd", "n")
  +  return(result)
}



aggregate(predict(project.glm.2, type="response"), 
          list(project$sentiment, project$type, 
               project$emotion, project$objectivity), 
          predict.info)


residuals(project.lrm.2, type="gof")
vif(project.lrm.1)
which.influence(project.lrm.2)


library(effects)
plot(effect("objectivity*type",project.glm.2))
plot(allEffects(project.glm.2))





