---
chapter-number: 5
title: The Struggle to Know Anything
link-citations: true
reference-section-title: References
---

<!-- Mention this essay http://johnsalvatier.org/blog/2017/reality-has-a-surprising-amount-of-detail and i, pencil -->

<!-- wrote some copy on this tweet thread -->
<!-- https://twitter.com/ericjang11/status/1424593450255544324?s=20 -->

Walter : When one note is off, it eventually destroys the whole symphony, David.



When a human talks to another human, they can use language which is fuzzy and ambiguous, and the other human can translate the intent into concrete action.

But when we communicate intent to computers, they do not know how to translate our intent into concrete action.


There are a few camps to this observation:
We should augment our Software 2.0 with more Software 1.0 structure so they generalize in predictable ways and are robust to invariances that we hard-code in.
We should lean into even more Software 2.0 so it figures out the right invariances.
A key assumption about all the brittleness of our ML methods is that we expect them to have AGI-level robustness without training them on the same rich datasets that actual AGI systems (e.g. humans) are exposed to. How could a ML model possibly understand that changing the sprites preserves the dynamics? Maybe the success metric is wrong - the way an AGI adds two numbers together might not be the way we expect a calculator to add two numbers, and we are distacting ourselves by trying to get ML systems to achieve perfect robustness on narrow capabilities (something that humans might not even have themselves)

Let us be very clear though, what symbolic AI promigulators are telling us: Hard code what you know, so you can generalize without brute-forcing with so much compute and data. That sounds nice, in theory. But what do we really know? 

Plenty of humans struggle with basic arithmetic as well, and yet they are regarded as “AGI” - what if an AGI does not need to add numbers with the robustness of a calculator?



Take an Atari game and swap out one sprite for another - a human will quickly figure out how to adapt, while the network flounders as if it is starting from scratch. Marcus draws a line between memorization and reasoning, arguing that the latter is best implemented with hard-coded reasoning frameworks, not learning from data. The central critique is that the end-to-end Deep Learning recipe, though impressive, cannot hope to improve on robustness until we combine learning based methods with what we know : logic, inductive and deductive reasoning, categorization, algebraic structures, and so forth. Marcus and others hope that by relying more on a hybrid system that combines rule-based logical reasoning with some learned components, we can build perception and control systems that generalize better. 

Once we do that, we can learn from a few samples, and not be so brittle in the face of new-ish inputs. A hypothetical improvement such hybrid systems would accomplish would be using logical reasoning to quickly generalize:  “Instead of memorizing the fact that Plato and Aristotle and Euripides and each of the other billions of other individuals preceding us were all mortal, you learn a general truth, that all humans are mortal, and apply that general truth to specific instances of that category, as needed.”
its easy to say that ML doesn't generalize but hard to construct a system that actually demonstrates "generalization without ML"


It's like zooming into a fractal - each time you think you've fully broken down the problem into smaller pieces, you find that the small pieces have vast complexity of their own. 






The Treachery of Triples

To illustrate how this all falls apart, let’s discuss a logical reasoning system that deduces knowledge from other knowledge, Cyc. 

30-year project



Marcus brings up an example of where logical reasoning allows two truth “triples”  <Plato, is, human> <humans, are, mortal> to be composed into a deduced truth <Plato, is, mortal>. An AI never needs to experience that, it already knows it by virtue of its deductive capabilities and a much smaller set of observations.

<also point out that Marcus is a fan of Cyc system>

But let’s consider where that falls apart. 

“Alice loves Bob” 

Was it Alice who said she loves Bob, or Bob that said Alice loves him? Maybe a third person, Karen saw the way Alice looked at Bob and concluded that she must love him. Does the observer of that semantic triple define “love” the same way Alice does?


The Treachery of Words

<TODO: discuss Moravec’s Iceberg >

Why is Meaning is porous, arbitrary, and ever-changing?

It comes down to the simple fact that words do not fully capture reality. 

No animal besides humans has a rich enough language system to form and compose semantic triples, and yet it’s abundantly clear that all life possesses a robust understanding of the world - robust enough for them to survive, at least.

We tend to describe ideas with words (or symbols on a whiteboard or a cave wall). Words are pretty much all we have to communicate with one another, but they are inconsistent with how we actually make decisions. I like to describe this as an intelligence "iceberg"; the surface of the iceberg is how we think our brain ought to make decisions, but the vast majority of intelligent capability is submerged from view, inaccessible to our consciousness and incompressible into simple language like English. That is why we are capable of performing intelligent feats like perception and dextrous manipulation, but struggle to articulate how we actually perform them in short sentences. If it were easy to articulate in clear unambiguous language, we could just type up those words into a computer program and not have to use machine learning for anything. Words about intelligence are lossy compression, and a lossy representation of a program is not sufficient to implement the full thing.

Many ideas in AI sound good and might even be "correct" from a 10,000 feet, thanks to the leaky thought abstraction of English/other common languages. Unfortunately, the Devil is in the details of how you translate that rough sketch into code.

If you chain together a bunch of fuzzy definitions into a long ontological reasoning chain, you quickly come up with absurd truths that are counter-intuitive to everyday human understanding of the world.

A single bad semantic triple can lead to an entire ontological web collapsing. The quote at the beginning of the chapter is an allusion to this from Alien, Covenant, where one android warns of the dangers of a wrong thought leading to the eventual corruption of another android.



Take our understanding of objects - we often think of geometry and material as separate attributes - you can have a plastic duck or a metal duck. You might even foolishly think that a compositional way to understand the world is to decompose material from its geometry. But where does geometry end and material begin? 



But in this chapter I hope to convince you that the problem of semantic precision goes far deeper than that - it percolates down to the simplest, most trivial of tasks that we might want an AI to do. 



Software 1.0 can also be thought about as synonyms for “rule-based systems”, and “symbolic AI”, as used by academics in the field.  


In the previous chapter we discussed how building separate AI capabilities like “curiosity” and “world models” and “empathy” does not inform us as to how we actually compose those capabilities together.


This is a bigger issue than we think - it goes even to our desire for causal / interpretability is really saying that we want “a short set of words to explain our AI decisions”




But obviously the surface of the “Intelligence Iceberg” is not nothing - after all, humans can communicate some sort of shared understanding between each other. I’m conveying “something” to you as you are reading these words.
The Treachery of Running

Let’s say you want to teach a robot to run. What does it mean to run? 

You can present a concept of “humor” via impressionistic art, which might evoke a complex idea in a viewer. But it might not tell you how you actually build something 

Even if we could build a machine that could “run”, there are big questions with how we integrate this controll

Do “capabilitis” even exist? It’s not like an animal suddenly turns on its “running module” and then runs, all capabilities are working simultaneously in coordination with each other.

DeepMind Parkour paper


A general intelligence simultaneously knows nothing, and yet know everything. 

The Treachery of Sandwiches

A racoon rummaging through food scraps has an entirely different understanding of the difference between hot dogs and sandwiches. It does not care about whether the bread comes in two pieces or one, or whether the meat is a sausage or a patty. It knows that it is good to eat, and its problem solving skill is highly optimized for finding good things to eat.


To illustrate how difficult it is to truly know anything 


One runs into philosophical questions real fast: can one understand what a teacup is without understanding what bowls are? What people are and how they interact with cups? What 3D objects are as opposed to photographs? 







Machine Learning can handle “fuzzy”, and so far this has worked okay for simple applications like classifying radiology images or predicting credit card fraud, but as we move to higher and higher capabilities or attempt to combine AI capabilities into a single system, the semantic problems become trickier. If we ever hope to build systems that understand reality as we do, we cannot build fuzzy AI capabilities and lash them together with logically concise code.  


Semantics become vital when we turn to the question of how we integrate multiple narrow capabilities into a general system.








Outline:
A brief overview of Symbolic AI - declare “human knowledge” in rules.
Physics (F=ma, explicit position, velocity in Euclidean space).
Invariances
Causal inference is another one - a SCP model that captures what we assume to be true.
Failures of Hard-Coded Human Knowledge
Symbol grounding
Are Alice and Bob In Love?


Plenty of progress without definition of intelligence. 


TODO: is it worth bringing up neat vs. scruffies debates? https://en.wikipedia.org/wiki/Neats_and_scruffies

One of the challenges with expressing ideas in software, as opposed to expressing ideas through philosophy or art, is that you must be logically precise. It is one thing to be able to explain in English how a helicopter works, and quite another thing to actually assemble a helicopter from scratch. As Richard Feynman once said, “what i cannot create i do not understand”. Creation is the ultimate test of understanding.

The problem of precise definitions are especially thorny in legal settings, where people have to draw some kind of line that separates the  “permissible” from the “illegal”. The things we are categorizing - real life case examples - often involve words with legal nuance -- obscenity, tax avoidance, freedom of speech. Did you know that the distinction between “resigning” from a job and “getting fired”  from a job is so technically intricate that it requires lawyers to interpret?

We might expect that AI will also have trouble understanding what these concepts mean, especially because even humans cannot even articulate these concepts precisely. 



And consider the edge cases where our success detector would erroneously fail:
We pick up an object that was initially occluded, so the success detector thinks that there was no change to the objects
A human introduces a new object to the bin and the robot picks it up - the success detector never sees that a new object was introduced.

Indeed, if we are not careful to prevent these scenarios, the robot can actually teach itself too well, and over-optimize for a definition of succes that is not aligned with what the human creators meant. In AI research, this is called reward hacking. Reward hacking is like the fictional Monkey’s Paw of English Folklore - a wish-granting device that gives you what you ask for but never quite exactly what you want.

We might attempt to make our definitions more precise - for example, we might say that “stabbing” solutions are not permitted. Both fingers must be closed around the object such that opening the fingers causes the object to drop, and we must not introduce any new holes into the object.

But what if the object is sticky, and adheres to a single finger no matter how you pick it up? What if the robotic appendage is not a claw, but more like an octopus tentacle? We impose a certain height that the arm lifts the object, but we also know that it is possible to grasp objects (e.g. door handles) without lifting them up. At what point does “grasp” end and “pick up” begin?

Make no mistake; ML is still supremely useful even when it is not perfect; a system that identifies a “grasp” 99% of the time can save an enormous amount of tedious human labor, even if it does not “understand” grasping in the way that humans do. 


But if we ever hope to build systems that can do much more than grasping - tidy a table, clean a room, do chores around the house - leaky understanding of grasping can make it very difficult to set up the task indeed. 

I mean, what even are objects?

These are related to symbol grounding problems - how too bridge digital concepts with real objects and experiences of them in the world.

A mountain seems to be a single object, but if you zoom in it is clear that it is made of countless boulders, trees, and soil. Zoom in further, and you will see that rocks themselves are made of a chaotic backdrop of patterns. Zoom in further, and you find microorganisms - are these “objects”?

Can AI even be arbiters of objective reality ? What should the AI even “know” in a way that doesn’t deeply offend some human?

1. What if an AI therapy bot tells a depressed person to kill themselves? How do you get a language model to obey confidentiality rules? How do you prevent it from memorizing and regurgitating someone's mental health conversation to another patient?
2. I think the implications of replacing journalists with far cheaper automated systems (with substantially less fact-checking capability) have not been well thought out, and I worry that some VC bro is going to rush a product to market before policy makers / stakeholders have thought carefully about whether this is something that we want.
It's telling that GPT-3's best writing successes have been of the "philosophical musing" variety, not of writing accurate articles (I'm not sure whether that says more about AI or Philosophy).


text generative models can store a lot of knowledge in their parameters. how much "common sense" do you want to be stored in the parameters, and how much do you want the agent to have to explicitly look up via external knowledge? 

For facts that are "baked" into the neural net, how do you ensure immutability of that fact under the agent's implicit understanding of the world vis a vis its responses? 

Even if we had a way to have a bot query external knowledge, how does one choose what knowledge is "internal" vs. "external"? Some things like "today's weather" are clearly "external" because it is querying the latest sample of a more-or-less random process, but when I try to think "what knowledge is internal / does not require referencing" it's not so clear. One way to draw the line is to have all "past" information (i.e. assumed to be immutable) be "baked in", and use external knowledge for referencing any information lying in the present or future? And even if we baked all past information into a net, we'd have to be extraordinarily precise with the staleness of that information at time of recording. If you heard that "alice is married to bob" yesterday, and you heard that "mercury is an element" yesterday, where do you store this information?


Objects only exist at certain scales.

Are Alice and Bob In Love?
> https://twitter.com/ericjang11/status/1206012272448950273

I'm skeptical of the symbolic approach by which 1) ontologists manually enter symbolic assertions and 2) the system deduces further things from its existing ontology. My skepticism comes from a position of Slavic pessimism: we don't actually know how to formally define any object, much less ontological relationships between objects. If we let a machine use our garbage ontologies as axioms with which to prove further ontological relationships, the resulting ontology may be completely disjoint from the reality we live in. There must be a forcing function with which reality tells the system that its ontology is incorrect, and a mechanism for unwinding wrong ontologies.
I'm reminded of a quote from the Alien, Covenant movie.


Even concepts like Asimov’s Three Laws - a core pillar of Sci-Fi understanding of robots relationship to humans - are deeply flawed when you come to think about how these three laws would actually be enforced in code. The three laws are as follows:

First Law
A robot may not injure a human being or, through inaction, allow a human being to come to harm.
Second Law
A robot must obey the orders given it by human beings except where such orders would conflict with the First Law.
Third Law
A robot must protect its own existence as long as such protection does not conflict with the First or Second Law


It is clear that when humans communicate and understand concepts, we do so approximately, and colloquially, in ways that are far more complex than our intuitions might suggest at first. Attempts to clarify understanding only introduce more colloquial, subjective, imprecise concepts.

Loopholes:

In the zeroth law, a robot must not harm humanity. But what is good for humanity? Some may argue that killing climate change deniers is good for humanity.

What if a robot kills something it perceives as non-human?
What is existence?

This will douse cold water on ideas that hope to move away from “learning”, such as semantic triplets or symbolic AI, which have been brought up as a means to get around issues with ML.






In robotics it is often preferable to have “stable” grasps, where the robot has a firm grip on the object so that it does not slip out of the fingers. We don’t want our robotic assistants to be dropping dishware and other fragile things! 

But what does “stable” mean? In some research work from CMU, one definition of “stable” is if the robot were to shake its arm randomly, that the object would not fall out. But this might lead to “stabbing” solutions.


 it was incomplete - if the robot had flung the object away, or smashed it to smithereens, 



We need an optimization objective that is difficult to "reward-hack", where it is not viable to simply memorize a dataset (via strategies like memorizing a dataset).

Is it even possible to perfectly classify something? I am a human being and I have trouble pinning down a precise definition of the word "robot" (is this a robot <allison okamura vine>? how about this <thermometer>? how about this <siri>? how about <tiger from life of pi> ? 

Recall that biological intelligence evolved as a means of survival & procreation, not to classify whether a picture is of a teacup or not. Hierarchical RL folks often talk about building high-level skills on top of low-level primitives; perhaps optimizing for life & death is the basic low-level primitive from which all other intelligence should be built.



Suppose you want to build a robot that can grasp objects in a stable manner.


This is where AI excels : in reflecting human preferences, in imitation of human expert behaviors, it lifts the burden of having to be explicit about what we want or how we define something to be a cat or not (human provides label saying something is a cat, but does not tell the machine how to do it).

## What is a Task?

At Google, you would not believe how many millions of dollars in Googler salaries were wasted on the definitions of "robotic tasks".

Multi-task systems do multiple things


## Executing on Ideas


Furthermore, even if the high level recipe is obvious, execution is everything and it may be quite challenging to formulate problems in the right way. There are countless minutiae of obstacles that appear once you get down to the implementation details. For example, multi-task systems - things that are supposed to handle multiple different types of inputs - can sometimes from catastrophic forgetting, where the acquisition of one knowledge annihilates knowledge of how to do another (as opposed to an optimistic story where they help each other):

There is a world of detail that goes into making the idea work.

The AlexNet paper which kicked-off the Deep Learning revolution was preceded a year earlier by a DNN developed by Dan Cireșan, but Cireșan’s network was considerably smaller and he never demonstrated it on a sufficiently hard benchmark. This theme continues to today in computer vision community - the entire field is mostly focusing on the exact same set of problems with tweaks to neural net architecture, so the function approximators are not doing anything substantially new.  But the difference in execution ability has since bridged the 15% top-1 error rate to less than __%. 

The little details involved in improving basic building blocks needed to realize higher level ideas. Take for instance, reinforcement learning, a decades-old effort to create methods that control software agents that perform some task and improve that agent based on experience.

DeepMind is an organization that employs over 1000 people to date, with a sizable population of its researchers working to improve reinforcement learning technology to be more efficient and  scalable.

In 2020, they published Agent57, a generic RL agent that finally matched human-level performance on the Atari benchmark, which they started working on in 2016.

Ultimately, Agent57 comprises thousands of scientist-hours and billions of cumulative compute hours in automated search to find a better Q-learning agent. Agent57 is an incredible achievement, but fundamentally solves the same problems that DQN does. Considering that the original DQN paper was published 6 years earlier, this was still an incredible number of additions to the field made possible by the efforts of the entire research community. Such is the real speed of progress, which is often glossed over by people who are enamoured with the concept of AI but are not really on the ground getting their hands dirty with research experiments.
One reason why research progress can be slow is that academics tend to get lost in the minutiae, asking low-level questions like “how do we tune the regularization term in Max-Ent algorithms to make it easier to use”. 
Such questions have driven much of the AI breakthroughs of the last decade. But 10 years from now, if we are still primarily concerned with these questions and not asking increasingly philosophical questions of identity, creativity, consciousness, and getting agents to dream as humans do, that would be a great disappointment to me. 

