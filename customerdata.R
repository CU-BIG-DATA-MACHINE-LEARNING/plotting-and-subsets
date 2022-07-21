#Step 1 - Import the data
Customer <- read.csv("C:/Users/terra/projects/ColumbiaUniversity/CourseLessonPlans/MorePlots/plots/Customer.csv")

View(Customer)
SegmentData<-table(Customer$Segment)

ggplot(Customer, aes(x=Customer$Segment, fill=as.factor(Segment))) +geom_bar()

hist(Customer$Age, breaks = c(18,40,60,100),freq = TRUE, col=c("blue","red","pink"), main="Customers By Age")
#available colors
colors()


ggplot(Customer, aes(x=Age, y=State, fill=Segment))+ geom_tile()

# create subset of columns
newDF<- data.frame(Customer$Customer.Name, Customer$Age, Customer$State, stringsAsFactors = T)
table(newDF$Customer.Age)
hist(newDF$Customer.Age)


Customer %<% filter(Region == "South") -> Southerners
