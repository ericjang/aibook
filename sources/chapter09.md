---
chapter-number: 9
title: Jungle Basketball
link-citations: true
reference-section-title: References
---
*“Study hard what interests you the most in the most undisciplined, irreverent and original manner possible.”*
*-- Richard Feynman*

The previous chapters discussed the state of AI research, past and present. Now we talk about the future, and how to build it.

AI researchers typically test their algorithms against disembodied, high-level cognition tasks: holding a conversation, planning a vacation, understanding people, composing a symphony, choosing pieces on a Go board. Animal-level capabilities like eating and mating and hiding from predators are regarded as ancestral baggage that an AGI may not require. If a software can compose a symphony or console the bereaved or direct corporate strategy, why do we care whether it is able to spread butter on toast or replace the passenger side mirror on a car?

If the reader takes away anything from the previous chapters of this book, it is that we have intelligence backwards. The smorgasbord of “cognitive” capabilities AGI researchers love to focus on are *only* meaningful in the context of survival and other corporeal behaviors. Without the primal environmental demands for these capabilities, these capabilities are poorly defined and cannot be trivially integrated together into a cohesive, functioning human-like intelligence. 

As Hans Moravec said, *“Encoded in the large, highly evolved sensory and motor portions of the human brain is a billion years of experience about the nature of the world and how to survive in it. The deliberate process we call reasoning is, I believe, the thinnest veneer of human thought, effective only because it is supported by this much older and much more powerful, though usually unconscious, sensorimotor knowledge."*

In order to create the veneer that is Artificial General Intelligence, we must first solve the problem of artificial survival. Let’s jump in.

# Why Games?

The first piece of the ASI engineering roadmap is to build a challenging video game where non-player agents must survive. In order to do so, they must develop simple behaviors like seeking out food and shelter, but eventually more complex adaptations like creativity, memory, learning, and thought. In order to get from today’s “narrow-ish” game-playing agents to agents that are so capable that they give the illusion of general intelligence, we need to pack the environment full of toxins and tools, catastrophe and opportunity. The ASI will learn all behaviors we associate with intelligence from raw undifferentiated computational circuits out of necessity. 

Obviously playing games are not the end-all be-all to creating general intelligence - as we discussed in Chapter 7, evolution’s beauty and open-endedness arise from the lack of an explicit objective like “strongest” or “fastest” or even “smartest”. Even so, games remain a good research platform for several reasons. Research Labs like DeepMind have focused on solving games as a way to measure learning algorithm progress on AGI research. 

1. Nearly all games come with a clear, measurable objective with a predefined set of actions and win conditions. Even though there is a single limiting objective, a lot of complex behavior can still emerge, and those behaviors can be repurposed later to solve tasks more aligned with biological survival and existence. 
2. Games are designed to have simple rulesets and a gentle learning curve that humans can figure out quickly. 
3. Computer games can be simulated in faster-than-real-time, and be re-started over and over again, like resetting a time machine, so we can revisit points in history where different choices would lead to different outcomes. All of these make the training process less computationally expensive.
4. Games are also fun for humans to play and watch. The entire nation of South Korea was riveted to the televised matches of AlphaGo vs. Lee Sedol in 2016. There’s something terrifying and inspiring about a human prodigy being outsmarted by a sphinx-like machine: inscrutable yet seemingly all-knowing. As ASI researchers, we will be spending a lot of time watching our creations. Evaluating intelligent systems is hard, so being able to compete with human-level intelligence gives us a visceral, qualitative sense of how smart the agent is. Later on, I want to leverage human-in-the-loop intelligence to supervise, discover and influence the arc of evolution. 


# Jungle Basketball

I call the first iteration of the ASI game “Jungle Basketball”. It is a simulated game of one-on-one basketball: two humanoids with arms and legs that move around a court and attempt to gain control of a ball that they toss into a hoop on their opponent’s side of the court.


Jungle Basketball is similar to 1v1 basketball in a few ways:

1. The court is divided into two equally-sized regions, and the ball is tossed between the two agents to start the match.
2. The first player to score the ball in the opponent's goal wins points.
3. The ball must stay in bounds. If the offensive team loses the ball out of bounds, the opposing agent gets control of the basketball.
4. The game ends after a certain allotted time, and the player with the most points wins.

However, the similarities to basketball stop there. Here are some modifications to the game:

1. The game does not take place on an actual basketball court - it takes place in a variety of environments: a jungle, on a cliff, in a swamp, on a rugged mountaintop.
2. Game agents can be killed or incapacitated. In other words, there is no such thing as a foul.
3. After a per-round allotted time, the player with the ball on their side of the court wins a point and the round resets.
4. Double-dribbling is fine.

These set of rules imply a few ways to win: scoring the ball in the opponent's hoop, keeping the ball in their own court, or incapacitating the opposing agent.

The third tweak turns Jungle Basketball into a zero-sum game: even if the agents do nothing or fail to interact with the ball entirely, the ball must be in one player's court at the end of the game. This provides a good starting curriculum where agents can start by rolling the ball into their own court, and then later discover that scoring on the opponent's hoop guarantees a faster victory. Zero-sum games are well-suited for self-play learning algorithms because we can pit the best agent so far against copies of themselves, and every game is guaranteed to decide a winner that is at least as good as the current one. We can readily re-use approaches like AlphaGo to solve these games, although they will certainly require algorithmic extensions to generalize those ideas to this particular task.

Depending on how we set up the software design space to be searched over with software 2.0, there are a large number of potential capabilities that might emerge once we train agents to solve this task:

- Violent strategies that try to destroy the opponent, especially when they are pre-occupied with manipulating the ball
- Defensive strategies that try to hide with the ball so the per-round timer runs out.
- Deceptive "juking" strategies where the agent pretends it is doing one strategy, but switches strategies to counter the opponent
- Using the varying terrain to an advantage (for instance, to trap or injure the opponent, or as a place well-suited for camoflauge)
- Modifying the environment (e.g. branches, a pile of rocks) in ways that get disturbed when opponents pass through, in order to ain information.
- Interfering with the other player’s ball handling (much like a guard does in a real basketball game)
- Observing the opponent’s behavior in one round to understand opponent behavior, and then devising a unique counter-strategy
- Pushing the opponent out of bounds to obtain ball control

There are many vital implementation details to get right in setting up the problem that are extremely important for practitioners. The smallest of details - like how the action space is parameterized, or whether we stop agents early that are doing poorly, may not look like a large qualitative change to a casual observer, but can make all the difference between "not working" and "working". We’ll avoid discussing many of these details in this book, but in the Appendix I will include a number of algorithmic ideas to facilitate robust training of this environment.

# Intelligence as a Function of Time and Space

In chapter 7 we discussed that neural systems are evolutionary adaptations to help an organism survive for a certain amount of time, across a certain number of cubic meters of space. Animals with a lifespan of 1 day have no need for long memories, or the ability to use tools, or social intelligence to interact with dozens of individuals, because their lives are so short brief that they don’t have the time to learn new skills and put them to repeated use. 

Humans, who live for decades, do have time to improve their learning and studying techniques and sit around all day and do nothing but think, because doing so is well-worth the energetic and time expenditure. The benefits of adaptability must be energetically worth its cost, with the alternative being to simply incorporate behavioral or morphological changes at the genetic level. 

We should keep these principles in mind when training agents to play Jungle Basketball - though evolution and reinforcement learning can train these agents to exhibit more and more complex behavior, we don’t necessarily expect them to develop any capabilities that serve use cases longer than the duration of the basketball game. At some point the agents will stop becoming more adaptable because their lifespans are too short. In order to make the agents smarter, we must focus on making the environment larger and more demanding.

What sorts of adaptable behavior might we hope to see? Cognitive neuroscientists have identified two distinct learning systems in mammals:

- Motor intention learning, implemented in the cerebellum, which measures how well motor outputs line up with intentions. Examples of motor intention learning include mastering a golf swing or hitting the right keys when practicing piano, neither of which are available to us at birth. Motor intention learning can be roughly compared to learning the dynamics of the environment - an agent can observe how much the true dynamics of the environment line up with their intended plan, and use that as a training signal to refine their own behavior. Again, such algorithms are often designed to operate across episodes. 
- Reward prediction learning system provides feedback on whether the act - regardless of how well it was performed - worth the energy and risk taken. This capability is implemented in the striatum. In RL algorithms, this can be thought of as learning a reward function. In a world where there are no true optimization objectives, life has to make up their own reward systems in order to reinforce behavior. Our serotonin and dopmanine systems serve us here - to send us internal rewards when the universe has none to offer.

It’s tempting to take inspiration from these biological learning systems and augment our relatively sample-inefficient RL algorithms with some algorithm inspired by these ideas. There are countless papers that try this, with the hope that reflecting biology more faithfully leads to sample-efficient learning or at least a deeper understanding with how biological intelligence works. But let us take care not to forget the Bitter Lesson: we should force these capabilities emerge as a necessity for solving Jungle Basketball, rather than shoehorning our tasks to accomodate the idiosyncrasies of the learning algorithm. We want our ASI systems to learn quickly during the game, but we still have the flexibility to use slow but general algorithms like proximal policy optimization (PPO) or even evolution strategies (ES) to find good Software 2.0 function approximators. 

Another reason why we want agents to spontaneously develop their own internal reward systems is that the mechanisms for reinforcing those rewards will be also internal, disjoint from the algorithmic formulation of how we actually train agents. The method we use to train agents (PPO, ES) will be slow, and unable to adapt the agent quickly within an episode (by construction, it is not meant to optimize that). Instead, I hope an internal reward prediction AND update mechanism will emerge by optimizing for final episode outcomes (successful basketball playing).

In order for agents to spontaneously acquire their own motor intention and reward prediction learning behaviors during an episode, the episode has to be long enough that performing such behaviors would be worthwhile. This means that episodes have to be long enough that agents might independently exercise their motor intention learning and their reward prediction learning systems. An agent might spend time practicing general motor skills (e.g. like how young mammals play), then later use those refined skills in conjunction with their reward prediction and learning system.

Maybe it benefits an agent to practice some shots on its own hoop using some rocks at the beginning of the game, so that it can reliably score once it picks up the basketball. Or maybe an agent will grab possession of the ball and spend some time interacting with it in a secluded space, so that when it takes a shot the chances of success are maximal. 

Most RL environment benchmarks do not necessitate learning-on-they-fly, and those who do only involve a modest amount of interaction before the agent has all the information it needs. In contrast, we want to increase the difficulty so that agents actively seek out acquisition of new skills and familiarize themselves with unknown terrain so that they may have the most advantages when playing the game. 



<!-- appendix detail 
To provide a natural curriculum with which agents get initial learning progress, we can have the jungle reside in an extremely confined space, with a simple flat court to begin with. The space will be so confined that random behaviors of the players can knock the ball into the other player’s hoop by chance, or possess the ball in one’s own court.

As these agents begin to reach a strong level of performance in confined, short environments, we can gradually make the environment harder by increasing the size of the map, the duration of the game, the number of “rounds” in each game. Increasing the number of rounds in a game allows agents to potentially devise counter-strategies to their opponent after watching them win a round. After all, sometimes losing a battle lets you win the war. Finally, we can add environmental opportunities and dangers (radiation exposure from the sun, slippery slopes) that ASI agents can use to their advantage. 
-->

# Implementing Death

Agents can win Jungle Basketball if the other agent dies. But what does it mean to “die”? what counts as alive? As discussed in chapter 7, we don’t have a good computable definition of “survival”, and it’s not clear how to prefer animals like homo sapiens over to *e. coli*, or where one genome begins and another ends (man vs fish). We don’t know a computable meaning of life, and so we also do not have a computable definition of death. 


Jungle Basketball does not feature an open-ended objective - to the contrary, a strict objective allows us to side-step the thorny questions of life and death and get agents to learn *something*. Plenty of interesting behaviors can emerge from training agents to optimize for simple objectives in complex environments, even if they don’t perfectly capture the ultimate, intelligence-giving constraint of biological survival. We can make the environment more ecologically life-like later by bootstrapping on top of the existing agents we have.

A computational approximation of “death” could be as simple as one agent experiencing too much external forces (e.g. from a fall or impact from another object), or depleting itself of energy so that it isn't able to move. In the initial version of Jungle Basketball, we will not consider the agent’s need for food or energy or sleep. Life is obviously a lot more complicated than avoiding blunt trauma, but it will suffice for now.

<!-- 
An ASI system is bottom-up: building the simplest of bacterial intelligences and prioritizing ecological specialization rather than some measure of “raw intelligence”. I believe that competitive and cooperative survival of "living organisms" is the only true way to birth general intelligence. For instance, If you lack some mental power like deductive reasoning, another agent might exploit the reality to its advantage to out-compete you for resources. If you don’t know how to socialize with another group of similar individuals, then you will be an outcast.  -->

# Evolutionary Feedback Loops

In software development it is common to build a complex system from the bottom-up: we we build some basic capability, and then compose those together into more advanced ones, and then build still more advanced capabilities on top of those. For instance, one might first build an agent capable of performing hypothetical reasoning, and then use that skill to hypothesize and invent tools. Once you have agents that know how to use tools, you can have them build scientific instruments to study the universe.

When building a house, the foundation is built first, then the joists, then walls, and finally things like paint and windows and doors. There is an order to how the construction is built, and things have clear-cut dependencies.

But replicating the evolution of intelligent life will be more complicated than that, as life does not have clear-cut dependencies. Maybe scientific belief and reasoning came first, followed by rudimentary tool use. Maybe the invention of the first tools was at first done by accident for another purpose, and then it improved hypothetical reasoning afterwards. War demands many intelligence capabilities - tool use, theory of mind, cooperation. Did it arise because those capabilities were built already, or did those capabilites evolve to up the ante on primitive warfare? Or as I am inclined to believe, all of the above can happen simultaneously in a massively parallel world. This is why having such a rich and open world where “anything can happen” is so important.

Ken Stanley’s "Why Greatness can be Planned" is an excellent treastie on the tension between open-endedness and direct goal optimization. He argues that hat sometimes, in order to achieve a difficult goal, you must optimize for something else indirectly. Being single-mindedly focused on a specific objective often results in greedy optimization, where spending time doing anything else takes you away from the local minima. Paradoxically, approaches that try to visit *everywhere* in the space of outcomes can lead to other goals and unintentionally useful outcomes. One example brought up in the book is the invention of vacuum tube transistors - they were originally invented for studying electricity, but re-purposed for the invention of computers. If humanity was single-mindedly focused on building computing engines, they may not have found the time to work on other problems that would have discovered the vacuum tube.

Taking inspiration from this principle of "open-ended search", we want to assemble all manner of diverse, interesting capabilities, and re-purpose interesting behaviors to solve hard intelligence problems. Jungle Basketball is the "side quest" (albeit a hard one!) that helps us find interesting behaviors. It's likely that optimizing Jungle Basketball will produce agents that are not particularly good at basketball, but quite useful for some other task. Vice versa, when we later extend Jungle Football to tackle other problems, it's possible that we'll accidentally discover a good basketball player.



We will refine these ideas as we train more and more complex agents and introduce human-in-the-loop RL in [chapter 11](chapter11.html).

<!--
# Non-Features (for now)

Although the goal is eventually to build up to an open-ended, life-approximating simulation, there are a number of things we deliberately avoid implementing in Jungle Basketball initially. I wanted to call these out these non-features specifically, because we know that they do play an important role in shaping the vast creativity of biological life, and knowing what we don’t have gies us an appreciation for all the work that lies ahead of us.

All life capable of internal metabolism must perform allostasis: keeping its internal machinery stable, and anticipating its future conditions and needs. For instance, the brain will predict where blood needs to be diverted in anticipation of the actual activity - higher blood pressure in anticipation of danger and sex, lower blood pressure in anticipation of leisure and sleep. During digestion, the brain re-allocates oxygen-rich blood to work on digestion, borrowing energetic resources from the muscles and skin. Most AI researchers know that resource management is important, but probably don’t consider the distribution of resources within a body to be an important decision-making space made by the nervous system. In Jungle Basketball, it is an open question as to whether we require energetic constraints and food resources to force agents to be clever about how they deploy resources. Perhaps internal resource management (allocating resources for thinking vs. acting) can be added as an additional level of difficulty after agents are initially successful. 

Morphological adaptation is one of the ways life can shape organisms to better suit their environment, without necessarily spending it on expensive brains. For instance, durians are shaped the way they are because it makes them only available to large animals, who then deposit their seeds far away. This is only possible in a rich simulated environment where the life cycles of all creatures are simultaneously simulated. Agents in Jungle Basketball cannot be broken down into cells, so there is no capability for morphological adaptation - all the adaptations must arise from the behavior of the policy.  Because we don’t have cells, there are no nutrient cycles to recycle life into other life.

There will be no reproduction or “genetic survival” beyond simply winning the game, and we’ll also ignore hard-to-simulate phenomena like heat, sound, and fluids, despite them leading to very critical allostatic adaptations in biological life. 
Arena: https://arxiv.org/pdf/1905.08085.pdf, DeepMind Lab: <> provide environments that we can base this off of.

https://arxiv.org/pdf/2102.02202.pdf

-->


<!-- https://www.youtube.com/watch?v=ISVaoLlW104&list=PLD7E21BF91F3F9683&index=9 - 60's found that rats raised in enriched environments had thicker cortexes, but wild rats had thickest cortex compared to any of the lab rats, suggesting that there is something about the richer environments -->


# Summary


To summarize, the first year of ASI research will be to create and solve Jungle Basketball, and get signs of progress of agents learning in highly non-stationary environments for long periods of time. 



In a world full of death and danger, the only thing left to do is to acquire motor skills, navigate physical rules of the universe, and develop energy-efficient strategies for survival.  


