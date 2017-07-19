x <- 1:10     # Change to your x variable e.g. precipitation, temperature
y <- jitter(x^2) # Change to your y variable e.g.rice_yield_per_rai
plot(x, y, pch=20,xlab = "Cylinders", ylab = "Miles per gallon")

# basic straight line of fit
fit <- lm(y~x)
#co <- coef(fit)
abline(fit, col="blue", lwd=2)
#mtext(c('r = ',toString(round(cor_xy,2)), side = 1, line = 0, outer = FALSE))

#text(2,90, bquote(R^2 == .(round(cor_xy^2, 2))))

text(0.2*max(x),0.9*max(y), bquote(R^2 == .(round(cor(x,y)^2, 2))))
