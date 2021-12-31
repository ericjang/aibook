---
chapter-number: 4
title: From Narrow to General AI
link-citations: true
reference-section-title: References
---

<!-- TODO: need to define agent as a an abstract decision-making system. In machine learning, we often also describe the agent having the ability to *learn*, though this is somewhat optional if the agent is already perfectly specified from the get-go. The agent can be programmed by a human, or programmed via a neural network (software 2.0). -->

*A human being should be able to change a diaper, plan an invasion, butcher a hog, conn a ship, design a building, write a sonnet, balance accounts, build a wall, set a bone, comfort the dying, take orders, give orders, cooperate, act alone, solve equations, analyse a new problem, pitch manure, program a computer, cook a tasty meal, fight efficiently, die gallantly. Specialization is for insects.*
 —Robert Heinlein, Time Enough for Love

In chapter 2, I discussed how Software 2.0 is a powerful paradigm for creating programs that we don’t know how to articulate precisely in hand-written code. All you need is a large dataset of inputs and labels, a lot of computational power to “compile” the data into a neural net function approximator, and some engineering elbow grease to scale it up and get it to work. Elbow grease might be a bit of an understatement -- see chapter 3 for the brittleness of narrow AI systems -- but on the whole I am confident ML technology will have a much larger role to play in the future of software. 
<!-- Our Narrow AI systems -- often built using Software 2.0 -- can learn complex behaviors that no human can hard-code on their own, and perform tasks that were once thought to require a human intellect.  -->

Looking to the long-term goals of AI research though, there remains the long-standing puzzle of how to actually build Artificial General Intelligence. As Heinlein’s quote at the beginning of this chapter alludes to, our ML systems are still so specialized that they are more insect-like than human. 

<!-- TODO: move this to end of chapter 3? -->
## When is Narrow AI Not Enough?

The history of engineering has always favored simple, specialized systems with minimal complexity. We built cars instead of robotic horses, and conveyer belts to transport items across a floor instead of machine laborers. It is not obvious then, why we would want our software systems, especially narrow AI models, to have the general intelligence capabilities of humans, as this would add a lot of complexity to the construction of these systems.

What business does a system that performs credit card fraud detection have with knowing what a cow looks like? Shouldn't a computer vision system for classifying radiology images just be trained on a narrow domain of data? We want autonomous vehicles to transport people and goods from A to B safely, not to feel fatigue or road rage as General Intelligences do. Indeed, . Even the biologist Karl Ernst von Baer observed that evolutionary designs seem to follow this pattern: embryonic development becomes increasingly specialized the further one goes down the evolutionary tree.

The reason for General AI is twofold. Firstly, we can design only so much of the world to conform to simple systems. As soon as a system must interact with the complexities of real people - think driving on roads or emergency first responder services or therapy - we need systems that handle edge cases in the general and robust way that a human customer service representative might. The sheer complexity of the world is part of the reason narrow AI can fail in spectacular ways, when they are trained on an input that is unusual. 

In medical imaging - AI systems are now on par with the best human radiologists when it comes to diagnosing breast cancer. However, replicating the cancer-diagnosing capabilities of a radiologist are an entirely different problem than reproducing the doctor herself. The doctor does so much more than just classify images -  If you show a picture of a tree to a radiologist and ask them whether the picture contains breast cancer, they will tell you “I can’t diagnose the patient because you are showing me a picture of a tree. Is this some kind of mistake?”. 

<!-- An example from real-world applications: a ML model that performs credit card fraud detection with 99% accuracy still cannot explain to a child the basic concepts of credit fraud, nor can it automatically adapt to the changing cybercrime landscape, nor can it reason about the motivations of fraudsters or reason about a new attack vector from first principles.
 -->

In contrast, most ML models today would readily give you a prediction without realizing that the inputs are anomalous. It might even mistake the tree for a rare, aggressive tumor, with high confidence. The specialized systems we build lack human judgement and surrounding contextual knowledge about the task - all the common sense your average human possesses beyond their job-specific functions. General AI provides a "common sense" safety layer on top of narrow AI, which knows when the inputs are reasonable, and to extrapolate beyond what the training dataset for a predictio problem tells us by leveraging general knowledge about other problem domains. If we take General AI methods as "learning important knowledge beyond what the task-specific dataset tells us in order to make them more robust", then it starts to look surprisingly reasonable in regards to practical AI methods. We simply want our AI systems to be more robust, self-consistent, and in the process of hardening our narrow AI systems, we will begin to develop the faculties of General AI capabilities. For this reason, I believe that the criticisms of Narrow AI are not an indictment against learning based approaches, but rather highlight the need for learning to incorporate *General AI* faculties in order to make the systems more robust.

<!-- Human-level judgement acts as a security layer to deal with the edge cases of reality. It’s why we still require human pilots in the cockpit of airplanes, because even though the plane can take off and land itself most of the time, we know that a human can intervene and take in information the autopilot has no way of knowing or understanding.
 -->
<!-- Some want to understanding human intelligence as a special case of the "first principles" of intelligence. Others want to build narrow AI systems that bring economic propserity to humanity, and think of General AI capabilities as a way to robustly handle edge cases. Some folks like chasing a multi-disciplinary intellectual challenge that can never really be finished. And some people, for lack of a more articulate wording, think that having robot people that walk and talk like humans would be "fucking cool". -->

The second reason is one of pure intellectual curiosity. Yes, we know that cars are more energy-efficient than horses at transporting things. But who wouldn't want to see a robotic pet horse? It's not always about logistics, there are some things that are just fucking awesome unto themselves. 


## Human-in-the-Loop AI

In order to be truly robust, Narrow AI systems will likely require a "common sense" General AI module in order to be robust, explaianble, self-consistent, and so on. But it will be quite awhile before such modules have shown their promise. In the meantime, why not let the doctor focus on what she is good at - the human-centric aspects of patient care, and let the AI handle the boring run-of-the-mill classification and memorization problems? This would allow increased automation to benefit society, while letting the doctor get to focus on the more challenging tasks. Ineed, I think a likely future of how AI software will be integrated into the real world will not be pure automation, but a hybrid system that allow human and AI capabilities to complement each other.

The future of AI software deployed in real settings will likely be a hybrid of narrow AI and general AI capabilities, with humans serving as a stand-in for general AI capabilities while the researchers work out how to widen narrow AI into increasingly general capabilities. We already see this with automated phone menus which recognize voices and can perform basic rote services, but fall back to a real human when an unusual request is made.

Here, human intelligence can be thought of as handling the parts of a problem that require general intelligence, while the AI performs the "narrow intelligence" tasks. Narrow AI capabilities continue to widen, but for things that require adapting to new circumstances or logical reasoning or creativity, a human still does better.

1. Human (no automation) 
2. Human-Designed Automation
3. Data-Designed Narrow AI + human "safety operator" as the General AI 
4. Data-Designed Narrow AI + Data-Designed General AI

<!-- That is why automated call center voice menus are so frustrating and that people often just want to speak with a representative immediately. A human doctor can relate to a patient who is apprehensive about needles, and can understand the narrative of another patient whose job-related stress is inducing health problems, and use that to deduce the right treatments. -->
<!-- 
## Sequential Behavior

A long-standing problem in ML training is the fact that ML systems must present data in a randomly sampled, i.i.d order. 


From an optimization standpoint, presenting such a large bias in the presentation of data means that you need to make the optimization process essentially be invariant to the order with which you present it data. This is hard from a design standpoint.

Sequential behavior is a form of deep generalization - we interact with an object, it presents us with new information about that specific context, we must reason about it and incorporate it into our *existing* world views. -->


## The Kitchen Sink Approach

Human-in-the-Loop AI is probably enough from a practical, socioeconomic, and even regulatory standpoint to get AI technologies used widely and to generate a lot of economic value, but unsatisfactory to the people who want to understand or build general intelligence. 

In trying to widen our narrow AI methods into more general ones, researchers have examined the behavior of human and animal intelligence postulated a lot of "missing features" that an AGI ought to have. Here is a non-exhaustive list:

- Innate curiosity
- Imitation-learning
- Unsupervised learning
- Learning from small amount of experience
- Long-Term Memory
- Creativity and imagination
- Reasoning and planning
- Symbol manipulation
- Multi-agent communication
- Understand goals
- Causal reasoning
- Empathy
- Commonsense reasoning
- Multi-domain learning
- Bayesian decision making
- natural language understanding 
- Models of physics
- Intuitive psychology 
- Self-awareness
- Humor
- Value alignment (Love for humanity)
- Appreciation of beauty
- Sequential Learning
- Third-person imitation (e.g. learning how to fix plumbing from watching someone on YouTube)

Many of these ideas predate modern machine learning, and researchers have spent decades attempting to formalize these capabilities mathematically, and building small-scale proof-of-concepts of each of these elements. 
Looking at this daunting list of capabilities, one cannot help but wonder if it really makes sense to build all these intelligence capabilities in isolation, and then somehow sew them together like some kind of Frankenstein’s Monster. What does it mean to have a really good “mental physics model of the world”? An inert agent that stares at a wall all day and does nothing can easily learn an accurate model of the world, for nothing ever happens. But this model is not interesting to humans. We want a model that is accurate across all sorts of situations a human might encounter in their lifetime, but then this may depend on capabilities like curiosity, learning, and long term memory.  
I do not believe it’s possible to build well-defined capabilities in isolation (a separate “memory module” and a separate “intuitive physics” model) and then “just” combine them. 

Each of these abilities can be thought of as a "sub-routine" that, when executed, demonstrates some skill in isolation. But if these are sub-routines, what is the equivalent of the "operating system" that chooses which routine to run and binds all the capabilities together? The “operating system”’s role is to coordinate the execution of multiple applications simultaneously. Furthermore, there are big integrative questions here. Do we build some kind of “hierarchical” controller that decides which “application” to run? What applications do we pre-package the system with, and what if we need to learn a new application? 

Solving the "integration problem" is tricky because the sub-routines ought to interact closely with each other synergistically. For example, memory obviously aids learning from experience. When we sleep at night, our brain replays memories to us - jumbled together in the form of a limited consciousness experiencing dreams. Dreaming is thought to be important to the learning process. But if these pieces are dependencies of each other, how do we approximate these functions separately? Is Common sense reasoning an individual module that knows a lot of facts, or an operating-system piece that talks to other modules and builds a cohesive world-view? How does that knowledge get transmitted to other modules? Does it even make sense to impose a hierarchical control scheme where the “operating system” asks various pieces (curiosity, planning, etc) to perform their specialized function, like a conductor at an orchestra? Or is it just a cacophony of neural regions, like a jazz band where nobody is really “in charge” but the whole thing works out anyway?  


Jeff Clune has often pointed out in his talks about AI-GAs (AI-Generating Algorithms) that it's not clear how you put these pieces together. We must *go meta*, by discovering these capabilities from scratch rather than prescribing a system for it.




<!-- Even if we had all the individual pieces of Moravec’s landscape above, there’s still the challenge of how all these “intelligence” applications coordinate with each other to realize a system that can borrow 
The process of executing some application, we receive a stream of information. 
 -->

## Large Models: Slurping up Internet-Scale Data

The Internet is a rich source of information - roughly speaking, it contains the culmination of all human knowledge. There are countless YouTube videos of people living out their lives, with ___ lifetimes worth of data being uploaded each day. Wikipedia is a compendium of a vast amount of scientific and historical and cultural knowledge. Companies like Google build datasets like JFT, which are orders of magnitude larger than public research datasets.

Absorbing a vast amount of knowledge in the world seems to be a critical ingredient for AGI, but an AGI should be more than an information retrieval system. AIs should have agency - the ability to understand goals (perhaps provided by people), and strive to achieve them.


How can we imbue our AI systems with more “common sense”? A radiologist’s learned experience and human judgement comes from far more than the X-Rays she’s studied. She had a childhood and learned common sense knowledge and a variety of other important medical knowledge in school. Perhaps we can show our AI radiologist images of trees and frogs and everything else under the sky, so that it understands when we are accidentally giving it non-MRI images.

The more we show our models about the world at large, the better they are at understanding the world outside of the immediate task at hand, and the fundamental principles that underly our reality.

Enormous language models trained on Internet data can capture a surprising amount of commonsense knowledge. I asked such a model to perform a spatial reasoning task, and it generated a surprisingly coherent reply:

Me: I tried to put the trophy in the Tupperware but it wouldn't fit. What should I do?
AI: I would recommend using a different container for your trophy.

The coherent answer suggests an implicit understanding of what is happening spatially - despite never having “seen” what a tupperware or trophy looks like, the model has compiled enough understanding of natural language to be able to identify the ambiguous pronoun (it) as referring to the trophy. 

AI Researchers are similarly excited about using other forms of rich data, like YouTube videos, to imbue our systems with visual “common sense”. 

Obtaining Human Judgement


Could we potentially use Software 2.0 techniques to integrate all these capabilities? Deep Learning figures out how to re-use computational capabilities in layers to serve both cat and dog classifiers, so why shouldn’t the same principle apply to re-using higher level capabilities?

For instance, the AGI might switch on its unsupervised learning and third-person imitation learning module when watching YouTube videos, and it might switch on its appreciation for beauty when looking at a sunset, and switching on symbol manipulation when trying to decode some ancient hieroglyphics.

But therein lies a new challenge - what is the final objective you are optimizing for?

If we have a loss term that encourages the model to be “empathetic”, how do we balance that, numerically speaking, with the desire for “curiosity”, or the objective for “forward world prediction”? 

At the end of the day, Software 2.0 requires an optimization objective. What is an objective that leads to an AGI? 

Artificial Intelligence research today largely focuses on thinking about high level capabilities that are useful to humanity - how we achieve value alignment with humans, artificial creativity, innate curiosity, assisting the elderly, forecasting the future, learning efficiently. However, these are all pieces of the final system that we want - there is little discussion today on how we go about integrating all these ideas into a single, cohesive entity that is capable of expressing all these capabilities at once.  


This can be complementary to human-in-the-loop. One could imagine a large model like this helping with automating human-in-the-loop decision making, by providing external knowledge that helps predict how a human would rate a robot or some video data.



## Unsupervised Reinforcement Learning

When we learn to code, it's not sufficient just to watch a bunch of youtube videos about programming. We must do it ourselves, get stuck, overcome new surprises to uncover what we don't know we don't know.






In the following chapters, we will lay out an outline for how we might integrate all these capabilities together.


Machine Learning gives us a way to find programs from a dataset of inputs and outputs, but in order to recover a program for “AGI”, we need to figure out what the dataset for AGI is in the first place! These questions have been posed in the earliest days of AI research, and remain unsolved today.

 

TODO: replace this with your 
 
LeCake - 
Perhaps the most relevant field here would be "self-supervised learning", which is essentially a buzzword for "supervision signal that one can compute cheaply". The general consensus is that data involving human labelers or episode rollouts are "expensive" and data involving passive observation / robotic automation are cheap.
 
We want to have a lot of cheaply acquired data (e.g. youtube videos)
A small amount of human-labeled expert data (e.g. humans saying what the correct decision should be)
And a very tiny amount of embodied interaction in an environment (e.g. a robot physically trying things out and discovering things for itself from the world)
 
## Challenges of General Evaluation

(mention your experience working on BC-0 and how difficult it was to evaluate a general system)

hereditability scores are over estimated when effect is studied in a single environment controlled, because you basically minimize the variance provided by the environment (it is 0). When you study the same genetic variation over more environments, your measurements of the average effect of a gene is now averaged over different environments, which lowers the hereditability score! one consequence of this to ML is that when we control too much (e.g. testing multiple algorithm on single env ), we overestimate the contribution of the algorithm!

Maybe, once we look at a lot of environments / lots of tasks, the contribution of algorithms diminishes drastically


its not meaningful to ask what a gene does, you can only ask what a gene does in context of its environment (e.g. testosterone does not cause aggression, it merely amplifies aggression responses) . one implication of this is that maybe we are not assessing our learning algorithms in the right way -we have to study them in the context of the environment they are evaluated on.

Some luminaries in the field 
Summarizing some views:
Jeff Hawkins - scaling up a simple algorithm (not neural networks and backprop though) should build AGI, and all you need is the neocortex. 
Schmidhuber - the brain is a world model, prediction of the future enables all else
Yann LeCun - LeCake - bulk of intelligence formed by unsupervised learning (cake), small amount of supervised learning (labeled supervision), very small amount is reinforcement learning (RL)

 
<!-- The Treachery of Images is a 1929 painting by Belgian surrealist painter René Magritte where a picture of a smoking pipe is labeled “Ceci n'est pas une pipe”. 
A recent experiment from OpenAI has shown that a image + language understanding model will look at an apple with a sign saying “pizza” and say that the image is of a pizza with extremely high confidence. Ceci n'est pas une pizza -->
 
<!-- To get really dynamic behavior, we want to generate algorithms on the fly - i.e. forming a new policy with complex decision making from just a few examples.
 -->


