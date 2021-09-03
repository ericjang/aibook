---
chapter-number: 6
title: Death gives Life Meaning
link-citations: true
reference-section-title: References
---

<!-- TODO: this can be potentially merged with the neurobiological software stack chapter -->

What is a single, unifying objective that can force AI systems to acquire and unify the laundry list of AGI capabilities we want? 


Main reasons for Artificial Life as an environment to bootstrap intelligence:

Handles Challenges of No-Reset, Non-Stationary RL

Starting with simple organisms that survive in simple ways makes the observation space simple - on short timescales, things are very stationary. The way nutrients spread out in a puddle of water is the same as 6 billion years ago, and even though you are not resetting to the same starting conditions, the distribution of conditions with which an e coli organism starts and finds itself in has largely been different, from the e coli’s perspective.
But from a human’s perspective, things are wildly different - on one day, we wake up in a crib.

Boils Fuzzy Semantics around intelligence (and capabilities) into a single task


Resolution to Moravec’s Paradox

Motor intelligence comes first, before high level symbolic reasoning (of which we do very little to handle day-to-day tasks)

Take grasping, for example. Roboticists often treat grasping as a “skill” that can be developed on its own. But what does it really mean to “grasp”? It’s surprisingly hard to pin down; decades of academic research have been dedicated to studying how to replicate the simplest of grasping behaviors in the real world - not to much success, I might add. And yet, many animals can pick up objects better than our best robotic systems. That is because if they don't know how to manipulate food into their mouths, they die. That is where the meaning of grasping truly comes from. Intelligence cannot exist without life and death. 



The answer to the integration question is to think about all the aforementioned “general capabilities” as not individual capabilities at all, but actually highly specific and necessary behavior for solving a single - survival. Perhaps “curiosity”, “empathy” are just a word for a certain kind of behavior that an animal exhibits in certain situations, when it serves the animal well.

Survival also happens to be the same specialized task that our human brains were evolved for, so if we hope to replicate a human-like intelligence in silicon, it makes sense to establish similar requirements.

A racoon rummaging through food scraps has an entirely different understanding of the difference between hot dogs and sandwiches. It does not care about whether the bread comes in two pieces or one, or whether the meat is a sausage or a patty. It knows that it is good to eat, and its problem solving skill is highly optimized for finding good things to eat.





In the previous chapter we find ourselves in a tangled mess of defining what objects are, what grasping is, what symbolic reasoning is. We struggle to define curiosity, or intrinsic motivation, or tasks. 

Typically when we don’t know how to implement a program, we instead specify some objective and then use machine learning to find a program. But what if we don’t know what the program even is to begin with?

I believe that to define the part without the whole is meaningless. 




Inevitably, part of  

Many people have their first experience with death 


Intelligence is life. Death gives life meaning.

It is said that nothing can be certain in life except for Death and Taxes. Indeed, the second law of thermodynamics constantly exacts a tax on negentropy, and the inevitable, certain result is always death. 


Not A Landscape, But an Iceberg

In a 1998 essay titled “When will computer hardware match the human brain”, Hans Moravec described a landscape of intelligence capabilities, where rising tide represented the things that AI was capable of. 

Human history has often re-drawn maps to update their understanding of the relative difficulty of various tasks. Moravec’s landscape assumes that the bulk of difficult tasks (e.g. Book writing, art, science) are enormous, separate landmasses that build on top of simpler skills.

I think the landscape is not exactly the right picture here. rather there is the iceberg of animal-like ability from which all semantic meaning is derived.

This actually Explain moravec’s paradox.

Categorize life based on how long they live, how wide they travel → which in turn decides the size of the memory and information processing capability of an organism. AGI plan will be based on progressing along this scale. 

In the next chapter we’ll discuss what it means to try and produce “artificial life”. 

In chapter 2 we mentioned that functions take inputs and outputs. An animal is a function -- implemented in meat -- that takes in sensory experiences, and outputs behavior via motion that helps it to survive and reproduce and do whatever it needs to do. 



Similarly, an octopus has legs, and while it can maneuver in all manner of speeds to varying degrees of urgency, it has no concept of the difference between “walking” and “running”, nor does it need to understand words. The boundaries between “slow” and “fast” movement are continuous rather than simply limited to two speeds. An octopus simply does as it does.

.
Given a “base compiler” and a set of instructions, compile a set of structures that protect the instructions against the universe.

Cellular replication is one such invention that allows the instructions to be preserved for a long time. The cell generates a duplicate set of instructions (copying), a duplicate set of protective structures

We can consider some solutions that we might not be satisfied with. 

One solution is for a set of genetic information to “compile” a highly thermally resistant, nigh-indestructable, chemically inert shield that protects the enclosed information from any element. This system would have a long shelf-life, but at the same time has little “empowerment” (how much it is able to influence the natural world arond it).

Core Takeaways of the chapter:

Most life is complex enough to harvest energy from other life (with a base case of some life that sustains process from non-living energy source) At a certain level of complexity, the pattern is said to be alive.
Life has many, many adaptations that would be challenging to simulate in soft evolution
Intelligent life could run, discriminate objects, grasp things long before anyone came up with an explicit language describing any of these things. The singular objective was that all these things emerged from survival.
Naturalistic Fallacy
Conway’s Game of Life is alive, but not “sufficiently” complex (again, human subjectivity here) to be interesting to us. 
Once we make it sufficiently complex and able to handle a world we deem analogous to ours, our subjective perception will deem it “alive”.
Moravec’s Landscape is the wrong way to think about things - I believe an iceberg is more apt description where survival forms the vast majority of mass but is hidden. Fine-tuned hunting and sex-having machines that can also paint a little on the side.
Cambrian Era The cambrian era was an explosion in the arms race of intelligence resulting from better sensors and locomiton being developed.
Muscles - actuation, storage, computation in a single package
Energetic constraints for moving and thinking
Sexual Selection Theory

We turn to approximating a very specific function, the one that implements survival in a large-scale world. We will gradually expand the scale of the environment that our function must cope with, starting with the smallest of scales and then broadening out to the size of a jungle.

In art, we must understand the rules before we break them, and we will also see the stunning complexity of phenomena available to biological life. Most biological processes operate on a chemical scale - are impossible to simulate at scale.

Core question: should we “discover” neural principles and designs from evolving them from scratch using general function approximation (so we don’t have to think about its complex design ourselves) or should we impose those designs beforehand (and risk us getting the design wrong or not implementing it correctly)

A living organism implements a function that maps its sensory experiences to behavior.

Let’s list out the inputs and outputs:
Inputs
Energy level
Internal state (is an organ damaged?)
Blood oxygen
Circadian rhythms

Outputs:
Expressing proteins
<to-do continue this list>


Animals do not merely move visible joints, they also control a host of internal regulatory things


As a roboticist, I spend a lot of time watching animal videos (dogs, cats, crabs, bugs, etc.) just to marvel at how beautiful and amazing life forms are, and to humble myself as a roboticist.

Notes from Principles of Neural Design:
Simple animals that have simple brains that remember just enough to survive. Brain capacity is consistent with environmental reach and lifespan.
AS we move up the food chain, brains become more complex
Send information as needed, and as slowly as possible
Brains can store one bit and transmit at nearly the thermodynamic limit thanks to change n protein folding (TODO: read chapter 6)
Brain evolved to coordinate multicellular organisms,
Core principles:
Generate patterns for wireless signaling and appetite behaviors
Preprocessing to shape signals for higher processing
High level processing: assemble larger patterns and choose behaviors
Tag high level patterns for motional significance
Store and recall
Evaluate reward predictions
Worm lives in a region of 0.01m^2, bee covers 10^7m^2
Larger animals cover millions of square kilometers - containing both more resources and more danger. We need a world with such scale and danger and resources.
eye->brain 10 megabits per second (ethernet connection)
Diurnal, nocturnal, crepescular (dawn/dusk)
Foraging determines strategy for dealing with predators - camoflauge, evasive flight, skulking 
Internal clocks help regulate animal behavior to time of day? Maybe redufes the need for intelligent planning / discerning of environmental situations, because this is really predictable ? 
Handling Motor errors - brain needs to evaluate mismatch between orders it gave and actual motor performance (internal sensing, motor learning). 
Whatever the brain does for external environment it also does for internal environment.
The most powerful recall abilities of the Primate brain are for sensing and remembering social structures, because being cast out greatly decreases chances of survival 

Life occupies all niches lifetimes, with every lifeform precisely adapted to a specific lifespan and distribution of environmental conditions. When the lifespan is long and the distributions are varied, then this results in an organism that is highly adaptable to seek out bountiful resources that it encounters while avoiding inumerable dangers. 
 
We have a technology that can optimize for any criteria. When we assume a common set of fundamental physical constraints, and then optimize a system that preserves information over 1 day in a hostile world, versus a system that preserves information for 1 year, we should expect to see very different adaptations and tradeoffs. If the maximum area a organism can visit is c^2 meters / day, then we should expect that the organism should only need to handle anything it might encounter within c^2 meters, while the second one . 
Note that we will initially rersist the urge to think on the level of optimizing an individual (e.g. such as a walking humanoid robot with a set of sensors and actuators), because lends itself to constrain our solution space with what we optimize.
 
To optimize a living organism that exists for a mere 50ms that can handle a massive variety of circumstances, we require O(1M) trials, which is roughly 14 hours. This is an “L1 organism”, which we can easily do today. L1 organism is memory-less, it simply reacts to the environment around it. Optimizing the L1 organism can get it to handle a wide variety of conditions, but not necessarily ones that require dynamic adjustment based on what it saw in the day. We get a very different set of strategies that emerge from an organism that can’t remember anything on the individual level, and perhaps occupies a fairly limited range.
 
An L2 organism is one that lives for the duration of 100-1000 decision steps, perhaps comprising the number of interesting decision events encountered in a day (this is a drastic underestimate, but pretend we have a sloth or something, which is a perfectly respectable living organism that has done a fairly good job keeping sloth genes around). 100x of 50ms is 5s to roll out, which in turn for 1M steps would take 57 days. Fortunately, the optimization steps can be reduced by parallelism - by splitting evaluations across 10 machines, you can cut things down to roughly a week (6 days) of training. L2 organism forgets anything from the previous day, but is optimized to handle challenges that might arise during a day. So far, research labs have only been able to train L2 organisms. 
 
An L3 organism is one that lives for the duration of many days.
 
Carcinization - many animals independently becoming crags. If God makes us in his own image, then surely He is a crab.
 
 
This in turn, influences the time required to optimize an entity for that given lifespan.
 

Hummingbirds are an example of how life and death solve the symbol grounding problem, and resolve the meaningless question of “what is a stable grasp”
What is a "stable grasp"? An entire body of classical robotics literature is devoted to answering this problem. I work on robotic grasping research and defining what it means to grasp something successfully is a little tricky unless you have a broader context of what the grasping is for.
Nature doesn't care whether hands exist or not - only that the animal can feed. That is why we see such a spectrum of appendages in the animal kingdom. Some are hand-like, others not at all, and some in between. In some sense, "hand" is a mental construct of human language.

 
Life is, in fact, not the huge search space we think it to be, but a highly constrained optimization problem from which a specific set of solutions occupy every possible set of ecological niches.
Each year, we are to expand radically new capabilities.
This means that each “experiment” needs to actually be fairly short, about a week.  52 experiments in a week. 
 I personally like to know whether something is promising after 1 day. 
I consider myself a fairly productive engineer - I can write code that does not need to be re-written often, and has a fairly long shelf-life (lasts 2-3 years without needing substantial upgrades).
 
Parallelism (owning a datacenter) can help a lot with “research scientist descent”, in which we can try hundreds of experiments simultaneously. In some sense, parallelism effectively cuts us from centuries -> years. 
 
 
 
Living systems/

https://arxiv.org/pdf/1410.8820.pdf





As engineers, we know that the devil is in the details. When someone says “I could code a basic version of the Uber mobile app in a weekend”, they aren’t considering that the hard part is not the high level concept, but the low level logistics and edge cases of it all. (provide some examples here)

In the same way, we should not fall into the trap of thinking of evolution and biological intelligence the same way we regard the ride-hsaring software as a high level concept.

Meanwhile, this is the placement of Varshney et al. 2011 C. elegans connectome picture ()


Species
Brain Size
Range
Lifespan
E. Coli




Minutes?
Paramecium




Minutes?
C. Elegans


0.01m^2
Weeks
Fly
500x
10^7 m^2


Mouse
500x




Macaque Monkey
100x




Human
10x
Millions of km^2
Decades











Formal logic is useful for expressing relationships between mathematical structures, but falls apart when we attempt to bridge this to concrete meaning in the world. 
Unfortunately, our knowledge and understanding of the world is not formal - rather, it is approximate, fuzzy, full of logical contradictions that are disjoint from the things we can say about mathematical objects. 



The success of the ML revolution should have made clear that defining knowledge in human-written code is the wrong way to go - we must extract fuzzy meaning from data.



in order to build things that do complex tasks, we often have to codify our understanding of those tasks in the first place, whether explicitly or implicitly. 





How did evolution solve this problem? 

At the end of the day, humans minds serve a singular purpose, the same one shared by any living organism - perpetuation of our genetic code.

https://www.npr.org/sections/health-shots/2015/08/07/430149677/eye-shapes-of-the-animal-world-hint-at-differences-in-our-lifestyles

Arguing that true generalization in perceptual understanding requires agents that are trained by life & death. 

Something capable of surviving can be said to understand it.


We cannot provide minimum description programs of anything.
Existence is pretty much the only supervision signal we need to learn everything.
Artificial life optimizes for existence, via consuming & avoiding being consumed.


I think "survival and reproduction" is a pretty good objective.


In order for a system not to introduce "artificial" objectives, we cannot simply use a traditional evolutionary strategy 

Models cannot survive if they fail to understand the world.

there is still the question of how to shape the world so that models are not merely encouraged to survive, but also increase their intelligent capabilities.


Naturalistic fallacy
We humans, who have gotten used to transacting in money and ordering our entertainment from Netflix and our coffee from Starbucks, have forgotten that the most general intelligence of all was evolved purely to solve the Game of Life, long before the first human decided that it wanted to create art or language.


 in art, we must understand the rules before we break them. 

Core thesis: we are spending too much time chasing the tip of the iceberg and not the underlying subconscious stuff.


Many people say that we should not be constrained to life’s design as a way of designing artificial intelligence, but I believe that like many forms of art, we must understand the rules before we choose to break from them.


Not Moravec’s Landscape, but rather an Iceberg

A section of the book devoted to exploring some of the remarkable things evolution has designed.

Cellular level, use of chemistry.

Protein synthesis.
Learning, memory, intelligence are deeply wound together.

“Learning” is an illusion

Learning at all time scales (from genetic to short term memory). All of these were evolved to solve some task.

Life itself is really the absense of death. 

There is one way to survive, which is the exclusion of dying (tautological).

<building machines that think like people> - the following point is made about Ice Climbers.

So we need environments that can teach agents that floating ice can be stood on, that polar bears and aliens shooting things at you are dangerous, that falling off a cliff is irrecoverable.

Machine Learning has had amazing successes in generalizing to unseen instances, but the generalization is not particularly strong because we expect our ML systems to know about things about the world that simply aren't present in the training data 




There are many plausible hypotheses for why evolution was selected for, which we can actually study as we develop the software for AGI.

Sexual selection theory suggests: intelligence was a signal of good nourishment, or that the host was (brain) parasite-free, 

https://en.wikipedia.org/wiki/Evolution_of_human_intelligence

IF so much of the brain’s design is influenced by energy conservation, adaptations to maximize chances of survival, it seems odd to me that AI researchers attempt to recreate intelligent behavior - the raw export of brains - without also simulating the evolutionary pressures needed to realize it.

In the previous chapter we discussed how biological life is a single, unifying objective that does away with the tricky semantics and messy integration problems we discussed in Chapter 4. Life does not really care about the difference between classifying sandwiches and hot dogs - it only understands their difference in calories. The simple ability to discriminate between “nutritious” and “not nutritious” is the evolutionary basis of separating “good” from “bad”, “friend” from “foe”, “pit bull” from “golden retriever”, and eventually, yes - even “hot dog” from “sandwich”. Life has a simple answer to the capability integration problem posed in chapter 3: there is no need to integrate multiple AI capabilities because there is only one capability, and that is survival. 


## On consciousness

We typically think of human minds as being capable of consciousness, and consciousness requires some sort of "advanced information processing", or "computation". But do simpler organisms do "computation"? 

When an e-coli bacterium ascends a glucose gradient in search of richer food sources, is it doing computation? 

When a single ion binds to an ion channel on  a cell membrane, is the cell doing "computation"? At what point does "sensing" end and "computation"  begin? When you drill down to the molecular level, is it all computation? 

At what point then, does non-living physics begin and the "agency" with which intelligence is often associated with begin?


