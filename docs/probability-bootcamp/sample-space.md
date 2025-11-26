---
title: Sample Space
parent: Probability Bootcamp
layout: home
nav_order: 1
---

# Samples in Statistical Learning Theory

## 1. Probability Space and Data-Generating Distribution

We begin with a probability space  
$$
(\Omega, \mathcal{F}, \mathbb{P}),
$$
which models all randomness.

A *data point* is a random variable  
$$
Z : \Omega \to \mathcal{Z},
$$
where typically $\mathcal{Z} = \mathcal{X} \times \mathcal{Y}$ (inputs and labels).

The distribution of $Z$ is the **data-generating distribution**  
$$
\mathcal{D} := \mathbb{P} \circ Z^{-1}.
$$

Thus the statement “$Z$ is drawn from $\mathcal{D}$” means that $\mathcal{D}$ is the pushforward of $\mathbb{P}$ under $Z$.

---

## 2. Definition of a Sample

A **sample of size $m$** is a finite sequence of random variables  
$$
S = (Z_1, Z_2, \dots, Z_m),
$$
each defined on the same probability space $(\Omega, \mathcal{F}, \mathbb{P})$.

The key assumption in learning theory is that  
$$
Z_1, \dots, Z_m \;\; \text{are i.i.d. according to } \mathcal{D}.
$$

Formally:

1. **Identical distribution**  
   $$
   \mathbb{P} \circ Z_i^{-1} = \mathcal{D} \quad \text{for all } i.
   $$

2. **Independence**  
   For measurable sets $A_1,\dots,A_m \subseteq \mathcal{Z}$,
   $$
   \mathbb{P}(Z_1 \in A_1, \dots, Z_m \in A_m)
   = \prod_{i=1}^m \mathbb{P}(Z_i \in A_i).
   $$

---

## 3. Realized Sample (Training Dataset)

Given an outcome $\omega \in \Omega$, the realized sample is  
$$
S(\omega) = (Z_1(\omega), \dots, Z_m(\omega))
= ((x_1, y_1), \dots, (x_m, y_m)).
$$

This is what we normally call the **training dataset**:
$$
S = \{(x_i, y_i)\}_{i=1}^m.
$$

---

## 4. Randomness of the Sample

A learning algorithm $A$ maps a sample to a hypothesis:
$$
\hat{f} = A(S).
$$

Since $S$ is random, $\hat{f}$ is also random.  
Thus generalization error, empirical risk, and sample complexity are expectations or probabilities with respect to  
$$
S \sim \mathcal{D}^m,
$$
the product distribution corresponding to $m$ i.i.d. draws from $\mathcal{D}$.

---

## 5. Summary

- A *sample* is a sequence of i.i.d. random variables $(Z_1,\dots,Z_m)$ with distribution $\mathcal{D}$.  
- A *training dataset* is a **realization** of that random vector.  
- All PAC-style guarantees are statements about properties of $S$ when $S \sim \mathcal{D}^m$.


