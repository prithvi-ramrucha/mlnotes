---
title: Variance & Standard Deviation 
parent: Probability Bootcamp
layout: home
nav_order: 3
---

# 1. Introduction

A natural continuation of our discussion is the subject of the variance of a random variable $\text{Var}[X]$ and, by extention, its standard deviation $\sqrt{\text{Var}[X]}$. The 
variance and standard deviation of a random variable $X$ are very closely related and are both said to quantify the _spread_ of the distribution. More spread out distributions tend to have a larger variance and standard deviation in comparision to those which are more narrow or compact. To visualise, we consider the distributions below,

[DIAGRAM]

# 2. Definition

The definition of the variance of a random variable $\text{Var}[X]$ is,

$$
\text{Var}[X] = E \left[ (X-E[X])^2 \right].
$$

It is the expectation of the residuals between $E[X]$ and all possible values $X$ may take.


# 3. Key Properties

Arguably most important property of the variance is that, 

$$
\text{Var}[X] = E[X^2] - (E[X])^2.
$$

This is extremely useful for computing the variance as only the mean $E[X]$ (first moment of $X$) and the second moment $E[X^2]$ are needed. Demonstrating this property is straight-forward,

$$
\begin{aligned}
\mathrm{Var}[X]
&= E\!\left[(X-E[X])^2\right] \\
&= E\!\left[X^2 - 2X E[X] + (E[X])^2\right] \\
&= E[X^2] - 2E\!\left[XE[X]\right] + E\!\left[(E[X])^2\right] \\
&= E[X^2] - 2E[X\mu] + E[\mu^2] \\
&= E[X^2] - 2\mu E[X] + \mu^2 \\
&= E[X^2] - 2\mu^2 + \mu^2 \\
&= E[X^2] - \mu^2 \\
&= E[X^2] - (E[X])^2.
\end{aligned}
$$

Only two additional ingredients are required. Firsly, the expectation $E[X]$ is a constant $\mu$ and therefore its expectation is itself such that $E[\mu] = \mu$ (tower property). Secondly, we also make use of the linearity property of the expectation value where $E[X_1 + X_2 + ... + X_N] = E[X_1] + E[X_2] +  ... + E[X_N].$

# References 
