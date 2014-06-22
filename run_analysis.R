# 1. Merges the training and the test sets to create one data set.
# and
# 4. Appropriately labels the data set with descriptive variable names. 

vars = read.delim("features.txt", header=F, sep=" ")
vars$V2 = as.character(vars$V2)
 
train = read.table("train/X_train.txt", header=F)
ltr = read.delim("train/y_train.txt", header=F, sep=" ")
str = read.delim("train/subject_train.txt", header=F, sep=" ")
set = "train"
train = cbind(str, ltr, set, train)
names(train) = c("subject", "label", "set", vars$V2)

test = read.table("test/X_test.txt", header=F) # test set
lte = read.delim("test/y_test.txt", header=F, sep=" ") # test labels
ste = read.delim("test/subject_test.txt", header=F, sep=" ")
set = "test"
test = cbind(ste, lte, set, test)
names(test) = c("subject", "label", "set", vars$V2)

df = rbind(test, train)
rm(ltr, str, lte, ste, set, vars, test, train)


# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
nome = as.data.frame(names(df))
names(nome) = "var"
nome$selec = grepl("-mean()", nome$var) + grepl("-std()", nome$var)
nome$selec[1:3] = 1
table(nome$selec)
nome = as.character(nome[nome$selec==1,1])
df = subset(df, select=nome)
rm(nome)

# 3. Uses descriptive activity names to name the activities in the data set
table(df$label)
lab = read.table("activity_labels.txt", header=F)
df$label = factor(df$label, levels=lab$V1, labels = lab$V2)
table(df$label)
rm(lab)

# 5. Creates a second, independent tidy data set with the average of each variable 
# for each activity and each subject. 
library(reshape2)
dfMelt = melt(df, id=c("subject", "label"), measure.vars=names(df)[4:82])
head(dfMelt)
df2 = dcast(dfMelt, subject + label ~ variable, mean) 
rm(dfMelt)
write.table(df2, file="tidy_data.txt", sep=" ", row.names=F, col.names=T)
