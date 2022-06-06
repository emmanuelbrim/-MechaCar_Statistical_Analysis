library()

#Deliverable 1
#Read in dataset
MechaCar_data<-read.csv("MechaCar_mpg.csv")

#Linear regression 
Model<-lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data=MechaCar_data)
summary(Model)

#Deliverable 2
#Read in dataset
Suspension_data<-read.csv('Suspension_Coil.csv')

#Creates a total_summary dataframe using the summarize()
total_summary<-summarize(Suspension_data, Mean=mean(PSI),Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

#creates a lot_summary dataframe using the group_by() and the summarize() functions
lot_summary<-Suspension_data%>%group_by(Manufacturing_Lot)%>%
summarize(Mean=mean(PSI),Median=median(PSI), Variance=var(PSI), SD=sd(PSI))


#Deliverable 3
#t-test on suspension coils in all_lots
all_lots<-t.test(Suspension_data$PSI, mu=1500)
all_lots

#t-test on suspension coils in each lot
Lot1<-t.test(subset(Suspension_data$PSI,Suspension_data$Manufacturing_Lot=='Lot1'), mu=1500)
Lot1

Lot2<-t.test(subset(Suspension_data$PSI,Suspension_data$Manufacturing_Lot=='Lot2'), mu=1500)
Lot2

Lot3<-t.test(subset(Suspension_data$PSI,Suspension_data$Manufacturing_Lot=='Lot3'), mu=1500)
Lot3