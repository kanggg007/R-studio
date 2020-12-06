mecha_mpg <- read.csv(file= "Desktop/Class/R-studio/MechaCar_mpg.csv", check.names = F, stringsAsFactors = F)

summary(lm(mpg~ vehicle_length + vehicle_weight + AWD + spoiler_angle + ground_clearance, data = mecha_mpg))

aov(mpg~ vehicle_length + vehicle_weight + AWD + spoiler_angle + ground_clearance, data = mecha_mpg)



Suspension_Coil <- read.csv(file = "Desktop/Class/R-studio/Suspension_Coil.csv", check.names = F, stringsAsFactors = F)

total_summary <- Suspension_Coil%>%summarize(Mean=mean(PSI), Median=median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')
lot_summary <- Suspension_Coil%>%group_by(Manufacturing_Lot)%>%summarize(Mean=mean(PSI), Median=median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')



#T test

 # T test for all manufacturing_Lots 
Suspension_Coil$Manufacturing_Lot <- factor(Suspension_Coil$Manufacturing_Lot)
t.test(Suspension_Coil$PSI, mu = 1500)

 # T test for each subset 
manufacturing_lot1<-subset(Suspension_Coil,Manufacturing_Lot == "Lot1")
t.test(manufacturing_lot1$PSI, mu = 1500)

manufacturing_lot2<-subset(Suspension_Coil,Manufacturing_Lot == "Lot2")
t.test(manufacturing_lot2$PSI, mu = 1500)

manufacturing_lot3<-subset(Suspension_Coil,Manufacturing_Lot == "Lot3")
t.test(manufacturing_lot3$PSI, mu = 1500)



