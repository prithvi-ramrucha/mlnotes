---
title: Poisson Processes
parent: Probability Bootcamp
layout: home
nav_order: 4
---

# 1. Counting Processes

Before introducing Poisson processes, we must to talk about a more general idea: **counting processes**. To put it concisely, a counting process defines a counting function
$N(t)$ for $t \geq t$ which represents the number of events that occur by some time $t$. Specifically, if $s > t$ where $s$ and $t$ are times, then $N(t) - N(s)$ is the number of events that occured during the interval $(s, t]$. Following this definition, the counting function has the properties below,

{: .highlight} 
**Properties** 
1. $N(t) \geq 0$ (positive function) 
2. $N(t)$ is always an integer (discrete events). 
3. If $s \leq t$, then $N(s) \leq N(t)$

# 1. Poisson Processes

A Poisson process is a specific type of counting process, arguably the most well-known, where the number of events betweeen initial $t$ and final time $t+\Delta t$, denoted as $n$ is Poisson distributed such that,

$$
P[N(t + \Delta t) - N(t) = n] = \frac{(\lambda \Delta t)^n e^{-\lambda \Delta t}}{n!}
$$

where the expectation of $n$ is $E[n] = \lambda \Delta t$. In contrast to the typical Poisson distribution that is agnostic to the underlying domain, $\lambda$ is the expected number of events per unit time. While $n \sim \text{Po}(\lambda \Delta)$, we can show that the time between these Poisson events is also described by a characteristic and well-known distribution called the **expotential distribution**. Let us assume that $t=0$ and $\Delta t = t$, we define $T$ to be the time that our first event occurs starting from the initial time. 

$$
P(T > t) = \int^{\infty}_{t} f_N(t)dt
$$

# References 

https://www.youtube.com/watch?v=P6qQQXa0r4M
