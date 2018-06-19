library(forestplot)

rho_0<-structure(
  c(-.079,-.133,.25),
  .Dim=c(1L,3L),
  .Dimnames=list(c("blah"),c("mean","lower","upper")))

rho_.5<-structure(
  c(.02,-.016,.25),
  .Dim=c(1L,3L),
  .Dimnames=list(c("blah"),c("mean","lower","upper")))

rho_1<-structure(
  c(.119,.085,.25),
  .Dim=c(1L,3L),
  .Dimnames=list(c("blah"),c("mean","lower","upper")))

forestplot(
  labeltext="",
  mean=cbind(rho_0[,"mean"],rho_.5[,"mean"],rho_1[,"mean"]),
  lower=cbind(rho_0[,"lower"],rho_.5[,"lower"],rho_1[,"lower"]),
  upper=cbind(rho_0[,"upper"],rho_.5[,"upper"],rho_1[,"upper"]),
  clip=c(-.2,.2),
  line.margin=.1,
  boxsize=.05,
  new_page = TRUE,
  legend_args=fpLegend(pos=list(x=0,y=.55),
                       gp=gpar(col="#CCCCCC",fill="#F9F9F9")),
  legend=c(expression(paste(rho,"=",0)),
           expression(paste(rho,"=",.5)),
           expression(paste(rho,"=",1))),
  grid=structure(c(-.0492,-.0645,-.0799),
                 gp=gpar(lty=2,col=c("black"))),
  fn.ci_norm=fpDrawCircleCI,
  col=fpColors(box=c("blue","red","green")))