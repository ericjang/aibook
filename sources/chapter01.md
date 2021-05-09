---
chapter-number: 1
title: What is AI?
link-citations: true
reference-section-title: References
---

Artificial Intelligence, or A.I. for short, means so many different things to different audiences, that nearly every book on AI begins with the author's personal definition of it. Let me begin with my own. 

Artificial Intelligence relates to *scientific fields* that study how intelligence works, combined with engineering disciplines *to replicate those intelligent capabilities*. It's an aspirational name for the field - Much like how cancer researchers have not yet cured cancer yet, AI researchers are well aware of the fact that we are nowhere close to building a machine with human-level intelligence. In fact, we understand the human-level intelligence even less than oncologists understand cancer.

Most laypeople probably understand that “AI” is vaguely about “computers doing smart stuff”. What constitutes “smart stuff” is highly dependent on who you talk to. I consider software that recommends you a TV show you're likely to enjoy is pretty smart. I think a word processor that knows when you are using proper nouns versus making a spelling mistake is also pretty smart. Of course, what impresses people is inherently a moving goalpost. To quote a tongue-in-cheek definition by Larry Tesler: “Artificial intelligence is whatever hasn't been done yet.”

Some experts think that the term "AI" should be abandoned altogether because its broad scope confuses and scares the public, and would prefer to refer to technology with more technically precise terms like "recommender systems", "Naive Bayes", and "linear regression". I don't share this view - revealing the methodology of a particular system does not reveal the impressiveness of the task. For instance, a neural network can be used to perform a simple forecast of housing prices based on square footage. A larger neural network can be used to best the human champion at Go. We might be able to do either of these without neural networks. If an external observer can't tell, then does it make sense to describe the system as what's happening under the hood? I'd argue that the term "Artificial Intelligence" is sufficient.


# Software Today
<!-- 
“Intelligence” is a word casually used in everyday conversation to describe the behavior of people and animals, and yet its meaning is rather slippery; we don’t know how to define it precisely enough that we can type it up into a computer program. This chapter serves as a gentle introduction to what “AI” is, and clear up the most common misconceptions around the technology.


, especially tasks thought to require animal or human-level intelligence.  For AI researchers and computer scientists, “smart” is something of a moving goalpost. 

“Intelligence” is a word casually used in everyday conversation to describe the behavior of people and animals, and yet its meaning is rather slippery; we don’t know how to define it precisely enough that we can type it up into a computer program.

 -->
Many investors and business leaders buy into sensationalist narratives that AI is a quasi-magical software that can automate nearly anything. This is not because they are intentionally peddling snake oil, but because they simply lack the technical expertise to decide what kinds of software operations are “simple” and which ones are “advanced”.

Software systems today can play Go better than humans, diagnose breast cancer better than most human radiologists, transcribe our voice clips to text, manage air traffic congestion, and handle the back-office paperwork for employee vacation hours. What is AI, and what isn’t? 

I’d like to relay a personal story that highlights these risks. A friend of mine has parents who run a successful online SAT prep school in the USA. They incorporated web technology into their business in the early 2000s, and investing in this up-and-coming technology paid off well for them. Owing to this success, they were keen on staying up to date with newer technological fads like “AI” and “Blockchain”. I met them for tea one afternoon in San Francisco, where they regaled me with their grand vision of using AI to generate test questions and adapt to changing Collegeboard formats and giving each student a customized learning curriculum.  

Right away I could tell that they were savvy with the business importance of test material, but lacked the technical understanding about AI technology to achieve their stated goals. I gently told them that while there were some promising breakthroughs in the Natural Language Understanding, this was an unsolved problem of unprecedented difficulty that no present computer program could do. 

I gave them a few examples of technical hurdles that only someone deep in the weeds of implementation would be aware of: 

- Current AI technology can be trained to generate plausible-sounding questions on their own, or plausible-sounding answer choices on their own. But no technology exists to line up “plausible questions” with “plausible answers” and “plausible false answers”. 
- When “re-writing” a question, do the transformations incorporate additional common-sense knowledge of the world? What does common sense even mean in the standardized testing context? 

A simple task that any native English speaker could do - migrating SAT questions to comply with a new set of standards - abounds with hidden complexity when we try to replicate it in software and really write down all the steps a human would need to do to handle the task. I told my friend’s parents that even if they spent millions of dollars in R&D, and hired the strongest team of researchers to build a system for studying this problem, it would be highly uncertain whether the task could be solved to an adequate degree in 2-5 years.

The hidden complexity of everyday intelligence in the real world will be a recurring theme in this book.

 
# AI and the Media 

The modern media industry makes their money from advertising, whose revenues are based on how many eyeballs are looking at their webpages. Driven by these incentives, journalists craft sensationalist headlines about technology to provoke emotional responses. This has the unintended consequence of exacerbating the public’s misunderstanding about the how and what of AI. Consider the following headlines about recent research:

- "It will change everything": DeepMind’s AI makes gigantic leap in solving protein structures (nature)
- Google’s AlphaGo AI defeats world Go number one Ke Jie
- OPENAI’S NEW MULTITALENTED AI WRITES, TRANSLATES, AND SLANDERS

From reading articles like these, you might come to believe that the new world order is imminent. On the other end of this spectrum, you might see news headlines designed to provoke fear:

- Facebook AI Robots Shut Down After They Secretly ‘Invent Their Own Language’
- Elon Musk: ‘Mark my words — A.I. is far more dangerous than nukes

These headlines insinuate the narrative that "machine minds are coming to replace our jobs” or "world-ending robots -- like SKYNET portrayed in the Terminator movies -- are right around the corner".

Even a relatively mundane headline like “Artificial intelligence solves Schrödinger's equation”, while not technically inaccurate, can still be misleading due to the duplicitous nature of the English language. To the researchers who built the system, “Solve” was intended to be used in the same way that “a calculator solves a differential equation”: nothing more than a rote but expensive calculation that is better done on a computer than by hand. 

However, the use of the term “Artificial Intelligence solves” gives the headline a different meaning: by anthropomorphizing the AI, the word “solve” evokes the imagery of a lone genius deriving a brilliant, original solution to a century-old problem on a blackboard. The personification of computation is described much like how "Andrew Wiles Solved Fermat's Last Theorem", in contrast to the rote simulation and calculation our AI systems actually perform.

These headlines, in which all expert nuance is discarded for mass consumption - highlight the reality that public science education is woefully inadequate for understanding modern technology and mathematics. This is not unique to AI - we see this happen often in quantum physics (Does Quantum Physics Support Buddhism?), biotechnology research (Stem Cells Reverse Aging). There are publications (Quanta Magazine) that attempt to bridge the knowledge gap between the experts and the public and bring a more accurate representation of science to mainstream, but by and large the public does not understand the limitations of computer technology and modern AI research.


# A Critique of the Rationalist AI Community

Fanned by the flames of media sensationalism, there is a surprisingly large community of pseudo-intellectuals and “AI philosophers” who will make wild extrapolations on the capabilities of AI systems. The basic argument is based on two assumptions:

1. Base case: an AI that can do anything better than a human can, including the design of AI.
2. The inductive step: An AI that is “better” than another AI at a task (such as designing AI) can do it better in every way (speed, optimality).

Once an AI system reaches human-level intelligence, it would be able to design and improve itself at least as well as humans can, but is now unfettered from the limits of human biology so it will exponentially increase in capability and humans will lose control of the technology. The exponential growth reaches a near-vertical slope, intelligence explodes, and this event is known as “AI Singularity”. 

Some philosophers like Nick Bostrom argue that the potential future danger of a God-like “Superintelligence” is so vast that from an expected-value perspective, we should be investing a large amount of philanthropic work on mitigating risks associated with Superintelligence. 

A outcome that these futurists take rather seriously would be that such a “superintelligence” will become so powerful that mispecifying the objective “make paper clips efficiently” will result in all living organisms being harvested for the iron in their blood as the runaway AI turns the entire solar system into paper clips. It’s no coincidence that the set of people who think that AI safety tend to be the most privileged, ivory-tower types of society, who seldom think of more wordly issues that technology brings to society. It’s also no coincidence that these people spend the most of the time talking and the least amount of time doing the actual work like experimental design and engineering.

The problem with the “AI Singularity” hypothesis is that it is a shoddy appeal to the language of mathematical induction and statistical thinking - there are no precise mathematical quantities in the above statements, so the “proof” is merely dressed in a veneer of mathematical authority. What does “better” mean? Infinite future suffering is still infinitely bad, no matter what probability you multiply it with.

In this book I will make no attempt to hide my disdain for philosophers and “rationalists” who make a lot of noise and tour the media circles but do very little to advance the technology themselves. Rationalists pride themselves on adhering to Bayes rule - then I challenge them to explain what evidence would update their belief to no longer think Superintelligence is no longer a risk. If they cannot think of any such evidence, it means their claims are not falsifiable, and therefore the topic of philosophy and not science. 

A philosophical interest in quantum physics does not make one an authority on quantum physics, which is entirely what is happening with the rationalist community’s perspective on AI. It’s the experimenters who probe reality that hold the truth, not the people who sit in an armchair who philosophize on what intelligence and can and cannot do.
Coming for our Jobs


# What do AI  Researchers Even Do?

“AI researcher” is used as a cursory description of someone who works on methods that might contribute to building AI systems.  For the most part, the job is like any other sort of programmer - they sit in front of computers and write code and attend interesting tech talks. I wake up every morning, make myself a cup of coffee, and then curse in frustration as I find some simulations I started the previous night crashed with nothing to show for it. Like all programmers, we regularly search on Stack Overflow for how to do mundane things like convert images into gifs or adjust a plot to be more aesthetically pleasing. 
The newest breed of AI researcher - the sort that has contributed the most breakthroughs in the last two decades - works on a broad form of computational statistics called “Machine Learning”. Some AI researchers develop new algorithms to solve open-ended problems to make their systems more efficient, while others work in more application-heavy settings like Netflix’s recommender system or Google’s text-to-speech assistant. 

If I were to roughly map out the ontology of the field as a tree:

- draw  a map of the human body and point to different areas like AI, NLP, robotics 


Separately from that are different fundamental tools, like statistics and ML.

I think if the public could watch the day-to-day life of ML researchers they would be vastly comforted by how far we are away from building paper-clip maximizers.
The general public is generally unaware of the mundane details of software programming, so they rely on the science fiction portrayals of “AI” to shape their understanding of the technology. It comes as not surprise then, that the general populace  reacts to any sufficiently advanced technology with exuberant optimism or unbridled fear. 
To be clear - to date, no one has created AI that reflects a degree of “agency” that is as convincing as what we see in science fiction. How we do that will be the subject of this book.
 
In science fiction and public discourse, “AI” has very different connotations. A “General AI” is an  “Artificial” being capable of doing anything a human can - much like an actual person. This is reinforced by science fiction portrayals, where AIs range from intelligent assistants to murderous robots. These robots often possess an anthropomorphic sense of self,  referring to themselves as “I” or having self-preservation as a part of their programming directives. 
Simultaneously, people have deep-seated fears of being replaced, of losing purpose in life because someone or something can do it better than they can.  
 
In order to gain a deeper understanding of AI technology, we must discuss how we build these sophisticated computer programs. 
But in order to create Artificial Intelligence, we will have to get more precise than that.
 
However, without an understanding how AI systems are built, it becomes very hard to reason about the system’s actual capabilities and limitations. It would be like trying to discuss the future of vehicles without knowing the efficiencies of combustion engines, the aerodynamics of planes, or the physics of energy. Much like car designers and manufacturers think about how to make drive chains more efficient or rubber more durable, AI researchers and engineers traffic in getting Machine Learning systems to scale to larger datasets. Fortunately, the first part of this book is dedicated to gradually building up your understanding of how AI works, the most promising aspects and the most challenging bottlenecks.
With my machine learning and robotics colleagues, we use “AI” to casually describe the catch-all term for “sufficiently advanced software”, knowing full well that such a term is so devoid of technical precision that it isn’t actually useful when describing how to build actual systems. Sometimes experts will refer to a system as “AI” because we are deliberately dealing in the abstract - we don’t know how exactly it will be implemented, so we may refer to hypothetical systems as an “AI” rather than a “Machine Learning system”. 


Summary
There are two meanings when people use the word “AI”. The first is from science fiction, and carries with it anthropmorphic bias of robots with their own agency. 
The latter is “narrow AI”, which is a moving goalpost dictated by how “hard” the technology is. What was considered AI 20 years ago is just “regular code” today.
Only programmers have a nuanced view on what is “hard”, so everyone from VCs to CEOs confuse the public by m their products “AI”. 
The media simplifies language that evokes anthropormophic bias towards AI. 
AI Alarmists ( a disjoint set of people from AI researchers who actually move the technology forward) genuinely believe that Superintelligence Risk is one of the greatest threats facing humanity in the future and we need to act on it today.

