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
(\Omega, \mathcal{F}, \mathbb{P})
$$
which models all randomness.

A *data point* is a random variable  
$$
Z : \Omega \to \mathcal{Z}
$$
where typically $\mathcal{Z} = \mathcal{X} \times \mathcal{Y}$ (inputs and labels).

The distribution of $Z$ is the **data-generating distribution**  
$$
\mathcal{D} = \mathbb{P} \circ Z^{-1}.
$$

This means that when we say “a data point is drawn from $\mathcal{D}$”, we mean that $\mathcal{D}$ is the pushforward measure induced by $Z$.

---

## 2. Definition of a Sample

A **sample of size $m$** is a finite sequence of random variables  
$$
S = (Z_1, Z_2, \dots, Z_m),
$$
each defined on the same probability space $(\Omega, \mathcal{F}, \mathbb{P})$.

The standard assumption in learning theory is that  
$$
Z_1, Z_2, \dots, Z_m \;\; \text{are i.i.d. from } \mathcal{D}.
$$

Formally:

1. **Identical distribution**  
   $$
   \mathbb{P} \circ Z_i^{-1} = \mathcal{D}, \quad \text{for all } i.
   $$

2. **Independence**  
   For any measurable sets $A_1, \dots, A_m \subseteq \mathcal{Z}$,  
   $$
   \mathbb{P}(Z_1 \in A_1, \dots, Z_m \in A_m)
   =
   \prod_{i=1}^m \mathbb{P}(Z_i \in A_i).
   $$

---

## 3. Realized Sample (Training Dataset)

Given an outcome $\omega \in \Omega$, the realized sample is  
$$
S(\omega) = (Z_1(\omega), \dots, Z_m(\omega))
= ((x_1, y_1), \dots, (x_m, y_m)).
$$

This is the **training dataset**:  
$$
S = \{(x_i, y_i)\}_{i=1}^m.
$$

---

## 4. Randomness of the Sample

A learning algorithm $A$ maps a sample to a hypothesis:  
$$
\hat{f} = A(S).
$$

Because $S$ is random, the output $\hat{f}$ is also random.  
Hence quantities like generalization error and empirical risk are expectations or probabilities taken with respect to the distribution  
$$
S \sim \mathcal{D}^m,
$$
the $m$-fold product distribution of $\mathcal{D}$.

---

## 5. Summary

- A *sample* is a sequence of i.i.d. random variables $(Z_1, \dots, Z_m)$ with distribution $\mathcal{D}$.  
- A *training dataset* is a **realization** of these random variables.  
- All learning-theoretic guarantees (PAC bounds, generalization bounds, etc.) are statements about $S$ when $S \sim \mathcal{D}^m$.




