A continuous-time stochastic process:

### Properties:
1. **Starts at 0**
$$W_0=0$$
2. **Independent increments**
>For times
$$ 0 <= t_0 < t_1 < ... <t_n $$
>increments

$$W_{t_1}-W_{t_0},...,W_{t_n}-W_{t_{n-1}}$$
>are independent random variables


$$W_t \sim N(0,t) $$

$$W_t - W_s \sim N(0,t-s)$$

3. **Increment Distribution depends only on the time difference**
$$W_t - W_s \sim W_{t-s}$$
for $0 \le s<t$

4. **Normally distributed increments**
$$W_t-W_s\sim N(0,t-s)$$
5. Continuous sample paths
>With high probability,
$$\text{lim}_{s\to t}\space W_s(\omega)=W_t(\omega)$$
>It is possible that as s gets very close to t for a single simulation $\omega$, $W_s$ has a large jump in value, but this is very unlikely

### Simulation Perspective:
Understand the properties from a simulation perspective:
1. All simulations start at 0
2. The change in a given time interval should not depend on the value of the process at the start of the interval
3. Taking many simulations until t and tracking their simulated values at s and at t-s, the distribution of their values at t-s should equal the distribution of the difference between the value at t subtracted b the value at s per simulation.
4. We can simulate a single Brownian path by using the normal distribution over small intervals.
