---
title: Sample Space
parent: Probability Bootcamp
layout: home
nav_order: 1
---

# Samples in Statistical Learning Theory

## 1. Probability Space and Data-Generating Distribution

We begin with a probability space
\[
(\Omega, \mathcal{F}, \mathbb{P}),
\]
which models all sources of randomness.

A *data point* is represented as a random variable
\[
Z : \Omega \to \mathcal{Z},
\]
where typically \(\mathcal{Z} = \mathcal{X} \times \mathcal{Y}\) (inputs and labels).  
The distribution of \(Z\) is the **data-generating distribution**
\[
\mathcal{D} := \mathbb{P} \circ Z^{-1}.
\]

Thus, saying “data are drawn from \(\mathcal{D}\)” has a precise meaning: it is the pushforward of \(\mathbb{P}\) under \(Z\).

---

## 2. Definition of a Sample

A **sample of size \(m\)** is a finite sequence of random variables
\[
S = (Z_1, Z_2, \dots, Z_m),
\]
each defined on the same probability space \((\Omega, \mathcal{F}, \mathbb{P})\).

The canonical assumption in statistical learning theory is that the \(Z_i\) are
\[
Z_1, \dots, Z_m \;\;\text{i.i.d. according to}\;\; \mathcal{D}.
\]

Formally, this means:

1. **Identically distributed:**  
   \[
   \mathbb{P} \circ Z_i^{-1} = \mathcal{D} \quad \text{for all } i.
   \]

2. **Independence:**  
   For any measurable sets \(A_1,\dots, A_m \subseteq \mathcal{Z}\),
   \[
   \mathbb{P}(Z_1 \in A_1, \dots, Z_m \in A_m)
   = \prod_{i=1}^m \mathbb{P}(Z_i \in A_i).
   \]

---

## 3. Realized Sample (Training Dataset)

A **realization** of the sample is obtained by evaluating the random variables at a particular outcome \(\omega \in \Omega\):
\[
S(\omega) = (Z_1(\omega), \dots, Z_m(\omega)) =: ((x_1, y_1), \dots, (x_m, y_m)).
\]

This is what we ordinarily call the **training dataset**:
\[
S = \{(x_i, y_i)\}_{i=1}^m.
\]

---

## 4. Why Samples Matter

Given a learning algorithm \(A\), the hypothesis it outputs,
\[
\hat{f} = A(S),
\]
is itself a random object because it depends on the random sample \(S\).  
Thus quantities like **generalization error**, **empirical risk**, and **sample complexity** are all expectations or probabilities taken with respect to the law of \(S\):
\[
S \sim \mathcal{D}^m.
\]

This notation \(\mathcal{D}^m\) is shorthand for the product distribution induced by \(m\) i.i.d. draws from \(\mathcal{D}\).

---

## 5. Summary

- A *sample* is a sequence of i.i.d. random variables \(Z_i\) with distribution \(\mathcal{D}\).  
- A *training dataset* is a **realization** of that random sequence.  
- All probabilistic guarantees in learning theory (e.g., PAC bounds) are statements about the randomness of the sample \(S\), i.e. \(S \sim \mathcal{D}^m\).

