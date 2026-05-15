Expected values that measure the shape, center and spread of a probability distribution

| Name     | Formula                       | Purpose               |
| -------- | ----------------------------- | --------------------- |
| Mean     | $E[X]$                        | Find Central location |
| Variance | $E[(X-\mu)^2]$                | Find spread of points |
| Skewness | $E[(\frac{X-\mu}{\sigma})^3]$ | Measure asymmetry     |
|          |                               |                       |
- $E[(X-\mu)^2] = E[X^2]-E[X]^2$
	Proof:
	$E[(X-\mu)^2] = E[X^2-E[X]X-E[X]X+E[X]E[X]]$. We can treat $E[X]$ as a constant, so we get $E[X^2]-E[X]E[X]-E[X]E[X]+E[X]E[X]$ = $E[X^2]-E[X]^2$
###  Joint Statistical Moments
| Name       | Formula               | Purpose                                                 |
| ---------- | --------------------- | ------------------------------------------------------- |
| Covariance | $E[(X-E[X])(Y-E[Y])]$ | Measure linear directional relationship between X and Y |
- Covariance assumes that a single simulation will produce a (X=x, Y=y) value
- $E[(X-E[X])(Y-E[Y])] = E[XY]-E[X]E[Y]$
	Proof:
	$E[(X-E[X])(Y-E[Y])] = E[XY-E[X]Y-E[Y]X+E[X]E[Y]]$. We can treat $E[X]$ as a constant, so we get $E[XY]-E[X]E[Y]-E[Y]E[X]+E[X]E[Y]$ = $E[XY]-E[X]E[Y]$