---
chapter-number: 0
title: Introduction
link-citations: true
reference-section-title: References
---

The idea of creating artificial beings from non-living matter has long captured the imagination of artists, philosophers, and engineers alike. Golems in Jewish mythology were clay beings that were humanlike in form and function, but not quite human enough to speak or act of their own free will. In the Greek tragedy of *Pygmalion*, a sculptor's love for his statue is so profound that it enchants the statue to life. In *2001: A Space Odyssey*, a mentally disturbed spaceship computer named HAL-9000 goes rogue and rebels against its mission, yet it shows a disturbingly human-like fear of death when it is about to be shut down. In HER, a complex and alluring operating system emotionally outgrows her human companion. 

Why does the story of creating artificial people, and all the possibilities and risks that entails, reoccur so frequently across the ages? Perhaps it has to do with Creation Mythology, and Humanity's desire to answer "how did we come to be"? Can this Biblically awesome act be performed again, in a computational petri dish? A character from the 2014 sci-film *Ex Machina* remarks: “If you've created a conscious machine, it's not the history of Man. That's the history of gods.” 

What a conceited thing to say! And yet, conceit and self-reflection are themselves quintessential to the human experience. Stories of robot uprisings rhyme with mythologies of old, where humans rebel against their godly creators. Fictional robots are often portrayed all-to-human: replete with ego, compassion, and sometimes, the desire to subjugate all other sentient life forms.

We are endlessly obsessed with our past stories, our present nature, and our future legacy after death. People have long wondered whether humans have something special in their minds that can't be replicated by silicon-based computer architectures. A silicon computer that matches human intelligence could hold up a mirror to humanity itself; if a human-level artificial mind is built from relatively simple principles, it might reveal that our own intelligences are not that complicated after all. 

A machine mind might be freed from the mortal constraints of biological hardware. So long as its power source does not run out, it could conceivably witness the death of the Solar System, explore other galaxies, and carry on the memories of Humanity to the end of time. Like the Pyramids of Giza and religious texts that came before it, AI can be thought of as another form of cultural preservation.

The invention and continued refinement of computer technology in the 20th and 21st centuries has made these dreams tantalizingly plausible. A computer is a machine that "processes information". Information processing is a fairly abstract term, encompassing both specialized tasks like adding numbers on a calculator, and general-purpose tasks like executing a user-written program. The PC in your home, the calculator you use for math class, and the tiny chip in your home’s smoke alarm are all computers that perform information-processing functions, with some much more specialized than others.

The beauty of the mathematics of computation is that they are agnostic to how the computer is constructed. A computer can be made up of tiny silicon transistors too small for the eye to see, or bulky vacuum tubes, or invisible microwaves in quantum superpositions. Certain substrates have advantages in terms of efficiency, but so long as two computers have the same set of logical primitives, they could simulate each other given enough memory space and computation time. 

A computer can also be made of meat! A nervous system  -- brain, spine, and so on -- can be regarded as an information processing system that translates sensory information to the body’s behavior. Our distant ancestors evolved nervous systems to adapt to the world around us, so that they could survive and propagate genetic information to their offspring. The pursuit of survival leads to a wide variety of necessary information-processing sub-tasks: find nutrients in the wild, survive the elements, and avoid death.

Our meat-computers have taken on many more tasks in the ensuing eons: agriculture, warfare, and discovering physics. However, the basic adaptive self-regulation capabilities our nervous systems perform to keep us alive have remained conserved. As we will explore in this book, most intelligent behaviors are merely specialized “subroutines” that fulfill our prime directives, albeit in ways that are not always obvious.

Given that the nervous system is a rather specialized computer and we know how to build general-purpose computers in silicon, it should in principle be physically possible to replicate a human mind in a silicon computer. This is known as “artificial generalized intelligence” (AGI): a machine that is every bit as alive, intelligent and emotionally capable as people are. Of course, the tricky part is figuring how how to build it; from the very first conferences on Artificial Intelligence held at Dartmouth College in XXX, reality has continued to surprise us with how truly difficult it is to build things like general-purpose robots or automatic assistants like J.A.R.V.I.S from Iron Man. Reality is full of details, and the details themselves are crammed with even more detail.

<!--  “humor”, “creativity”, “innate curiosity”, “cultural awareness”. -->
In spite of these daunting precedents, my own life ambition is to create some AGIs of my own. and this book is a speculative roadmap on how we might actually replicate crucial aspects of human intelligence in software. This book is a 10-year plan of how we might create AGI, based on the principle of "artificial survival". Despite the promising technologies that machine learning has brought us in the last decade, the path to achieving anything resembling AGI will be long, challenging and uncertain. I consider this a "Version 0" design document for AGI.  If I am successful, I expect to write an updated version in a few years revising the direction of the project.

<!-- Simultaneously, 10 years is also a very, very short period of time! It is about the length of an undergrad education (4 years) followed by a PhD program (6 years), back to back. Even futurists like Ray Kurzweil -- famous for predicting that AGI is always just around the corner -- wouldn’t dare to paint such short timelines.  -->

The reason I’m proposing a 10-year plan is for selfish reasons: Parkinson's Law states that a project takes as long as its allocated time budget. Many AGI researchers hope to enjoy the fruits of AGI technology in their lifetime and play a part in creating it. Ambitious projects are often slowed down by unforeseen technical hurdles - bureaucracy, internal software refactors that don't add any features, and life events outside of work. If I sketch out a 10 year plan, and everything goes well, I expect things to take somewhere closer to 30 years, just in time for my retirement. If I were to come up with a 30-year plan, then it would take 90 years to finish, and that’s no fun at all! I say “10 years” not out of Kurzweilian optimism, but rather as a guideline for focus and making my working years count.

The contents of this book will be highly speculative, but are informed by my spending six years doing research at Google Brain, where I primarily worked on scaling up robotic deep learning for mobile manipulation robots. Those experiences taught me how to build large-scale learning systems, how to write just as much code as I needed to get the job done, and how to scale end-to-end neural nets in the real world. Even if I do not succeed, I hope this book will inspire the next generation of researchers to follow this line of work and pursue what interesting questions we may encounter along the way.

Building AGI would be an earth-shaking technological achievement, to say the least, and will likely shape the arc of history in weird ways that few are able to imagine today. But I am fairly certain that if done right, artificially intelligent machines could help bring modern comforts to every person in every country, offer us companionship in our old age, and assist every person in leading happy and productive lives. There is more to AGI than just scrubbing toilets and balancing corporate balance sheets - such entities would allow us to glimpse new truths about the mind and force humanity to understand its own place and mortality in a vast, lonely universe.

# Overview

This book is laid out in three parts: I) the current state of AI technology II) an engineering roadmap for building Artificial Intelligence from ethological principles, and III) the impacts of such AGI technology on human society.


## Part I: AI Today

In order to understand why an ethological perspective is so critical to building human-level intelligence, we need to take stock of the current state of AI research. The first 8 chapters of the book comprise “Part I”, which examine the wondrous progress of deep learning in the last decade, and the challenges they face when deployed in practice. This book is intended to develop an opinionated viewpoint on what matters, so I will hand-select a few topics I find interesting, dive into thoughts I have about them, and probably fail to cite a whole bunch of relevant research that came before. You can think of Part I not as a comprehensive survey of AI in an academic fashion, but rather a hand-picked selection of thoughts about our existing AI systems.

We begin Chapter 1 with my personal journey on how I became interested in Artificial Intelligence and my first job out of college, doing robotics at Google Brain. I began my journey in high school, writing "Strong AI Manifestos" outlining how we might go about creating AGI. In the ensuing years, I got better at math and programming, learned to make those ideas more concrete. At Google, I learned a great deal about how to bring some of those ideas into reality, along with the human element to research - how to navigate incentive structures, work in a team.

In chapter 2, I'll discuss the many exciting new applications of Machine Learning, from superhuman game playing to unlocking trillions of dollars of economic value via machine translation. There have been several enormous breakthroughs in the last decade that have made this all possible. Ever-increasing computing power and data have supercharged old machine learning methods and ushered in a new era of promising applications and investment. Techniques like neural networks are so ubiquitous now that they make up the lingua franca of machine learning in nearly every discipline. 

The heady optimism of chapter 2 may make it seem as if we are on the cusp of revolutionizing the world with AI technology, but there remains much work to be done, for Deep Learning is a double-edged sword. We have made models more powerful by discarding human biases in models and letting the ML algorithm figure it out from data, but in doing so we lose the ability to comprehend computations that do not fall in line with our mental models. These limitations already make it difficult to deploy our powerful AI systems “in the wild”.

Whereas chapter 3 focuses on limitations of Deep Learning for deploying narrow AI, chapter 4 discussions the current limitations of our technology for creating general AI. The AI demonstrations you see in the media may seem marvelous or even superhuman, but they are still "shallow" compared to the wondrous complexity and versatility and agency of an actual human being. Some of these challenges are purely technical. Much of the progress in narrow AI has only been possible when we define clear objectives and well-scoped testing scenarios. We lack these crutches in the AGI setting, so generalization needs to be pushed substantially. Other problems are sociological, stemming from academia and industry both failing to invest long-term into the development of AGI systems. I will discuss them both.

In chapter 5, I discuss how semantic precision in specifying what we want our AI systems to do remains one of the profound technical challenges of building AI systems. Our concepts of reality and how intelligence handles it are fuzzy and vaguely defined, but code must be precisely defined in order to work. Learning from data gives us some tools to deal indirectly with the ambiguity, but as we begin to consider how to weave AI systems together into a single unified fabric, we will keep running into the same challenging problem of defining objectives and meaning. 


<!--TODO: incorporate some of the stuff from language is generalization essay? -->


Fortunately, not all hope is lost. For all the ink spilled on how AGI always seems to be beyond reach, and all the philosophical hand-wringing about what intelligence should and should not be, one only needs to visit the nearest dog or baby or city pidgeon to see an existence proof of AGI hardware and software tied neatly together. All these creatures have one thing in common - they posess sufficient intelligence and bodily adaptations to survive and reproduce in their ecological niche. Within the "Neurobiological Software Stack", the demands of the environment, epigentics, parenting, culture, the richness of environment all conspire to affect behavior. This "Artificial Life" strategy will form the basis of how I aim to create Artificial General intelligence.

 <!-- 7:what is death -->
To implement some form of artificial life simulation that can support the complexity of the natural world, we need to implement some computer program that can decide whether something is alive or dead. This sounds simple - computer games already do this - but often these life/death rules are just simple heuristics. What is life, in the most general sense? In chapter 7, we’ll discuss how life goes beyond definitions of cells and genetic information. We must consider intelligent behavior not only of the mind, but also the body, the species, the genetic code shared between species, and the molecular arrangements that persist across the eons.

<!--  At every level of biological organization, cooperation and competition among physical information interact to produce rich complexity and diversity. -->

<!-- 
The idea that intelligence should be defined in relation to some ecological niche is hardly new. Artificial Life is an old sub-field of AI that dates nearly as far back as computing itself, with computer scientists in the 20th century building computational models of predator-prey relationships, swarming flocks of birds, and procedurally generated vegetation attempting to mimic life. A-Life possesses an elegant simplicity, whereby we start with a dumb creature and hope that a complex, hostile world leads to adaptive behavior and intelligence. The idea is simple, but not easy to execute on - scaling up this idea to the level of human intelligence will be fraught with tradeoffs between computational tractability and fidelity to nature as it is.
 -->


## PART II: Building Survival Intelligence

Part II of this book is a speculative outline for how we might create AGI based on the ideas of Part I. The roadmap is structured as a series of research and engineering projects that provide building blocks for AGI that not only survive and understand their own simulated world, but also understand our real one. 

The central hypothesis that this book proposes is that re-creating human-level intelligence - a simulacrum of common sense, creative expression, and consciousness comparable to what humans have -- are not possible (or very difficult) without building animal intelligence and the ecological demands that various forms of animal intelligence are suited for. This entails behaviors suited for (but not limited to) finding safety, eating, mating. We must first build a monkey brain before the human brain, the lizard brain before the monkey brain. If all the wonders of “human-level” intelligence are the tip of an iceberg, then primal intelligence required for evading death is the submerged bulk, largely hidden from view. 


<!-- 8: engineering principles learned from Google brain -->
Part I presented a framework of how to think about intelligence and survival in an ethological framework. "Just simulate evolution" sounds simple, but figuring out what to type into the programmer is full of tricky details. How can we optimize such a long-running system (natural evolution in complex worlds) with the computers of today? How do we de-risk the most uncertain questions with the least amount of engineering work possible?  In chapter 8, I will discuss the engineering lessons I learned from working on robotics research at Google Brain for nearly 6 years.

<!-- I believe that even new technologies like Deep Reinforcement Learning are not sufficient to get us to the finish line - we will also require fundamental paradigm shifts in how we create Artificial Life, such as implementing various aspects of the neurobiological software stack and combining it with internet-scale datasets.
 -->
The first milestone, described in chapter 9, is to create a physically-based rendition of 1v1 basketball called "Jungle Basketball". Like the actual game, agents in Jungle Basketball compete against one another to score a ball in the opposing player's goal. We will start off training the agents to play simple games in this environment, much like how children play games amongst themselves. We'll gradually add complexity and challenges so that they learn to outsmart opponents and use the environment to their advantage.

<!-- 10: social -->
In Chapter 10, we consider how to imbue Jungle Basketball agents with more social capabilities, drawing inspiration from the various socially-learned behaviors from the neurobiological software stack found in the animal kingdom. We explore the evolutionary role of loneliness and other social pains, the role of multi-generational communities in teaching agents to perform imitation learning, and how social intelligence may give rise to rudimentary forms of consciousness.

<!-- 11: human-in-the-loop learning / zookeeper -->
In Chapter 11, we discuss how to bring in humans into the learning loop so that we may train ASI with considerably more open-ended objectives, such as open-ended play and curiosity-seeking behavior. Crowd-sourcing human creativity in guiding the course of evolution of these agents, without being tied to a single game objective, will potentially lead to far longer-horizon and interesting behaviors that would be challenging to optimize for directly with reinforcement learning.

<!-- 12: play and domestication -->
Chapter 12 is a detour into creating a rich ecosystem of "animal-level" intelligence that complements the evolution of human-level intelligence. We require this step for ethological reasons: intelligent behavior only emerges when the environment is sufficiently rich and challenging to require it. Human intelligence co-evolved with wooly mammoths (which they hunted) and saber-toothed tigers (which they were hunted by), so we should expect the existence of non-human intelligence to have an important complexifying effect on the environment. We will cover how to create wolves, but also see if our AI agents can learn to domesicate them into software equivalents of golden retrievers. 

<!-- In Chapter 12, we attempt to move beyond animal-level ASI and towards human-level intelligence. The ability to flexibly conceptualize that which cannot be immediately sensed is a necessary prerequisite for tool use. When these concepts can then become transmitted to others, this becomes a substrate for shared thought and language.
 -->
<!-- 13: language and thought -->
Chapter 13 is about language and thought. Once agents are capable of discussing shared concepts, this enables the conceptualization of worlds beyond what they are presently experiencing. These worlds can be historical or hypothetical, regrets or fantasies, which can be used to employed to gain upper hand in playing Jungle Basketball.

<!--  To encourage the formation of cultural memory and the persistence of information across generations, we must simulate seasonal phenomena like pestilence, famine, war, bounty, the rise and fall of societies must act as selective pressure to encourage cultural development. We want to encourage systems to develop a deep-seated curiosity for why things are the way they are.
 -->
<!-- 14: belief and religion-->
<!-- TODO: summary of chapter 14. Should we have a milestone for  -->

<!-- 15: escaping the box-->
Chapter 15 - the true test of a useful AI is to understand our Earth universe, not their simulated one. Once agents are imbued with an ability to discuss hypothetical worlds, we will converse with them about the existence of a real one - ours. 

<!-- 16: art -->
Our base survival routines, coupled with our ability to conceptualize the vast world around us, have coincidentally imbued us with a fondness for symmetry, awe in things greater than ourselves. I will discuss in Chapter 15 how to channel that into the creation of beauty and art. More precisely, we will have to go beyond just creating mass-produced art a la neural network, and create agents with rich, inspired lives - Van Gohs and Monets that go on to create art that reflects rich lives, not a pictures in isolation.

<!-- In Chapter 16, we consider how to get these AIs to improve the ASI system itself. This is akin to humans discovering genetic therapy, developing new medicines, building medical understanding of themselves in order to cure themselves of diseases and live smarter, healthier, more productive lives. What if we could get ASI to assist us with the development of the system?
 -->
## Part III: AGI and Humanity

While Part II focuses on the technical roadmap for creating ASI, Part III focuses on the implications of ASI for its human creators in various aspects of human life. We will explore both the opportunities and ways in which the human race can be taken to great heights, as well as the ethical and social challenges that we might face. 

<!-- Dystopian stories around technology and AI abound in science fiction and modern entertainment. 

Philosophers and science fiction authors have written much about impending solarpunk utopias and cyberpunk dystopias, but reality tends to be stranger than fiction. As we start to venture towards actual technological possibility, the devils (and angels) of AI are found in the details. The next few chapters will entertain a few of these possibilities.
 -->
<!-- re-thinking work -->
When it comes to discussing risks of AI technology, the primary concern has always been related to people losing their jobs to automation. Any progress in technology has always been accompanied by the existential dread of humans made obsolete. This becomes especially salient as the technology aims to imitate the entirety of human intelligence, rather than being specialized for a specific task. People wonder: what tasks might people still outperform machines at? What will jobs and careers look like? What communities might be disproportionally impacted? Chapter 17 will examine modern corporations for legal and socioeconomic clues as to how we might co-exist with AGI.

<!-- we already have a decent historical and present-day models for how to think about co-existing with ASI - our relationship to private corporations and globalized economies. 
 -->
<!-- re-thinking human-computer interfaces -->
Chapter 18 discusses how to integrate AI technology 

how the various aspects of computing - starting with AI tooling, and eventually making its way to our everyday devices, will be transformed by the growth of AI technology.

<!-- Chapter 18 discusses how human-computer interfaces can be radically re-designed in a post-AGI world. For example, humans no longer will need to visit websites to book flights - they can just talk to an AI system much like a personalized travel concierge. This can be extended to most information processing tasks, freeing humans from keyboards and mice and screens (except when they want to ) -->

<!-- 
 discuss the potential of AGI to serve as a human-computer interface that frees people from having to ever look at screens or websites again, with the exception of viewing TV shows. The human simply dictates their desires or requests for information, and the agent automatically interacts with the web to complete travel bookings and organize calendars. This sounds like an utopian at first, but could also be a major disruptive force to our job workflows and "digital native" ways of life.
 -->

<!-- Focusing on the positives speculation first, we consider how ASI technology might benefit humanity in chapter 17. As the ASI lifeforms grow in complexity approaching mammalian and human-level intelligence, we can use them to study a wide variety of behavioral, sociological and medical questions that are difficult or unethical to probe in live animal models. What are the sociological benefits and drawbacks of raising children in a commune environment, such as a Kibbutz? How can we craft policy so that genetic engineering for humans does not lead us down the dark path of eugenics? If we rewound time, how might a war have gone differently under a different administration? Even if I am only able to succeed at 20% of the goals I set out in this book, I believe the spinoff technologies built in service of ASI will be valuable contributions to science and engineering in their own right.
 -->
<!-- 19: rethinking facts --> 
Chapter 19 discuses the problem of "facts" in an Internet-connected age. If we are to trust AGI systems with organizing information for us, we want them to be reliable stewards of factual information. But how do we get a piece of software to "know" facts? Who is held responsible for the factual accuracy emitted by an AI? 

On the other hand, the existence of a rich simulation harboring intelligent life can serve as a way by which we can simulate complex policy decision-making like taxation and economic policy.

<!-- 20: rethinking war -->
Chapter 20 speculates how AGI technology might be leveraged for warfare. It's a topic that many AI researchers refuse to contribute to on ethical grounds, but I think it is worth pondering.  

<!-- 21: rethinking companionship --> 
Science fiction movies often portray robots as capable of falling in love with humans.



This book is, to an extent, a "10 year plan" for my own career, and I hope that this inspires many aspiring AI researchers to contemplate this path for themselves. 

This “napkin sketch” of ASI should be accessible to any general audience interested in AI, neuroscience, biology, physics, and philosophy. I hope that the book serves to inspire newcomers and educate the broader public. Education and scientific literacy are the best ways to deal with fear and uncertainty. More technical parts of this book should be of interest to my colleagues in the research community, where I go in depth into technical details and suggest a long slew of exciting research projects.
