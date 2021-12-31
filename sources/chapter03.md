---
chapter-number: 3
title: Limitations of Narrow AI
link-citations: true
reference-section-title: References
---

Now that we’ve discussed how great neural nets are and all the functions they can approximate, you may be tempted to think that all of society’s technology problems can be solved with deep learning. Let’s just collect a lot of data of human prediction and decision-making, fit it to large neural networks with an abundance of compute, and we can automate any human-level intelligence task! 

Indeed, we have many reasons to be optimistic about the technology and the principles underlying end-to-end machine learning. Deep learning has allowed us to scale to larger input modalities, more data, bigger models, and capture decision making that we struggle to get right with our feeble Software 1.0 assumptions. But it is a double-edged sword: the internal representations of end-to-end ML systems are inscrutable. If the data does not contain important information on how we want the task to be solved, the neural net will simply make something up to minimize error on the training set - in the worst case, simply memorizing the entire training set. By relinquishing control on how the ML model makes decisions, the solution that Software 2.0 finds may be completely inconsistent with how we think the ML model should make decisions, and generalize poorly. Sometimes models can generalize and delight us in surprising ways, and other times it can fail spectacularly in surprising ways. Even if these error rates are low, say, less than 1 failure in a thousand predictions, it is still an unacceptable amount of machine error for human-centric applications like self driving cars, medical diagnosis, or insurance pricing.

Rule-based methods have often been offered up as the solution to these shortcomings of ML. They go by many names - symbolic AI, structural causal models, reasoning-based systems, hybrid systems. In autonomous vehicles, it is common to use a *mediated perception* approach where deep neural networks are relied on to detect and identify objects, but rule-based systems are responsible for reasoning about the state of the world and ultimately directing the car's behavior.

 Critics of deep learning such as Gary Marcus, Judea Pearl jump at every chance to throw shade at machine learning, arguing that "curve fitting" to data can never capture the complexity and generality of logical operations on symbols. It's practically their professional brand to hate on the efforts of deep learning community.

But they are right to point out that neural networks are currently quite brittle in ways humans are not. Often, astoundingly brittle. 

Marcus draws an analogy to The Allegory of the Cave: people inside a cave are holding up puppets, and a fire illuminates the cave so that shadows of the puppets appear on the walls. Some prisoners are facing the walls and only see the shadow. The shadows represent observations, but the true nature of the shadows is the puppets. You can make deductions on how the shadows will move based on a lot of observation of how they tended to move in the past, but until you truly understand the "true nature" of what is creating the shadows, your understanding will only be cursory and forever limited to what you have already seen.

Take, for example, the following task: you want to build a machine learning model that looks at gas station signs and computes the price change from last month.



The reasonable, “hybrid” approach would be to use Machine Learning to parse the “symbols” from the image - e.g. using optical character recognition to read the price $3.70. From there, we rely on good old-fashioned Software 1.0 programming: we use a database to store last month’s gas prices, look up that price and perform numerical subtraction.

In contrast, the end-to-end approach would be to have a machine learning model that looks at two images and outputs the differences in prices - no intermediate subtraction or even understanding that there are numbers. This approach might eventually work with a large amount of data, but much like the Prisoners in Plato’s Cave, our current ML methods will likely never understand the true symbolic nature of the images - that each image contains a numerical price and we are to subtract the prices using well-defined mathematical rules. It is not possible to learn these rules by looking purely at images of gas prices.



<!-- Deep Learning explicitly eschews intermediate, user-imposed data formats, instead using a stack of learned representations. This makes the system more powerful, as our preconceived notions of intermediate representations are often sub-optimal.  -->

<!-- However, deep learning does not equate to “technological progress without limit", for we still live in a world of finite compute and memory and data. 
The "let the neural net figure everything out" has resulted in black box models that sometimes delight us in surprising ways, but also fail spectacularly in surprising ways. This chapter discusses the various difficulties of getting modern "Narrow AI" systems to work more reliably in the real world, and why despite the incredible research breakthroughs in AI, research and applications are still limited primarily to large companies with significant research budgets. 
 -->
<!-- Suppose you want to build a computer vision model that detects and classifies stop signs. You assemble a dataset of stop signs and other road markers, and train a neural network end-to-end. From this dataset, an end-to-end ML system may decide that anything reddish in color is a stop sign, and everything else is not. But in the process of compressing the training data, the model might learn to ignore the octagonal shape of stop signs, or even the word “STOP”. So if you showed it a picture of a fire extinguisher, the ML model might misclassify it as a STOP sign. Likewise, if you showed it a picture of a sign that said "STOP" on a white background, it would misclassify it as "not-a-stop-sign".
 -->

<!-- Seeing that end-to-end methods tend to not be robust enough for full automation in the real world, many researchers have called for adding more inductive biases.
Apalled by the lack of robustness and silly errors ML models make, researchers have called for us to ease up on the "end-to-end" methods, and inject more structural knowledge into our narrow AI models. There are many ways people say it, e.g. "hybrid learned + symbolic systems", "causal deep learning", and so forth. In a way, it is a "backpedaling" of 
backpedal 
Many researchers have called for our systems to utilize more assumptions in our models, either in replacement of or in addition to huge amounts of data. Depending on who you are speaking to, this is called “causal reasoning”,  "rule-based methods”, “interpretable models”.
 -->



<!-- In this chapter we will discuss interpretability, causal ML, and symbolic reasoning. All of these are brought up as ways to "fix" deep learning, but 
As Deep Learning technology begins to leave the lab and have large impacts on society, this impact has attracted the attention of socio-technical academics.
 -->
## Interpretability is a PICNIC Problem

Many researchers have suggested that we could "open up the black box" of neural networks by building models that make "explainable predictions". This goes by other names like "interpretability" and "attribution". For example, we might want to know which parts of an image contributed most strongly to its output, and ensure that the model is at least attending to the right features when making a decision. We could do the same with the parameters of the model - which weights contributed most strongly to the prediction?

What does "explainable" mean, formally? One simple definition is that a human ought to be able to understand how inputs are converted into outputs. But if all you wanted was a complete understanding for why a model predicted what it did, you only need to trace its input through every set of linear and non-linear routines until you arrive at the outputs. Unlike a biological mind, where we are uncertain where computation is happening, a neural net is relatively straightforward set of computations with a high degree of reproducibility. Similarly, if you want a complete explanation for how a model got to its current set of parameters, you only need to trace the updates generated by the dataset over the course of training. All the computations are there for you to inspect, one by one, and you can replay them over and over again exactly as they happen. 

But this is not quite satisfactory to someone who cares absout “explainable AI” - we expect a simpler, intuitive narrative of how a model got to that decision without worrying about every single multiplication and addition operation that took place. A human wouldn't describe how their neurons spiked to perform classification, they would explain to you in language what they saw that made them predict what they did.

The problem is that the computations are so numerous and there are no intermediate visualizations in the network that a human can use to check that the model understands the problem as the human does. In computer programming we have a name for this: PICNIC - "Problem In Chair, Not In Computer". So interpretability cannot be a strictly formal mathematical definition, but one that must align with the cognitive biases (and cognitive limitations) of humans. 

So, when we say “interpretability”, we don’t mean the ability to probe a neuron like a neuroscientist does a mouse. We mean that the model should give us a fairly short summary of the millions of computations that took place, so that we get the most important parts described to us, and not only should the output be correct, but the explanation should be human-readable and consistent with our own understanding. We want the model to reason in the space of human thought, perhaps express those computations to us via language. Models today are effective at building language, but we don't have models that perform prediction tasks by *reasoning in language space*. I think leveraging modern language models as a building block for "reasoned prediction" can be quite an interesting approach to tackling interpretability in a human-aligned way.

## Causality: A Figment of Human Imagination?

Causal reasoning deals with tools that allow us to make special kinds of inferences from data, such as counterfactuals. One example of answering a counterfactual question from data is "what would happen if had given the drug to the patient?" This requires certain assumptions that current ML methods do not explicitly make.

A close cousin of the demand for "interpretable models" is the clamor for ML models to be "causal". 

No louder voice has been from Turing Award winner Judea Pearl, who pioneered a lot of the statistical and computational models for modeling

<!-- TODO: need a more detailed treatment of causal ML -->

For instance, if we were training a ML model to predict the next frames of a video, we would want it to understand that it is the happy dog that wags the tail, not the tail wagging that makes the dog happy. Of course, human intuition about causality is not always correct - it turns out that behaviors like smiling can affect emotion (the facial feedback hypothesis), and the mathematics of causality sort of break down when reasoning about coupled systems (e.g. two planets orbiting each other - what causes what?). But all the same, we expect our models to conform to our human expectations in order to find them trustworthy.

One might design a more clever training dataset to remove such “spurious correlations” (for example, training the network on red, octagonal objects that are not stop signs, but in practice it’s hard to design examples to cover all the edge cases. 

Having less transparency on how ML models come to make the decisions they do is, at best, hard to debug, and at worst, dangerous for the users. 

<!-- By taking those assumptions away, we have lost the ability to exert control over the complex, parallel computations now being made by function approximators. -->

When a jury declares a criminal guilty of murder, it is because they are convinced he, through deliberated malice, caused someone's death. 

But reality is multi-causal: he commited the crime because of the way he was brought up, because of his genes, because the wrong people happened to be in the wrong place at the exact same time (e.g. the murder and the victim).


All of these issues with deep learning can be fixed - for any given problem there is probably a paper published in the last 5 years offering up some kind of promising algorithmic solution. 


But it's still helpful to point out a relatively wide set of "failure modes" for which we are "asking a bit too much" for current machine learning models.

Critics and even pioneers of Deep Learning are quick to point out the fundamental limitations of many of today's machine learning methods, but the community is also just as quick to point out all the ideas and papers exploring ways to patch over limitations of ML algorithms.



Similar to how we try to summarize the intricate computations of fluid dynamics into a simple explanation of why planes fly, we find that any intermediate, non-technical explanation sort of falls short, does not capture the whole picture, is [a leaky, approximally causal abstraction](https://www.scientificamerican.com/article/no-one-can-explain-why-planes-stay-in-the-air/)




The no free lunch theorem tells us that a model is only as good as its biases and data permit it to be. If you want to spend less money on computers or data, you had better write down some good biases. And if history is any indication, humans are not particularly good at formulating good biases for models - if we were, we wouldn’;t have any need for learning! 



“Sample-efficient learning” is an oxymoron. If you want to spend less $ on compute/data, the no free lunch theorem requires you to write down good inductive biases. If you are hard-coding more and learning less, can we really still call that “learning”? 

Socio-technical systems - first coined by 

Execution

Firstly, the Deep Learning recipe is not very reliable because we don’t fully understand when it works and when it doesn’t. Behind every successful demonstration in the field, there are dozens of similar projects that had the right idea but failed due to execution reasons:

Not enough hyperparameter search
A missing building block not invented yet (e.g. Transformers, ReLUs, Normalizing Flows)
an intuitively correct idea but a mistake in the mathematical formulation.
Software engineering skill of the lead researcher.

<!--ideas vs. execution and academia vs. industry - should this be moved into different chapter? -->


utilizing Deep Learning is still much of an art than a science, which means that developing something challenging like AGI will require engineers and researchers of such profound intuition and skill if they are going to rely on methods that are not fully mature.
Without clear understanding of natural data and the models we train on it, we have to rely on pure empiricism - it is effective and will eventually work, but is simply kind of slow.

I’ve reviewed close to a hundred papers now and read close to a thousand.

Surface Level Statistics vs. Symbolic Manipulation


## Academia vs. Industry

Academia regards industry's growing influence over AI as problematic, because they are beholden to capital interests.

In a recent workshop hosted by Stanford HAI, Jack Clarke noted that the big drivers of progress in the last decade have been compute, infrastructure, and scaling up prior models rather than inventing entirely new ones. None of these are typically rewarded by academics, and as a result academics have fallen behind.

academic culture is not well-structured to invest in the long term efforts. The constant churn of grad students optimizing for paper publications on novel ideas rather than pushing a "Manhattan Project". Another social woe is that powerful technology tends to make lives worse for people who don't have much participation and stakehold in creating that technology.


Self-Driving Cars Are Still Kind Of Dumb



Most academics are more concerned with claiming credit for fairly blasé ideas for creating powerful systems than actually building powerful systems.

Cost

Deep Learning is expensive. 

<Cost OpenAI roughly $12M to train their GPT-3 system>


deep nets are very lazy predictors that can do a little better when it is encouraged to be not so lazy. The question is whether they can do something very non-lazy as we make datasets harder.


We Still Don’t Know How to Create AGI



knowing how to build a superhuman chess player does not mean we know how to build a human-like mind that also knows how to play chess.



Academic Culture

AI is a human endeavour, and with that comes a slew of humanity-centric problems. 

Not inclusive, participants are shaping technology and society in ways that don’t include the perspectives of the world. As with any technological development, this poses great risk for increasing wealth inequality in the world.

Blog post on why this prof left academia is a good summary: https://reyammer.io/blog/2020/10/03/the-good-the-bad-and-the-bye-bye-why-i-left-my-tenured-academic-job/
 
Every academic will pay lip servie to “the publish/perish” culture, but then go back right to churning out  a lot of bad papers and point fingers at other academics

Academics are distracted by a lot of things that have nothing to do with research / engineering - for example, getting citations, reviewing duties, chairing conferences. The more senior someone gets, the more management bullshit they have to deal with and the lest time they have to actually build. You see a common problem where top researchers rarely have new ideas of their own - rather, they are just the mean belief over their 5 best grad students (who are the ones with actual new ideas). 

Many academic works are more art pieces than actual systems that make it into real products - often because the method does not scale to the real world, or because the effect is marginal given the addition of even more data scale, or more often than not, the researcher simply does not put in the work to make it happen.
Academic incentives do not encourage long-term investment in Manhattan-style projects. Grad students spend 1-2 years building some piece of the puzzle by themselves. Code is not being re-used.
Academic ML researchers tend to have 1 or 2 authors do the bulk of the work, with everyone else in a honorary advising role or doing a bit of paper writing (but not running actual experiments).


Generalization vs. Fabrication

Another human-centric problem that faces us today

at times even dangerously misguided.

Consider an example where we attempt to reconstruct living depictions of animals from their bones, so that we may ask what color a T-Rex may have been or whether it had feathers. 

You can build a large dataset of present-day animals (for which we know what they look like), and some birds might even have skeletons resembling prehistoric dinosaurs. You then train an ML model to predict the skin from the bones, and find that it works well. You then apply the same model to dinosaur bones, and it renders a fairly interesting interpretatiion.   

If you ask an ML system to solve a problem for which the inputs cannot possibly determine the answer (i.e. the color of a fossilized animal or the skin color from a person's statue), it will give you a highly biased answer.

How do we build a single computer that can open a soup can, drive a rental car, design a shoe, socialize with a group of strangers, and console a grieving person?

An ML system that predicts facial reconstructions of roman emperors from statues can lead to people believing these images as true, i.e. "this is what the Roman Emperors looked like". In our age of media where people are quick to re-share content without fact-checking, it can lead to computer-generated content being accepted as an authoritative interpretation, or even a historical fact. 
I fear that some laypeople think of ML as "magic software that can do anything" without considering whether a problem is non-ambiguous given its inputs (e.g. something like object classification is less ambiguous than this problem).



Note that many of these abilities are capabilities, much like we specify assumptions in the functional form of model. Some of these are internal behaviors, ones that we don’t really observe physically but believe happen in a brain. We observe the consequences of behavior like learning and memory, not the act of storage and retrieval themselves.

Note that these are behaviors we wish to see in systems, and somewhat agnostic to how we actually go about acquiring these.




<show a toy plot of two tasks>


It is clear that thinking about a “function to aprpoximate dreaming” and a “function to approximate learning” might be the wrong thing.

The database you gather of inputs and outputs rarely specifies the function that you actually want.


Imbuing functions not just to spit out predictions, but to spit out actions. This simple modification -- mapping a prediction to an external influence on the world -- is key to delineate between perceptions that predict and functions with agency

In machine learning, it is only possible to “understand” a discrete concept A from all other concepts B. This requires drawing  a “line” separating all instances of A from B, and this is exactly the process that we train neural nets to do when learning to perform classification: draw the separating boundary between two mutually exclusive concepts. 

Likewise, we must draw an imaginary boundary separating “what neural nets can do” from “what neural nets cannot do” - one cannot fully understand one without the other.


In the previous chapter we discussed how general methods can get even mroe general when they subsume the design process itself - we can go increasingly meta. While this principle singularly explains why ML works (use data, make fewer and fewer assumptions), it gets exponentially more expensive each time we attempt to go up the “meta” optimization hierarchy.



Human-in-the-loop, think about experiment result and try again (is a multiplier on any of the past)


Length of experiment
centuries

 
I'm already making a fairly unrealistic assumption that "episodes" are only 100 frames, and that while each inference time is 100x the inference time of the previous step, the training time only scales 10x of the prior training time (maybe thanks to better meta-learning algorithms or dynamic programming ideas)
 
The only respite would be if the first 4 phases were done on small surrogate problems and the final thing was done once. Or if there was a way to not have to re-start life several times over in the process of attempting to optimize it. 


what would the operating system look like? 



I am concerned with creating 2.0 systems, because I am not particularly interested in AI that understands itself so well it can design itself. I


You can build a model that exhibits knowledge of the world - by asking it to fill in the blanks to written text, by asking it to fill in pixels, by asking it to predict what a human would do. But in service of what? There is nothing that forces the model to be internally consistent 


Better Methods for Policy Search/Optimization: There is a distinction between the behavior (we wish to see memory, learning, inference, etc) and the means by which we optimize for it (policy search). Self-play, imitation learning, RL are all methods to achieve it. Self-play games will be a key component of this, because we have guaranteed improvement (as opposed to degenerate equilibria), but we can also use as many tricks as we have our disposal to accelerate learning. 

This encompasses imitation learning, reinforcement learning.

Real safety issues:
https://twitter.com/dogryan100/status/1322001195532128256?s=20

Incident where a NaN value was propagated to the steering lock, setting its steering value to the rightmost value, causing it to hard swerve into a wall. 

This is not a failure of AI (it’s not even clear whether deep learning was even used here) - but rather the fact that programming is hard, building complex systems is hard, and often there are unforeseen consequences when building robots that interact with the real world.

