---
chapter-number: 2
title: Software 2.0
link-citations: true
reference-section-title: References
---

Todo: change this software to focus on Software 2.0 programming paradigm

Emphasize that Recent Breakthroughs in AI is nothing more than using automated search to find good programs given data and measurements.
Borrow text from https://blog.evjang.com/2021/03/learning-robots.html 

Early AI systems were based on the premise of performing search to make good decisions. A robot searches over path plans to figure out how to solve a maze. A chess playing software searches over board states for actions most likely to lead to victory. 
The program is a hard-coded search procedure that considers possibilities at deployment time.

What if instead of hard-coding the program, we used another level of search to find the best program? We take a guess as to what a good program might be, and then try it out, and use that experience to guide our “program search” for what program to try next.

This is the essencse of Machine Learning, which is the technology that has led the most advances in AI in the last decade. 

It helps to explain the principles of building AI technology by comparing it to the construction of an everyday object, such as a car. Car manufacturers do not build cars by writing down a perfect car blueprint, assembling them, and then shipping them to customers. Car designs always have to be calibrated to real world conditions because one simply cannot anticipate all the details in advance. A prototype car will be tested out on actual roads to gather data on how well it handles in a variety of conditions (rain, smooth roads), then parameters like the car suspension and tire grip will be adjusted to make the system feel better. The designers might discover things that they didn’t plan for - perhaps an aerodynamic flaw in the car leads to an annoying whistling noise when driving over 70 miles per hour.

The recipe for building any complex system that interfaces with the real world - hardware or software - is the same: You start from an imperfect guess, collect feedback from reality, and then tune parameters to improve the result. Machine learning is essentially the automation of that recipe. We take data from the real world, build a statistical model for it with an imperfect guess of how some variables relate to each other, and then calibrate the model to the data using optimization methods. The data contains “knowledge” that we either didn’t know or don’t know how to put into code.

Software 1.0 vs. Software 2.0
Andrej Karpathy, director of Tesla’s self-driving car program, coined the term “Software 2.0” to think about the relationship between “non-AI software” and “AI software” interacting together. Software 1.0 refers to code that a human writes and runs as the human intends - this is often the “imperfect guess” that forms our starting assumptions of what the software should do. In contrast, Software 2.0 refers to code where the human specifies it indirectly - via an objective that merely specifies what they want the program to do at a very high level - what the inputs and outputs should look like. The “compilation” process for Software 2.0 is the act of fitting the data to a ML model via a rather expensive “training process”. 
You can combine software 1.0 with software 2.0 to build a model that captures what you know (the fixed, software 1.0 part) with software 2.0 (things that the search & optimization decides is best). A practical ML system is a good choice of things that are fixed and things that are learned so that you can solve the problem with the data and computational resources you have.
To use the car calibration analogy, you might decide up front that the car tires should have 25 PSI of air pressure (software 1.0), but you’ll tune the suspension using data  (software 2.0). But as you gather a lot more data over time, you may want to discard the assumption of a fixed tire pressure, and instead use data to tune it also. At the end of the day all ML algorithms are unified by the same fundamental principles: ML models are formed from combining biases and data. Sometimes the biases are strong, other times they are weak. To make a model generalize better, you need to add more biases or add more unbiased data. 
Fewer assumptions => more data
More assumptions => less data
I like thinking about ML systems as Software 1.0 + Software 2.0, because it abstracts away the flexible nature of how we supply inductive biases and scaffolding around ML models, and also abstracts away the details of the function approximator and learning algorithm. There are many choices of ML models, each with dense, inaccessible names and: support-vector-machines, kernel methods, logistic regression, neural networks, random forests, nearest-neighbors. The difference between this academic jargon is not super important for the purposes of reading this book. With enough mathematical analysis, it is possible to blur the boundaries between these algorithms; for example, a SVM can be understood as a special case of a neural network, or vice versa.  

## The Deep Learning Revolution

Deep Learning, the new technological buzzword of the decade, is the revival of neural networks as the predominant ML technique used to solve large-scale ML problems.

In the last few decades, Deep Learning has pushed the frontier of AI technology, delivering us stupendous achievements like becoming the world champion in Go, driving cars autonomously, achieving state-of-the-art medical diagnosis, realistic musical melodies and images generated out of thin air as if they were made by humans.

The “deep” refers to the fact that modern neural networks are very, very large. In 2012, two students of Geoff Hinton’s lab, Alex Krizhevsky and Ilya Sutskever, pulled off an ambitious achievement: they implemented a neural network of unprecedented size on the GPU, made simple adjustments to get it to train faster, and trained it on the ImageNet dataset, a diverse and challenging set of object classification problems designed to evaluate human-level object recognition abilities. This beat all the other entries to the ImageNet Large Scale Visual Recognition Challenge 2012 benchmark by a wide margin, over 10.8% lower error rates than the runner up. 

Krizhevsky’s doctoral thesis, dubbed “The AlexNet paper”, is widely regarded as the inflection point for the unprecedented level of technological progress and attention AI and ML receives today. AlexNet was not solely responsible for kick-starting the Deep Learning revolution; throughout the 1990s and 2000s there was a growing community of researchers quietly pushing breakthroughs on neural net controllers for steering cars, predicting stock prices, assembling ever-larger datasets and benchmarks like ImageNet. Cireșan, a student in Jurgen Schmidhuber’s Lab, demonstrated a similar accomplishment a year before the AlexNet paper was published: he implemented a ConvNet on a GPU and won several computer vision competitions. However, Krizevhsky’s paper was the first to win on ILSVRC, a substantially harder challenge that the vision community actually cared about. The core idea may not have belonged solely to AlexNet, but in AI, ideas are relatively cheap and execution is everything. History only tends to remember a few victors.

AlexNet’s achievement left the ML community no choice but to contend with the fact that neural networks were not actually a joke anymore. In the years since 2012, ML researchers realized that the same design for image classification could be repurposed for object detection (find all the objects in the image and tell us what they are), segmentation (draw outlines of objects in the image). 

That idea - Big Data, Big Compute, Simple Algorithms - went on to essentially dominate the fields of computer vision, translation, and speech in the ensuing years. increased investment and attention has only made that gap wider - nearly every computer vision paper utilizes some kind of neural network.

In retrospect, it is not surprising at all that making as few assumptions as possible and throwing a lot of data at the problem and automating the search procedure over good models is what will work best. Richard Sutton, one of the pioneers of computer reinforcement learning, penned a 2019 essay called The Bitter Lesson, in which he observed how the last 70 years of AI research has been general algorithms (search, dynamic programming, optimization) riding on the back of exponentially cheaper computation (per dollar) and an increasing abundance of data, and not much else.

This was somewhat of a controversial essay, as many scientists felt that it was a reductive take to have their intellectual pursuits and “novel algorithms” reduced to “riding the wave of faster computer chips and more data”. As Rich points out, it is indeed a bitter pill to swallow. No one - whether a factory worker or a radiologist or an AI scientist - relishes the feeling of being replaced by “dumb” computer automation!

<TODO, need a transition here>

I’d like to highlight some of the domains where machine learning breakthroughs have been particularly impactful and captured the imagination of the public. 

Transmuting Between Compute and Data -> Superhuman Gameplay

Chess was more or less solved by an AI in 1997, when a simple search procedure running on a state-of-the-art IBM supercomputer called Deep Blue defeated the reigning chess champion Garry Kasparov. Kasparov, a very smart man, decided to retire professionally from chess and pivot his career to writing about AI technology and engage in political activism - areas where the human mind and spirit continues to do much better than machines. 

However, experts thought that the same brute-force search approaches that Deep Blue used would not scale to games like Go, where the state space was astronomically larger. We were still even further from games like Texas Hold-Em poker and Starcraft, where the state space is even larger because aspects of it are hidden from the player’s view.

As it turns out, deep learning and reinforcement learning provided the secret to solving Go. Let’s consider two quantities, X being “the current state of the Go board” and Y being “the fraction of game outcomes in which you win, assuming both players playing optimally from here on out”. One way to compute Y from X is to simulate every possible game outcome starting from X, whereby on each step both players are playing optimally. This is astronomically expensive, and largely the reason why Go was thought to be impossible to solve with brute-force search. However, with a database of millions of games, it is possible to use a deep neural network to absorb all that knowledge and figure out a statistical relationship between X and Y, p(Y|X). For each game, we know the final outcome, so we can bump up or bump down our estimate of Y given X correspondingly. 

In the process of learning the statistical relationship p(Y|X) a deep neural network actually approximates the computation of how to recover Y from X. This is profound - it is almost as if we have a computer that can “accurately guess” the predictions of an even bigger computer. This works because we have used a lot of data (and a small amount of compute needed to train the network) to perform the role of a very expensive computation. 

Rather than brute-force search all the way to the end of the game on every decision step, AlphaGo could just ask a Deep Neural Network to predict the outcome of the search, thus reducing the number of tree search steps dramatically. AlphaGo was so fast that during its match with Kie Jie, it could have actually been run on a smartphone hardware but DeepMind researchers were wary of embarrassing the Chinese delegation.

The DeepMind researchers also showed that it is not only possible to replace search with data (amortizing the full search tree), but it is also possible to perform the transmutation in reverse - we can turn computational search into more data. Go is a fairly simple game to simulate - merely a 19x19 board where players take turns putting pieces on the board. Another key breakthrough developed by DeepMind researchers was to play the agents against each other, so that their experience could be used to further refine the predictions p(Y|X).  

Therefore, by having AI agents play against itself over and over again (a scheme called “self-play”), DeepMind researchers found a way to turn “compute” into data. 

Since then, DeepMind researchers have found ways to even further reduce biases of AlphaGo, by replacing the hard-coded Software 1.0 parts with more compute and data (transmuted from compute). 

The Silicon-Valley billionaire-backed startup OpenAI leveraged that idea - transmuting compute into data - to tackle another challenging game, Dota. <TODO: describe the result of the game>.  - partially observable fog of war, requirign agents to exhibit memory, cooperate between agents.

UT Austin, led by work by Noam Brown,  has <describe Pluribus? , Hanabi - games that were previously thought to require human intuition and psychology>.

Once again: search is turning compute into data. A neural network can turn data into compute.

Perhaps nothing more has captured society’s imagination more than AI defeating humans in games of great intellectual skill and creatiivty. One of the most profoudn realizations in the development of powerful game playing AIs is that we gain a better understanding of our own intelligence. 
It was long thought that games like Go and Poker relied on human learnings from war, culture, and psycholgical deception. It’s clear now that that knowledge, while it may serve a human well in mastering the game, is not actually a strict requirement and may be nothing more than a human’s desire to anthopomorphize decision-making.

AI is a mirror that continues to teach us many things about our own intelligence.
Waymo Self-Driving Car Approach - waymo has a “cone guy” - person who is responsible for cone detection
George Hotz has a quote “if you were starting a chess engine company, would you hire a bishop guy?”


Scaling Laws for Large Language Models

OpenAI’s research agenda more or less aligns with the Bitter Lesson. They bet heavily on scaling up deep learning methods, and published a very interesting paper in 2020 where they showed that 

<scaling laws plot>

GPT-3, T5, GShard, Switch-C

ML is also elegant solution: blue is old google translate codebase (500k LOC). 
The GNMT system is only ~500 lines of TensorFlow code, trained on massive amounts of data.
Commercial breakthroughs in automatic translation have unlocked trillions of dollars in global trade that would otherwise not have happened.
The economic benefits of machine translation - increased international trade by 10%, allowing people to collaborate across country borders. https://twitter.com/emollick/status/1310249212593012737?s=20
Advances in Reinforcement Learning research have shown us that we can get an agent to produce physical behaviors like walking or grasping or game playing. If an agent can reproduce physical behaviors, why shouldn't they be able to produce mental behaviors, like “thinking”, “remembering”, and “learning”? 
If we have data that relates sensory observations with the act of performing such mental activities, it should be possible to learn the mental functions themselves. 
The process of “optimizing a system to learn well” is also described as the “meta-learning” problem. It turns out that this bi-level problem is surprisingly general, and can often
We can get simulated agents to learn to fix their gaits when one of their legs are broken, or get a classifier to generalize from just a handful of examples. 
Keep in mind though, that even though a meta-learned learner can learn faster or better than a simpler learning algorithm, we are still obeying the No Free Lunch theorem. We removed biases about the learner, which requires us to supply the training process with more compute and/or data Indeed, most metea-learners require an order of magnitude more  compute and data to train, so that at test time we observe faster generalization. 

Instead of specifying a program, you specify a search space of programs (e.g. parameters of a flexible function approximator) and let an optimizer find the best solution. And instead of specifying that search space, you specify a search space of architectures and also search across that with an optimizer. And so on. The skill of a modern deep learning researcher is 
defining the preconceived constraints as flexibly as possible, having an intuition of what is important to search over and what can stay fixed, while respecting the available computation budget.



Remember, the underlying principle of ML is to let the data speak. When more data is available, our model obtains a better grasp on reality. 

The Frontier - Self-Driving Cars

One of the technologies I’m most excited about from a research standpoint are self-driving cars, such as the ones built by Tesla. 

Tesla is unique in that they are building neural networks of unprecedented complexity and deploying them in life-threatening situations and requiring a high degree of reliability not typically seen in lab environments.







Let’s consider the various places in which human assumptions go into a learned function. It can incorporate assumptions in its predictions (for instance, restricting it to be linear). It can incorporate assumptions in the family of models to consider (for instance, all N-degree polynomials for N < 100). There are often assumptions in how we select the best the family of models, and how we fit the specifically chosen model to data. One can keep going up the “meta-optimization” hierarchy, all the way up to the informal optimization process known as “research scientist” descent - a human researcher intelligently designs something based on their guess as to what will work. The spirit of “the bitter lesson” is to relegate as much of the search process to the computer.  

It’s humbling, even a bit humiliating, to many AI researchers and philosophers who pride themselves on having some computational insight into what intelligence means to have their talent be rendered somewhat inconsequential compared to the progress of the semiconductor and personal computing industry.

It really makes you wonder whether we would all be better off abandoning our AI research projects and simply focusing on increasing the supply of computers and collecting more data. 

A straw man argument I often hear in response to “The Bitter Lesson” is that inductive biases like AlexNet and ReLU activations and Convolutions needed to be developed in order for the brute-force learning breakthroughs we see today. 

I think these critiques are missing the point. 
AlexNet, ReLU, Convoltuions were considered the most “general methods” we had from 2012-2016 while respecting the limits of our computational resources. Once compute became more available, these changes were replalced by “architecture search” procedures that design architectures, chooose activation functions, and even design convoltuions from scratch.  The Bitter Lesson triumphs once again.

As a rule of thumb, any inductive bias should be put in place only because one lacks data, or because one lacks enough compute to implement a general method.

Recall that Machine Learning relies on data and assumptions, and when one has lots of data, it’s always better to reduce the assumptions and let the compute handle everything (even deciding what ideas to try next).


The fact that we can get so much improvement out of something so "mundane" should be cause for celebration, rather than disappointment. It means that we have found general methods that scale well and a straightforward recipe for brute-forcing our way through solutions we haven't solved before.


Triumph of empiricsm - all the tricks and “better algorithms” we discovered were directly aided by more compute to help us search for the solution. Humans provide guidance and inspiration but brute-force search and the scientific method do the rest. As computers get more powerful, humans can specify more abstract goals and the computer can take on increasingly large scope in what they search for.

Meta-Programming


General technologies:
Faster computers
Techniques for traversing / exploring large search spaces
Well-designed search spaces



Capabilities of Self-Driving Cars
Tesla is an automaker that builds excellent electric cars with some degree of self-driving capability, branded as Tesla AutoPilot. Legally speaking, AutoPilot is not actually a self-driving autop-pilot, but is rather an automated lane-assisting system which requires the human driver to keep their hands on the wheel. Practically speaking, it can do a lot more - you can summon the car to your location from a parking lot, it will navigate residential streets and make left turns on intersections. Many Tesla users are distracted, browsing their smartphones or looking away from the road when they enable this feature. Tesla’s bombastic CEO Elon Musk, who often touts AutoPilot as something that will have full self-driving capabilities within a couple years, has been routinely criticized by car safety regulators as willfully misleading the public as to the actual capabilities of the system. 

This is in stark contrast to the technical strategy taken by Waymo, which is tackling the full self-driving capability without requiring any human driver, and relies heavily on LIDAR-based mapping capabilities and route planning data from Google Maps.

Even though companies have philosophical differnces on the product roadmap and some technical details like the importance of lidar, both teams solve a similar set of ML problems. We start with raw sensor data on the car - camera, radar, and so on - and use some combination of Software 1.0 and Software 2.0 to decide if there are pedestrians, stop signs, obstacles, potholes on the road, and plan around them. 

The remarkable thing here is the sheer level of performance that this task demands. with so many millions of miles driven every day with AutoPilot. Unlike most academic robotics research, it’s not sufficient to just get 98% accuracy, one must have 99.999% accuracy. It must generalize to literally any road condition in the world, recognize every possible animal that could accidentally cross the road, and then some. 

The AutoPilot system represents more or less the frontier of a robust deep learningsystem designed to generalize to the real world. Although the Tesla Autopilot still makes glaringly stupid errors from time to time - leading people to rightfully question the readiness of the technology - 

Hydranet and the Data Engine
Talk about Tesla’s Data Engine and the Software 2.0 world



By turning this crank over and over again, our function approximators get better and better.



We now have general recipes for improving the performance of very complicated function approximators. Many AI applications deployed “in the wild” rely on a human-in-the-loop learning process: failures are surfaced, humans work with automated tools to mine for similar examples that the system fails on, then we re-annotate these examples with what we actually want and re-train the model. 

Although the fundamentals of ML have remained the same for decades, the technological backdrop has advanced considerably to take ML systems to new heights. First, access to computation has never been cheaper - the personal computer revolution of the 1990s and development of GPUs for gaming have made it possible for average person to build a high-end supercomputer in their own home. GPGPU programming (pioneered mostly by NVIDIA) was what enabled Alex Krizhevksy to write fast and efficient neural network implementations. Computer storage has also gotten cheaper, and with that the ability for anybody to store large amounts of data. 

Where Moore’s law has largely ended for CPU cores, Jensen’s Law has picked up - transistor count doubling on GPUs by parallelizing operations. Although parallel programming models are slightly tricker to implement, they are well-suited to the kinds of mathematical operations deep learning performs.

The smartphone revolution resulted in many more digital photos being taken and uploaded to the internet. A lifetime of video data is uploaded to Google’s YouTube video platform everyday. Finally, the research community has gotten larger. Ideas and experiments that were once guarded as military or trade secrets are now all developed nearly completely in the open, with powerful software and datasets given away freely. A novice programmer with just a few weeks of training can write performant machine learning code that runs on an entire datacenter, with all the mathematical and systems-level complexity that entails.


In the next chapter, we will leave the green pastures of applied AI and ML breakthroughs of the last decade and reckon with the challenges that face us today in pushing to true AGI.



Summary
Neural networks are function approximators whose success, like any ML method, are dependent on a tradeoff between assumptions and data.
The unifying theme of the deep learning revolution has been to replace as many human assumptions about the functions we wish to learn with computational search. 






# Why Neural Networks?

And the LORD said, Behold, the people are one, and they have all one language; and this they begin to do: and now nothing will be restrained from them, which they have imagined to do.
Genesis 11:6

As mentioned in Chapter 2, neural networks are just one of many available ML algorithms for function approximation. If the technological backdrop of computers and big data are mostly responsible for the explosion of ML technology, why have neural networks - a specific kind of ML algorithm - become so ubiquitous? Shouldn’t the benefits of big data and big compute benefit all ML algorithms? It’s worth spending some time discussing what makes neural networks so great beyond the hype, and why I think their underlying principles will be timeless in the roadmap to build AGI. I see three primary reasons:

Modern neural networks are among the most general of function approximators, making very few assumptions about the prediction task being modeled.
Neural network training fully exploits the principle of dynamic programming, with linear computation cost as a function of model depth, input size, or dataset size. 
Neural networks require little formal understanding of statistics or optimization before one can use them effectively, allowing researchers across different communities to speak the same language.

First, neural networks are general “function approximators”. At its most basic level, a neural network is a chain of linear operations interspersed with nonlinear operations, applied sequentially to some inputs. For example, the input might be a vector that is passed through a matrix-vector multiplication, followed by the sin function, followed by a linear whitening transformation, followed by a simple non-linear function like max(x, 0), and so on. The linear operations involve learnable parameters, such as the entries of the matrix for a matrix-multiply operation. It’s hard to imagine an “alternative” approach to function approximation that, at its core, does not utilize some composition of linear and nonlinear functions. Every machine learning model approximates some class of functions, and neural networks offer a particularly flexible family of models.

The neural networks of today are not your grandparents’ neural networks of the 20th century. The name “neural network” was originally used by McCulloh and Pitts (1943) to describe simple computational models of actual cortical neurons, and these models only had simple matrix multiplication, addition, and clunky non-linearities like TanH and Sigmoid functions. We’ve since then come to understand that actual biological neurons are substantially more complex than these early models, but the name has more or less stuck. 

Modern neural networks scarcely resemble anything like the early neural networks of the 20th century - they involve all manner of computational operations and architectural innovations. The only thing they have in common is that they tend to be “over-parameterized” and are optimized end-to-end via some kind of optimization procedure.  

Dynamic Programming by Design
The second reason why neural networks are here to stay is that they are the only ML learning algorithms that fully exploit dynamic programming by design. Dynamic programming is a concept in computer science whereby solving a computationally expensive problem can be made cheaper by reusing the result of an intermediate problem that you needed to solve anyway.
Here is an example of “dynamic programming” via a cooking analogy: if you stuff and cook a large Turkey for dinner, you’ll likely have some leftover turkey meat and stuffing that you can re-use for turkey sandwiches the next day. You get another meal essentially prepared with very little additional cost, because you are reusing all the work that went into the first meal. This is the essence of dynamic programming - some of the work from each step carries over to the next step.

People typically regard training neural networks as a slow process, but dynamic programming actually shows up in all sorts of places when it comes to training neural networks. 

Across parameters during a training step. Consider a stack of “layers'' in a neural network. The cost to update the weights of the neural network scales linearly with the depth of the network, but adding a layer’s worth of parameters exponentially increases the complexity of the function we can represent <TODO, need reference>

Across batches during a training run. When you train on one batch, it improves feature representations for predicting the next batch, and optimizing on that batch helps improve the performance on the next batch, and so on. There is no need to simultaneously optimize all batches of data at once, because we often learn redundant things across minibatches. This effect becomes even more pronounced in deep reinforcement learning. 

Across tasks during fine-tuning.  once a neural network is capable of doing one task, it is a relatively cheap set of computations to rapidly adapt the network for a similar task. Since the neural network has already done most of the hard work in learning one related task (and all the low level features), it isn’t much additional work to learn a new task.

Across time in sequential problems: Similarly to how solving one task enables you to quickly solve the next task, dynamic programming benefits neural network training when optimizing sequential decision making. At each point in time, we must choose some actions, and incorporate our knowledge from the past. If one learns how to make a specific kind of decision for a prior timestep, then that knowledge helps us make similar decisions today - one does not need to optimize across all timesteps simultaneously (which would make the problem exponentially difficult!). This helps a lot in regimes like deep reinforcement learning.

Linear Scaling

Neural networks costs scale linearly with the dimensionality of the input. If you wanted to append additional inputs or context, a neural network readily accepts the additional source of information by simply adding more parameters in the first layer. We often don’t need to scale the rest of the model, because it often happens that the inputs can be “compressed” to a lower dimensional representation. This makes neural networks convenient to handle raw data, whereas other ML algorithms typically require a “feature engineering” step whereby the most important numbers are pulled out from the data. Semantically regarding a difference between “feature” and “prediction” is a bit silly - there is no hard line separating “feature” from “task prediction” in practice. In practice, neural networks free the user from having to think about what features might be important to predict a task, and make it easy to handle multi-modal problems like combining text with data or passing various onboard sensors on a robot to a controller. Much larger inputs allows tackling of multi-sensory fusion - think robots that have a single controller that integrates vision, hearing, touch sensing at the same time on a vast corpus of data. Neural nets are pretty much the only ML model that can train on the raw sensor data of a robotic system with dozens of high-dimensional sensor, and at the scale of data a robot acquires.

Neural network training is also very scalable when it comes to dataset size. Neural networks are trained by modifying the millions of parameters of the neural network to better suit an optimization objective. Instead of fitting all of the parameters at once to the entire dataset, a neural network is trained by throwing small “mini-batches” of data at the network and only optimizing the parameters for the batch. . 

Some models like Gaussian processes actually have a training cost that is cubic in the size of the dataset! This means that the biggest model one can hope to train is on the order of thousands of data points, and beyond that scale one needs some very specialized methods to handle. Modern methods have been developed to help GPs scale to large datasets, but many times these require more mathematical assumptions to be made and a sophisticated understanding of the underlying probability constructs. Neural networks have an elegant simplicity nearly bordering on naivette - simply “take some optimization steps and eventually your net will do the task when the loss is small - what even is probability?”


-----

A neural network becomes more capable as you present it with more data and parameter updates, and this process is often referred to as “learning”. Again - computer scientists have utilized a confusing biologically-inspired name to describe something quite different from real humans and animals do. 

This process by which an ML model acquires knowledge from the training examples is colloquially called “learning”. Obviously this biologically-inspired terminology misses out on a lot of nuance of what actual biological learning is like 

A Unified Language

The greatest boon of neural networks is that it is a remarkably simple language to speak. I remember training my first neural network without a deep understanding of the math behind it, and yet I was able to intuitively understand that the model was “learning to predict from data”. 

In the biblical story of Genesis, humankind originally all spoke the same language, and through unprecedented collaboration, they nearly succeeded in building a tower that reached the heavens. God got nervous about this and scattered their collaboration by having them speak different languages - this is why academics rarely can come together to build 

We are in a “Tower of Babel” moment of AI research, where hundreds of thousands of scientists, engineers, and technologists are collectively using the same technique to tackle every data problem under the sun.


Neural networks allow the user to “abstract away” the problem of designing a good ML algorithm to suit the task, and instead provide something that you know should work with enough data and compute. Data and compute are not cheap, but there is little to no uncertainty of the cost of acquiring it, and often it’s more predictable to acquire more compute and data than the uncertain outcome of paying an ML researcher $300k a year to tune the regularization losses.

You can approach neural networks from the mindset of an optimization person, or a probabilistic ML person, or even the loose computationally cognitive motivations help to onboard many a neuroscientist trying to get into modeling data. A neural network is intuitively relatable and deceptively simple to people coming from many different fields, whereas one may not be as keen to try out something like a Restricted Boltzmann Machine.

You don’t need to learn about maximum likelihood estimation, the difference between parametric and nonparametric models.

<differentiable neural architecture search making bi-level optimization a linear-time problem instead of a quadratic cost>

Smart and technically-minded people often underestimate the importance of easy-to-use tools (and the people who prefer such tools), instead preferring to create “mathematically elegant” or “logically consistent” systems.  This theme occurs over and over again, even at places like Google Research where people willfully resist the Bitter Lesson and attempt to design ever-complicated priors.

Deep Learning is accessible. You don’t need a strong mathematical foundation anymore to train neural networks. Just concatenate some layers, gather some data, and your robot supports a new end-effector! 
Deep RL Research is scalable - a RNN technique pioneered in NLP space could be immediately applied to improving RNNs used in a robotics context. Deep Learning research feels much more collaborative, because all these people working on diverse problems now speak the same language. One can now cast SVMs, linear models, optimization, probabilistic inference, and even cognitive neuroscience all into the common language of neural nets. A DL non-believer was complaining to me that we were heading towards a research monoculture, similar to how every roboticist was working on SLAM in the early 2000's. If this "monoculture" enables new scales of collaboration and bridging of learning theory across disciplines, then we should be all for it!
The problems one must solve to bring lab robotics to the real world are so challenging that data-driven approaches are the only way to make them tractable. Analytical approaches require too many compromises on robot design, too much hand-tuning for the specific system.

Some of the symbolic AI folks (“the neats”) lament the fact that this switch has caused people to abandon other promising ML techniques and adopt a monoculture where we all think the same way. 

The astute reader might comment that such slow “knowledge absorption abilities” is not at all like what humans do for learning. Surely ML is missing something crucial? 

This point will be revisited several times throughout the book, but how we fit a function is a separate question from what the function does. When we think of “human/animal learning”, we are often thinking about learning as a behavior of an individual organism, but ignoring that that behavior was acquired through the slow process of evolution.

The biblical quotation is an apt description of the state of AI research today. The one language is neural networks.

But it also has many layers - dive deeper into neural network research and you quickly run into some very puzzling and open problems in numerical optimization, statistics, and machine learning.

They are not always the most suitable tool (linear or logistic regression on the right features can outperform neural networks in the right regime) but they will do decently well even with modest amounts of data.

This has brought us into a “tower of Babel moment” in AI: different disciplines and applications can share algorithms because we all use the same general building blocks for learning. 


If I were to summarize the developments in machine learning in the last decade, it would be that we have made very powerful systems using end-to-end optimization with increasingly few assumptions about model design. We give up our assumptions of which computations need to be performed, and let brute-force automated search find the best solution for us. In the next chapter we will address the limitations of this approach.