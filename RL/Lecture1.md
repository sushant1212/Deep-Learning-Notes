# RL Lecture 1 Standford CS234

## Introduction:

* Agent acts on the world, receives an observation and a reward from the world.
* Designer gets to pick what the reward function is.
* Agent takes action at, World updates given action at, emits observation ot and reward rt. Agent receives observation ot and reward rt.
* History is the record of the actions taken by the agent and the observations and rewards received. 
* So. h_t = (a1,o1,r1, a2,o2,r2, ..., at,ot,rt).
* <b>Agent chooses action based on history</b>
* State space is information assumed to determine what happens next. State is a function of history. 
<p>So, st = f(ht) {<i>state is a function of history</i> }</p>
* <b>World State</b>: This is the true state of the world. It is often hidden or unknown to agent. Even if known, it contains info not needed by the agent

* <b>MARKOV ASSUMPTION</b>:
P(st+1 |st,at) = P(st+1 |ht,at).<br>
This means that state used by the agent is a sufficient statistic of the history. In order to predict the future you only need to know the current state of the environment. In other words, the fututre is independent of the past given the present if in the present you have the right aggregate statistic.
* For making a Markov Decision process(MDP), st = ot. (Full Observability)
* If world is Partially Observable, POMDP, Agent state is not the same as the World State. Agent constructs its own state.

* <b>Types of Sequential Decision Processes</b>:
1. Bandits: <br>
Actions have no influence on next observations. No delayed rewards. Eg. the ads you provide to one customer on a your website does not affect who the next customer is.
<br>
2. MDPs, and POMDPs: <br>
Actions influence future observations. For example suggesting a product to a customer will determine what response he/she gives.
<br>
* <b>How the world changes</b>:<br>
1. Deterministic: Given history and action, single observation and reward 
2. Stochastic: Given history and action, many potential observations and rewards.

## RL Algorithm Components:
## Model:<br>
* Agent's representation of hpw the world changes in response to agent's actions.<br>
* Transition model predicts the agent's next state:<br>
<b>P(st+1 = s' | st=s, at=a)<br></b>
* Reward model:<br>
r(st=s, at=a) = E(rt | st=s, at=a)
<br><b>The model of the agent can be wrong</b><br>

### Policy:
* Policy 'pi' determines how the agent chooses actions. It is a MAPPING from States -> Actions
* A deterministic policy gives just one action as the output. pi(s) = a
* Stochastic policy : A distribution of probabilities for each action given a state. Mathematically, <br>
pi(a|s) = Pr(at=a | st=s)

### Value:
Value function Vpi: expected discounted sum of future rewards under a particular policy pi.<br>
Vpi(st=s) = E_pi[rt + gamma*rt+1 + gamma^2*rt+2+....... | st=s]<br>
Discount factor gamma weighs immediate vs future rewards. gamma belongs to (0,1)<br>
Can be used to quantify goodness/badness of states and actions and decide how to act by comparing policies.

## Types of RL agents:
* Model-based:<br>
Explicit: Model, may or may nothave policy and/or value function
* Model-free:<br>
Explicit: Value function and/or policy function, No model

## Exploration and Exploitation:
Just as the name suggests.

## Evaluation:
* Estimate/predict the expected rewards from following a given policy

## Control:
* Optimization: find the best policy
