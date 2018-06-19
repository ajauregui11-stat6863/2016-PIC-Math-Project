#lowerbound of the z.alpha% confidence interval for theta3
lowerbound<-function(p.se,p.sc,p.ie,p.ic,rho,z.alpha,n.e,n.c){
  return((p.se+rho*p.ie)-(p.sc+rho*p.ic)-z.alpha*(sqrt(((p.se*(1-p.se)+rho^2*(p.ie*(1-p.ie))-2*rho*p.se*p.ie)/n.e)+((p.sc*(1-p.sc)+rho^2*(p.ic*(1-p.ic))-2*rho*p.sc*p.ic)/n.c))))
}
#upperbound of the z.alpha% confidence interval for theta3
upperbound<-function(p.se,p.sc,p.ie,p.ic,rho,z.alpha,n.e,n.c){
  return((p.se+rho*p.ie)-(p.sc+rho*p.ic)+z.alpha*(sqrt(((p.se*(1-p.se)+rho^2*(p.ie*(1-p.ie))-2*rho*p.se*p.ie)/n.e)+((p.sc*(1-p.sc)+rho^2*(p.ic*(1-p.ic))-2*rho*p.sc*p.ic)/n.c))))
}
#expected treatment effect with the three-level score endpoint
theta3<-function(p.se,p.ie,p.sc,p.ic,rho){
  return((p.se+rho*p.ie)-(p.sc+rho*p.ic))
} 
