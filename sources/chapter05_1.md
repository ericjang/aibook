---
chapter-number: 6
title: The Neurobiological Software Stack
link-citations: true
reference-section-title: References
---

So far we have discussed how implementing narrow intelligence is hard (chapter 3), implementing general intelligence is still harder (chapter 4), and having code that can handle the semantic precision of the physical world abounds with hidden, fractal-like complexity (chapter 5). How can we possibly imbue our AI systems with our preconceived notions of the world when we struggle to formalize the simplest of concepts, like hotdogs?

The entire endeavour almost seems hopeless, until we remember that Nature and its creations have somehow managed to solve these problems of semantic understanding long before human minds could even contemplate the abstract nature of intelligence. 

This chapter is a primer on the "neurobiological software stack", and all the little implementation details that underpin human and animal behavior. A great many computer scientists will often say "planes don't need to be birds, and an AI doesn't need to follow biological designs to realize the same level of intelligence", but given that we have not been successful thus far at creating AI, it seems willfully ignorant to not spend some time learning about the biological designs - the only successful implementations of intelligence to date. Refusing to study biological designs in pursuit of AI would be as if a researcher knew that Transformer architectures were state-of-the-art for natural language tasks, but refused to learn about them because they believed that they could make it work some other way.

## How RL researchers think about behavior


The Neurobiological Stack encompasses not only how reactive behaviors are formed from stimuli encountered in the present, but also how reactive behaviors are formed from past experiences (learning) and from even past generations (evolution). AI researchers who study reinforcement learning are broadly familiar with analogues to behavior, learning, and evolution, but it turns out that there are multiple layers *in between* these broad levels that we might take inspiration from.

## Behavior 

At the instant of observation, we see an animal's behavior.

## Neurobiology



## Releasing stimuli

male deer bellow -> releasing stimulus for female deer to ovulate

females of many species, including humans, have higher pitched voices when they are ovulating, which subliminally makes them more attractive to males.

## Acute Hormones
## Culture
## Chronic Hormonal
## Postnatal Environment
## Prenatal Environment

## Genetics
 
## Evolution of population


## Evolution of Species



In fact, in studying the neurobiological stack, one realizes that intelligence and behavior are inextricably linked, and perhaps intelligence itself is nothing more than behavior.








We begin our story with the pioneering work of J.B. Watson, B.F. Skinner, and others who studied Behaviorism

Behaviorism, as this field was called, was the principle that positive and negative reinforcement were sufficient to imbue any brain - be it rodent or pigeon or human - with learned capabilities.


[Reward is Enough](https://www.sciencedirect.com/science/article/pii/S0004370221000862)

The framework of Reinforcement Learning, which has taken over much of the thinking in computer science, has its underpinnings in the animal behavior work around behaviorism. 

Pioneered in 1960s

Nobel laureate Nikolaas Tinbergen says "ethology is the process of interviewing an animal but in its own language."




Behaviorism was pioneered by J.B. Watson, B.F. Skinner, 


reward/punishment were sufficient to condition any animal (rats, pigeons, humans, apes)

behaviorism concerns itself with A

Ethology strives to collect behaviors in the field, and embraces the variability of behavior observed in nature, not just with a single model organism's behaviors, but its behaviors in context of all the other organism's behaviors. 


1960s experiments showed that labs with enriched environments for rats had thicker cortexes than rats. The ethologists found that wild rats had thickest cortexes of all, even more than enriched rats.


animals have prepared learning: associate upset stomach with food, rather than some other releasing stimuli like an opera performance.
Sauce-Béarnaise Syndrome - develop aversion to 
we are not innately afraid of snakes and spiders, but we have prepared learning for it.

and so forth

<!-- ground the reader in the evolved neurobehavior system of animals, so as we read about new ideas in RL, we can remind ourselves on what level of behavior we are seeing

Yann Lecun , Ishan Misra - "common sense is dark matter of intelligence"

they believe that self-supervision at the data level, i.e. looking at pixels together, is the way.

those are nice representation learning algorithms, but they use a lot of human knowledge / inductive biases / deep learning optimization tricks to help learn the common sense aspect.

but we must go further - capture data from the processes that shape those common sense mechanisms themselves.

 -->

 
 
Optimizing a single Decision vs. lifetime of decisions vs. entire evolutionary history of all decisions
 
Behavioral Process
Optimization Criterion
(how to make it better)
Inference Time
Training Time for improving the process
L1 Single image rollout
Differentiable loss +Feed-forward net (CNN, MLP) 
50ms
hours
L2 Single episode of experience (inference)
Sequence net (RNN, Transformer) + Differentiable loss
5s
days
L3 Single lifetime (sequence of episodes)
Very big sequence net + differentiable loss
500s
weeks
L4 Generations
(Sequence of lifetimes) 
Evolutionary Strategies / Meta-Optimization
(desirable evolutionary trajectory)
50000s
months/years

Research Loop 

