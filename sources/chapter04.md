---
chapter-number: 4
title: From Narrow to General AI
link-citations: true
reference-section-title: References
---

A human being should be able to change a diaper, plan an invasion, butcher a hog, conn a ship, design a building, write a sonnet, balance accounts, build a wall, set a bone, comfort the dying, take orders, give orders, cooperate, act alone, solve equations, analyse a new problem, pitch manure, program a computer, cook a tasty meal, fight efficiently, die gallantly. Specialization is for insects.
 — Robert Heinlein, Time Enough for Love

In chapter 2, I discussed how Software 2.0 is a powerful paradigm for creating programs that we don’t know how to articulate precisely in hand-written code. All you need is a large dataset of inputs and target predictions, a lot of computational power to “compile” the data into a function approximator, and some R&D elbow grease to “make it work”. Elbow grease might be a bit of an understatement, but on the whole I am confident ML technology will have a much larger role to play in the future of software.  

Looking to the long-term goals of AI research though, there remains the long-standing puzzle of how to actually build Artificial General Intelligence. Our Narrow AI systems -- often built using Software 2.0 -- can learn complex behaviors that no human can hard-code on their own - even ones previously thought to require human level intelligence, but they are far from possessing all the general faculties of human intelligence. As Heinlein’s quote at the beginning of this chapter alludes to, our ML systems are still so specialized that they are more insect-like than human. 

It is not obvious at first why we would want software systems to have the general capabilities of humans. What business does a system that performs credit card fraud detection have with knowing what a cow looks like? Doesn’t a cancer-detecting computer vision system just need to do one job well? Maybe, but human judgement acts as a security layer to deal with the edge cases of reality. It’s why we still require human pilots in the cockpit of airplanes, because even though the plane can take off and land itself most of the time, we know that a human can intervene and take in information the autopilot has no way of knowing or understanding.

Here are some concrete examples: an ML model that performs accurate credit card fraud detection cannot explain to a child the concept of credit fraud, nor can it automatically adapt to the changing cybercrime landscape, nor can it reason about the motivations of fraudsters or reason about a new attack vector from first principles.

In medical imaging - AI systems are now on par with the best human radiologists when it comes to diagnosing breast cancer. However, replicating the cancer-diagnosing capabilities of a doctor is an entirely different problem than reproducing the doctor herself. 

The specialized systems we build lack human judgement - all the common sense your average human possesses beyond their job-specific functions. If you show a picture of a tree to a radiologist and ask them whether the picture contains breast cancer, they will tell you “I can’t diagnose the patient because you are showing me a picture of a tree. Is this some kind of mistake?”. In contrast, most ML models today would readily give you a prediction without realizing that the inputs are anomalous. It might even mistake the tree for a rare, aggressive tumor, with high confidence.

That is why automated call center voice menus are so frustrating and that people often just want to speak with a representative immediately. A human doctor can relate to a patient who is apprehensive about needles, and can understand the narrative of another patient whose job-related stress is inducing health problems, and use that to deduce the right treatments.

Absorbing the World’s Data

How can we imbue our AI systems with more “common sense”? A radiologist’s learned experience and human judgement comes from far more than the X-Rays she’s studied. She had a childhood and learned common sense knowledge and a variety of other important medical knowledge in school. Perhaps we can show our AI radiologist images of trees and frogs and everything else under the sky, so that it understands when we are accidentally giving it non-MRI images.

The more we show our models about the world at large, the better they are at understanding the world outside of the immediate task at hand. 

The Internet is a rich source of information - roughly speaking, it contains the culmination of all human knowledge. There are countless YouTube videos of people living out their lives, with ___ lifetimes worth of data being uploaded each day. Wikipedia is a compendium of a vast amount of scientific and historical and cultural knowledge.

Enormous language models trained on Internet data can capture a surprising amount of commonsense knowledge. I asked such a model to perform a spatial reasoning task, and it generated a surprisingly coherent reply:

Me: I tried to put the trophy in the Tupperware but it wouldn't fit. What should I do?
AI: I would recommend using a different container for your trophy.

The coherent answer suggests an implicit understanding of what is happening spatially - despite never having “seen” what a tupperware or trophy looks like, the model has compiled enough understanding of natural language to be able to identify the ambiguous pronoun (it) as referring to the trophy. 

AI Researchers are similarly excited about using other forms of rich data, like YouTube videos, to imbue our systems with visual “common sense”. 

Obtaining Human Judgement

Absorbing a vast amount of knowledge in the world seems to be a critical ingredient for AGI, but an AGI should be more than an information retrieval system. AIs should have agency - the ability to understand goals (perhaps provided by people), and strive to achieve them.

Here is a non-exhaustive list of capabilities researchers have postulated as useful capabilities of AGI systems:
Innate curiosity
Imitation-learning
Unsupervised learning
Learning from small amount of experience
Long-Term Memory
Creativity and imagination
Reasoning and planning
Symbol manipulation
Multi-agent communication
Understand goals
Causal reasoning
Empathy
Commonsense reasoning
Multi-domain learning
Bayesian decision making
natural language understanding
Models of physics
Intuitive psychology 
Self-awareness
Humor
Love for humanity
appreciation of beauty
Third-person imitation (e.g. learning how to fix plumbing from watching someone on YouTube)
Many of these ideas predate modern machine learning, and researchers have spent decades attempting to formalize these capabilities mathematically, and building small-scale proof-of-concepts of each of these elements. 
Looking at this daunting list of capabilities, one cannot help but wonder if it really makes sense to build all these intelligence capabilities in isolation, and then somehow sew them together like some kind of Frankenstein’s Monster. What does it mean to have a really good “mental physics model of the world”? An inert agent that stares at a wall all day and does nothing can easily learn an accurate model of the world, for nothing ever happens. But this model is not interesting to humans. We want a model that is accurate across all sorts of situations a human might encounter in their lifetime, but then this may depend on capabilities like curiosity, learning, and long term memory.  
I do not believe it’s possible to build well-defined capabilities in isolation (a separate “memory module” and a separate “intuitive physics” model) and then “just” combine them. 

Could we potentially use Software 2.0 techniques to integrate all these capabilities? Deep Learning figures out how to re-use computational capabilities in layers to serve both cat and dog classifiers, so why shouldn’t the same principle apply to re-using higher level capabilities?

For instance, the AGI might switch on its unsupervised learning and third-person imitation learning module when watching YouTube videos, and it might switch on its appreciation for beauty when looking at a sunset, and switching on symbol manipulation when trying to decode some ancient hieroglyphics.

But therein lies a new challenge - what is the final objective you are optimizing for?

If we have a loss term that encourages the model to be “empathetic”, how do we balance that, numerically speaking, with the desire for “curiosity”, or the objective for “forward world prediction”? 

At the end of the day, Software 2.0 requires an optimization objective. What is an objective that leads to an AGI? 

Artificial Intelligence research today largely focuses on thinking about high level capabilities that are useful to humanity - how we achieve value alignment with humans, artificial creativity, innate curiosity, assisting the elderly, forecasting the future, learning efficiently. However, these are all pieces of the final system that we want - there is little discussion today on how we go about integrating all these ideas into a single, cohesive entity that is capable of expressing all these capabilities at once.  


In the following chapters, we will lay out an outline for how we might integrate all these capabilities together.


Machine Learning gives us a way to find programs from a dataset of inputs and outputs, but in order to recover a program for “AGI”, we need to figure out what the dataset for AGI is in the first place! These questions have been posed in the earliest days of AI research, and remain unsolved today.

 

TODO: replace this with your 
 
LeCake - 
Perhaps the most relevant field here would be "self-supervised learning", which is essentially a buzzword for "supervision signal that one can compute cheaply". The general consensus is that data involving human labelers or episode rollouts are "expensive" and data involving passive observation / robotic automation are cheap.
 
We want to have a lot of cheaply acquired data (e.g. youtube videos)
A small amount of human-labeled expert data (e.g. humans saying what the correct decision should be)
And a very tiny amount of embodied interaction in an environment (e.g. a robot physically trying things out and discovering things for itself from the world)
 
 
 
Some luminaries in the field 
Summarizing some views:
Jeff Hawkins - scaling up a simple algorithm (not neural networks and backprop though) should build AGI, and all you need is the neocortex. 
Schmidhuber - the brain is a world model, prediction of the future enables all else
Yann LeCun - LeCake - bulk of intelligence formed by unsupervised learning (cake), small amount of supervised learning (labeled supervision), very small amount is reinforcement learning (RL)
<TODO - interview some others, more diverse representation>
 
The Treachery of Images is a 1929 painting by Belgian surrealist painter René Magritte where a picture of a smoking pipe is labeled “Ceci n'est pas une pipe”. 
A recent experiment from OpenAI has shown that a image + language understanding model will look at an apple with a sign saying “pizza” and say that the image is of a pizza with extremely high confidence. Ceci n'est pas une pizza
 
 
To get really dynamic behavior, we want to generate algorithms on the fly - i.e. forming a new policy with complex decision making from just a few examples.
