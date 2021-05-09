---
chapter-number: 8
title: Prior Research on A-Life
link-citations: true
reference-section-title: References
---

The pursuit of creating life from scratch inspires many people from all sorts of fields, from biology to robotics to art to theology. Just as "AI" means different things to different people, so does "A-Life". This chapter is a summary of prior work on A-Life, and their relevance for what I hope to accomplish. 

There are three “domains” with which one can choose to embody Artificial Life - Wet Alife, Hard Alife, and Soft Alife. I'm borrowing this taxonomy from Bert Chan, a fellow A-Life researcher. 

# Wet A-Life

The first type, Wet Alife, is pursued by synthetic biologists who want to understand how the most primitive life forms emerged from non-living organic compounds. This involves creating actual cells from “non-living” materials and designer genomes. This is the most challenging instantiation of A-Life, because it deals with fragile, microscopic creations with barely enough intelligence to survive on their own, much less hunt or sense anything. I think it’s highly unlikely wet alife will ever move beyond single-celled microorganisms in my lifetime, much less anything with a nervous system that is capable of learning. It would likely take a long time for natural evolution to run its course, and even if it eventually develops intelligence, would be just as difficult to study its intelligence as natural organisms.

# Hard A-Life

Hard Alife is pursued by roboticists who want to “evolve” robots to do interesting things. Much of the academic work in this field can be traced to Hod Lipson’s lab at Cornell, where they first built robots that could learn to walk iit showed the promise of using learning methods like evolutionary algorithms to find good solutions without hard-coding behaviors like walking and adaptive gaits. <!-- fact check whether this has done before -->

Unfortunately, robotics is at such a nascent stage that Hard A-Life doesn't look much different from robotics research. No robotics researcher is actually teaching their robotics to hunt and survive in the real world. We are still just getting robots to push objects around, pick up objects, and navigate around rooms or crawl across a floor. A lot of the "A-Life" research on robotics essentially boil down to "evolutionarily-inspired optimization algorithms" like CEM, Map-Elites, and genetic algorithms repurposed to solve simple robotic tasks, as opposed to using robots to perform animal-like behaviors (surviving, mating, allostasis).

<!-- TODO: phylogenetic tree , potentially reproduced from Bert Chan's taxonomy -->

A checklist for A-Life Substrates. Soft A-Life lacks the rich, complex physics we humans are immersed in, but has the advantage of experimental reproducibility and the ability to simulate reconfigurable hardware - something that is extraordinarily difficult fro wet or hard alife.


                           Wet   Hard   Soft 
  ----------------------- ----- ------ ------
   Massively Parallel      [x]    [ ]   [x]
   Embodied Genetics       [x]    [ ]   [ ]
   Embodied Reproduction   [x]    [ ]   [x]
   Embodied Compute        [x]    [x]   [ ]
   Configurable Software   [ ]    [x]   [x]
   Configurable Hardware   [x]    [ ]   [x]
   Rich Physics            [x]    [x]   [ ]
   Fast Iteration          [ ]    [ ]   [x]
   Expr. Reproducibility   [ ]    [ ]   [x]

   : A-Life Substrate Tradeoffs

# Soft A-Life

Soft A-Life is essentially computer simulations of wet or hard alife. By simulating things in a computer, we don’t have to deal with messy details like a robot servo breaking, or a synthetic genome unraveling at an inopportune time due to the acidity of its environment. Doing things in software removes a lot of the tricky engineering problems that actual biological life needed to figure out but we don’t find to be super interesting in our quest to understand intelligence. It’s not feasible to wait for billions of years for a cell to evolve into a thinking organism; instead, we already can simulate millions of years of evolutionary time for RL experiments.

The only problem is, that because our A-Life lies in a simulated world, we do not get “physical reality” for free. In fact, if we believe that AGI is only possible by exposing an AI to a rich world of information, we now have to solve the problem of bringing our physical universe and all its complexity into a computer.  

We have no hope of simulating actual cells in their full biophysical glory, so our simulation of life will have to make do with computational approximations of genetic information and cells and organisms. This means we need to boil down the essence of life into an abstraction that is substrate independent and yet preserves the essential principles needed to kick-start rich evolution. This choice of definitions is made  so that we can choose an efficient substrate to perform the computations given the limitations of today’s computers.

It’s not possible to enumerate all prior work here, so I will just pick a few representative examples from each domain and mention what we collectively learned from it:

 
# BS2

BioSphere 2 was a research project studying how to build a large-scale closed ecosystem capable of sustaining human life. Although BS2 does not create life from scratch, it studies a critical question - once you have life, how do you sustain a complex ecosystem in a closed environment (with the exception of sunlight)?

Once we have AGI systems on par with human intelligence, we want to ensure their habitat is sufficiently stimulating for their intelligence. 

This 
In science there is a fundamental tension between small-scale, reductionist, analytic science with integrative, holistic, system-level science.
https://motherboard.vice.com/en_us/article/mbjz43/setting-the-record-straight-about-the-biosphere-2

# Competitive Self-Play and Other Nash Equilibrium Finding Algorithms

Similar to DeepMind Parkour paper
https://arxiv.org/pdf/2010.03848.pdf

AlphaGo & AlphaGo Zero
Self-play can turn raw compute power into data.


Competitive Self-Play is one of the research areas I'm most excited about, because it gives us a way to turn "high-capacity, unconstrained models" from a nuisance (easily finding a wrong explanation) to an asset. an agent's failure to generalize can be exploited by another agent (for instance, if an agent learns to ignore the color yellow, a predator can turn yellow to evade detection).  
Evidence that challenging environments leads to robust “intelligence” 
Exploration is still important, but a sufficiently massive world will also present countless opportunities and challenges to learn from (rather than them being high)
Open Challenges for A-Life


Finding Applications for A-Life

Unfortunately, A-Life remains to this day a niche discipline that is not taken seriously by people who are building technology to, say, improve people’s lives. A-Life works are still very much in the realm of media art, evoking an illusion of life-likeness but not being close to producing creations that have intelligent capabilities useful to our daily reality. 

Unlike progress in neural network training, A-Life systems are not being used to provide any actual useful technologies to people. There are some useful algorithms developed by the ALife community like genetic algorithms and MAP-Elite search, but these methods are more about black box optimization than actually building living systems.




Computational Embodiment gap : discuss how existing artificial life research that leverages intelligent organisms does not really know how to bridge embodied computation in cellular automata with the higher-level neural network architectures people use for deep rl. We dont really know how to subject deep neural network to the same selection pressures that real networks face. There is a need to balance correctness with pragmatism - we probably need to rely on backprop and sgd as an optimizer.

We need to evaluate a “fitness” function roughly 1M times, which means rolling out 1M “lifespans”. 
 
 advantage of modern deep learning and reinforcement learning algorithms, we need to devise how to combine these technologies in an artificial life simulation. In chapter 6, we explore some design options and constraints on how to structure a rich evolutionary system - how neural networks themselves are embodied, the physical laws of nature, and what constitutes the “basic unit of life”.
 
argue that our existing framework of Reinforcement Learning will be a helpful tool, but will not scale to the level of designing “Life’s Arm Race” on its own. It will simply take too long and it remains highly unclear whether the objectives we optimize are even compatible with  our own physical universe. We should try to leverage new breakthroughs like Deep Learning as much as possible (to capitalize on their state-of-art generalization ability and efficiency), but it is not enough - 

Intelligence is adapted to suit a particular environment and its set of challenges and opportunities. Genetic codes can choose to generate short-lived, fairly dumb organisms, or long-lived, smart ones in response to these environments and ecosystems (presumably the smart ones are like apex predators that eat the dumb ones)

The implications for a A-Life research program are quite important here. Often A-Life simulations perform computation and sensing in a manner that is detached from the actual simulation. But computation must be embodied in the energy-consuming organism, preferably as the energy-consuming process itself!

How do we simulate computation? Do we have a separate “function approximator” that controls each “entity”? Where does sensing end and computation begin?

This gets tricky because we need to hard-code an abstraction for sensors and actuators, and keep them fixed.

Different kinds of ALife: soft, hard, wet.
Computational embodiment gap - most ALife projects do not perform computation directly in the simulation. It’s like not having atoms but wanting to simulate the richness of chemistry phenomena.

Rather than specify the brain structures and how they perform various information processing roles and replicating a full chemical and spiking signalling , we will start by simply trying to replicate behavior, and hope that the right structures will emerge from our substrate constraints..

 

Classical and mathematically-minded AI researchers will argue that it should be possible to build higher-level intelligence without the evolutionary baggage, much like making an airplane without a bird. 

I can see where people are coming from if the goal is to build a flying machine. But if we hope to build machines that understand danger, perform a variety of tasks, to make sense of the world around it, and to ultimately experience something like consciousness, all in a single unified package, we have no choice but to build the whole bird.

REFERENCES
https://twitter.com/ericjang11/status/1315426837997088770?s=20
Bert Chan’s Lenia https://arxiv.org/pdf/1812.05433.pdf
Self-replication
http://bingweb.binghamton.edu/~sayama/sdsr/

http://lslwww.epfl.ch/pages/embryonics/thesis/Chapter3.html



Quadruped Walking - randomizing the environment - makes robust walking policy
https://twitter.com/Mvandepanne/status/1319089952408305665?s=20

Summary of the chapter:
DeepMind’s Parkour paper https://deepmind.com/blog/producing-flexible-behaviours-simulated-environments/
Fictitious Play, Brown 1951, Robinson 1951, Monderer and Shapley 1996, Heinrich and Silver, 2016

Potential threats for c elegans: heavy metals, detergents, acids, high temperatures
Oxygen concentrations, overcrowding, CO2.

Forward / foraging vs. graze mode.

In larger animals we have Motorized sensors (antennae, human eye, cat ear)

The idea of having emergent complexity arise from agents interacting with an environment is not new, but only recently have we been able to build sufficiently rich environments and learn from them. 
We build rich environments so that the “upper bound” on emergent intelligent behavior within the system is not artificially constrained, and I discuss some relevant academic work validating these ideas. Show that this is a solution to the challenges posed in chapters 3 and 4.



Night and Day
Daytime: active phase. Catabolism - disassemble large polymeric molecules, (proteins, fats, carbos, nucleic acids) into monomeric building blocks (amino acids, fatty acids, sugars, nucleotides). Distribute monomers to active tissues. Convert monomers into energy\bearing molecules. Use aerobic pathways to produce ATP than anaerobic pathways.

Inactive phase: renewal, anabolism - assemble new polymers for growth, repair, remodeling, immunity. Replenish reserves by storing residual monomers as resynthesized polymers.

forage during the day, store excesses and recover during the night. 
Switching between catabolic and anabolic systems are expensive. So brain needs to anticipate environmental shifts.


Tracking the flow of energy in time is one way to do causal attribution / discovery. 

DeepMind’s Parkour paper 
Challenging environment forces emergent low-level skills that are more robust than just training in easy environment

Competition and Self-Play




OpenAI 


Note that the discoveries made by the larger-scale BS2 led to much more interesting dynamics than the test run with a single human in a small enclosed unit.




Evolution of Communication
https://twitter.com/ericjang11/status/1251212184912228352?s=20

How do we get vision system to understand sketch representations? Has been an open question in computer science.


Narcissus, who fell in love with his own reflection



\footnote{I quite liked Kurzgesagt's recent video explaining how consciousness (something lying on the spectrum of intelligent life) https://www.youtube.com/watch?v=H6u0VBqNBQ8}

environment that forces agents to distinguish from one another
Model-based RL and meta-learning won’t work unless there are a rich distribution of tasks to learn from. 
Hand-designing a rich distribution of tasks that share task-relevant structure, with a mix of non-trivial and trivial tasks, is difficult.
Environments with growing vegetation, terraforming soil create a lot of visual change - demands general perception capabilities to evolve. A testbed with which we can perhaps evolve ConvNets or perhaps something even better.
Agents have the ability to (slowly) terraform their landscape - provides 
Computation requires energy expenditure.

Does Life have an Objective?

Our physical reality - and therefore the formation of life itself - lacks an optimization objective - it just happens according to the laws of physics. But our framework for constructing AI systems require us to search across a space of “solutions” for something that we want. Each time we find a good solution, we start the whole simulation over. 

It might represent an explicit optimization objective, e.g. maximize some fitness criterion.

argmax_{animal decisions} criteria(animal decisions)
argmax_{genes} criteria(genes)
argmax_{physical laws} criteria(universe) 


The state of the world “evolves” according to the laws of physics. It gives rise to biological evolution, in which some lifeforms disappear from the gene pool quicker than others. 

Meanwhile, optimization implies that there is some physical law of control drifting the state of the world in some particular direction. A universall force like gravity. 

If we want to simulate an artificial universe resembling ours, to add an explicit optimization procedure to the simulation - to impose the state of the world be more “fit” according to some criteria from one time period to the next - would be inconsistent with the very reality that we live in.

Research Links:
https://thegradient.pub/an-introduction-to-artificial-life-for-people-who-like-ai/

