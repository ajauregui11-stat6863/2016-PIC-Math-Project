library(forestplot)

rho_0<-structure(
  c(-.076,-.13,.25),
  .Dim=c(1L,3L),
  .Dimnames=list(c("blah"),c("mean","lower","upper")))

rho_.5<-structure(
  c(.026,-.009,.25),
  .Dim=c(1L,3L),
  .Dimnames=list(c("blah"),c("mean","lower","upper")))

rho_1<-structure(
  c(.129,.095,.25),
  .Dim=c(1L,3L),
  .Dimnames=list(c("blah"),c("mean","lower","upper")))

forestplot(
  labeltext="Low Dose",
  mean=cbind(rho_0[,"mean"],rho_.5[,"mean"],rho_1[,"mean"]),
  lower=cbind(rho_0[,"lower"],rho_.5[,"lower"],rho_1[,"lower"]),
  upper=cbind(rho_0[,"upper"],rho_.5[,"upper"],rho_1[,"upper"]),
  clip=c(-.2,.2),
  line.margin=.1,
  boxsize=.05,
  new_page = TRUE,
  legend=c(expression(paste(rho,"=",0)),
           expression(paste(rho,"=",.5)),
           expression(paste(rho,"=",1))),
  grid=structure(c(-.0489,-.0639,-.0799),
                 gp=gpar(lty=2,col=c("blue","red","green"))),
  fn.ci_norm=fpDrawCircleCI,
  col=fpColors(box=c("blue","red","green")))