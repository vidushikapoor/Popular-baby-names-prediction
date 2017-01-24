folder<-"/Users/vidushikapoor/R class/names_baby/"
file_list<-list.files(path=folder, pattern="*.txt")
readList<-lapply(file_list,function(x){
  tempRead<-read.table(x,header=FALSE,sep=",")
  names(tempRead)<-c('Name','Sex','Freq')
  tempRead$year<-substr(x,4,7)
  return(tempRead)
})
listBind<-do.call("rbind",readList)

#Take user input to see the frequency graph for all years

  name<-readline(prompt="Enter baby name: ")
  name_input<-as.character(name)
  a<-listBind[listBind$Name==name_input & listBind$Sex=="F",]
  print(a)
  if(nrow(a)==0){
    print("No female babies for this name")
  }
  if(nrow(a)>1){
    plot(a$year,a$Freq,"l")
  }
  b<-listBind[listBind$Name==name_input & listBind$Sex=="M",]
  print(b)
  if(nrow(b)==0){
    print("No male babies for this name")
  }
  if(nrow(b)>1){
    plot(b$year,b$Freq,"l")
  }

newListOrder<-aggregate(listBind$Freq, by=list(Name=listBind$Name), FUN=sum)
attach(newListOrder)
newDataAsc <- newListOrder[order(x),] 
newDataDesc<-newListOrder[order(-x),]
print(head(newDataAsc,n=3))
print(head(newDataDesc,n=3))
detach(newListOrder)

