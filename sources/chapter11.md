---
chapter-number: 11
title: Open-Ended Search and Lifelong Learning
link-citations: true
reference-section-title: References
---

Games differ from life in a few important ways.

First, games studied in reinforcement learning tend to be fairly short - a handful of moves on a chessboard, a deck of Poker cards running out after a few dozen turns. The average game of Magic the Gathering ends in 6.7 turns. In contrast, life is a game that never ends - even when you die, your genes keep playing. Even when humanity goes extinct, parts of the human genome will keep playing.

Second, games start with a clearly defined reset state - for instance, shuffling the deck at the beginning of a poker game. For RL algorithms that learn to play games, this is an important detail because it allows us to visit the same states over and over again, allowing trial-and-error to figure out what actions tend to work best for that state. Even learning short games with reinforcement learning require resetting and repeating the game over thousands or even millions of episodes. The initial state of the game may be randomized from episode to episode, but it's done in a way that is independent of the past. Therefore, the distribution of "reset states" are "stationary".

I like to use an analogy for describing most RL tasks today: it's like building sand castles at the beach. The “game” starts with a flat pile of beach sand each morning, and no matter how glorious the sand castle you build, the castle is washed away by the tide by the next morning, leaving more or less the exact same starting conditions. In most RL setups, the only thing that is “persisted” between episodes are the updated agent parameters: everything else stays fixed. Such games are relatively easy to learn, and the optimization objective takes place with respect to a fixed initialization and dynamics. The complexity of the world is bounded by what you can build in a day, and nothing more.

Now imagine if there was no tide and no resets - the sandcastle you built one day would be waiting for you the next. You could keep extending it, building a sand kingdom without limit. You might even leave behind instructions to your children on how to build sandcastles. A lot more would be possible if the tide didn't reset your castle-building endeavours every day. Most land animals experience this - our shelters and tools and books persist across time, even though the sun rises each day. The real world has no "resets" - it does not wipe the slate clean, nor are the same starting conditions ever visited. This makes the world substantially richer.

The richness of an environment and the chaos its inhabitants can impart onto it are a function of its duration. This has implications for the richness of behavior we can expect to learn - a chaotic environment requires agents to adapt just as rapidly, or die. A long-running environment can accumulate a lot of changes over the episode, which in turn force the agents to handle wildly diverging outcomes. Agents might need to remember the distant past, so a long-running environment forces them to develop stronger learning and memory capabilities.

Unfortunately, it also makes the world substantially harder to learn in. If you never see the same state twice, how do you know for sure which actions work the best under a new state? Learning under continually changing conditions is an open problem in RL. The only way for RL agents to successfully survive in a constantly-changing, reset free world is if they can adapt faster than the world is changing. 

Of course, there is an alternate strategy, which is to eschew learning altogether, and just learn a fixed set of behaviors and sensors whose readings are so simple that everything *looks stationary* even as the world is really changing around you. A bacteria or tree's sensory reading of the world looks more or less similar to what it was used to handling a million years ago. In that sense, it's not unlike a physicist, who also understads the world obeys a fixed set of unchanging rules. 


# Stationarity and Sand-Castles

Jungle Basketball is no exception to this rule. With only so much time to improve oneself during a game, agents don't have a lot of time to do anything but try to win. To make Jungle Basketball truly open-ended, and remove the ceiling on the achievable complexity of agents, we have to free the environment from the tyranny of resets. 

If we give agents a lot more time, they may discover behaviors that don't play basketball in the short term, but give them an outsized advantage compared to their competitors in the long term. But if the simulation of Jungle Basketball is never-ending, how do RL concepts like credit assignment work? What would the agent's "episodic return" be? When would we actually update agents? One simple answer is to constantly be kicking off new Jungle Basketball games, but in the world left behind by the previous match. Agents would not interact with yesterday's players, but they would take place on the same battlefield.

In making the episodes longer and longer - potentially running for years at a time - we run into a technical hurdle. Longer episodes make RL problems more expensive to simulate *and* harder to learn. Given random agent behavior, the chance of finding a random success is *exponentially decreasing* in the number of decisions the agent must make. That is why it's so vanishingly unlikely a room of monkeys will type out Shakespeare, even if one monkey bangs out the first couple words correctly on accident. Modern RL algorithms have scaled to about a hundred or so actions, any more starts to become a serious research project. GPT-3 is a massive neural network that remembers a history of about 200 words. If we want to have agents that can retain memories over entire lifetimes, we will need to seriously re-think our training algorithms.

Having to start and simulate episodes of basketball games over and over again leaves some fundamental constraints on how long we can simulate things. If it takes a million episodes of trial-and-error to learn a task (just to toss out a large number), and we only have the computational budget to make each episode last a year of simulation time, then the novel behavior we can expect in an agent's lifetime is anything that takes less than a year to learn. With a one-year lifetime, the agent will probably not be able to accumulate enough life experience to perform diplomacy, or research new scientific methods, or read a bunch of books. 

Yes, new agents can potentially be initialized with the memories and knowledge of previous agents, but it's also possible that intelligence critically depends on the ability to acquire knowledge for oneself, rather than having the knowledge built-in. 

If we want to simulate longer lifetimes, we will need to depart from an episodic learning framework, and merely let agents evolve in a non-episodic way in an never-ending simulation. Agents that are already capable of survival from playing jungle basketball will continue to maintain their survival, and potentially ability to play the basketball game becomes vestigial (since playing the game successfully does not always improve their survival). 

It's optimistic to assume that agents capable of basic survival will be able to perform learning behaviors and adapt themselves continuously to get better and better at survival. Absent a search algorithm (RL or an evolutionary fitness criteria), so it's very possible that the resulting simulation just settles into some kind of lukewarm equilibrium - agents moving around aimlessly, shuffling the ball around, doing OK at survival and some adaptation but not inventing new behaviors wholesale.

# Zookeeper

The way to circumvent the thorny question of “how do we implement survival as an objective” is to not implement it at all. Instead, we let the search procedure be guided by open-ended exploration be driven by human inputs. Human behavior encodes a vast amount of information and instinct that can't be articulated into simple language. The next stage of the ASI roadmap is to let gamers play with and guide the evolution of the agents. This will kill two birds with one stone - the long-horizon policy learning problem, and the open-ended exploration problem. I call this the **Agent Zookeeper**.

Games have the potential to generate a vast amount of cheap data containing a high degree of intelligence.

Games trigger some deep-seated reward mechanisms in our brain that make some people really want to play a game well. In first-person shooter games like CounterStrike Go or Valorant, some players will spend tens of hours hunting for glitches that give them hilarious advantages during matches. I know someone who spends hours every week practicing in a virtual shooting range, just to improve his hand-eye coordination and reaction time.  

This level of dedication is rarely seen in most people's academic or professional careers, never mind that gamers will do all of this for free because they find it personally rewarding. Gamers spend a lot of time studying opponent strategy and perfecting their "200 IQ plays", and all that intelligence would be very helpful in guiding the evolution of agents.

A well-designed game permits players to do things that the creators never intended. open-ended games like Minecraft present a great deal of opportunity for players to get very creative. In particular, asking "what-if" scenarios can really generate diverse behaviors "what if I build a completely working operating system in minecraft"? "What if I try to teleport underneath the map?" "how can I break the 'rules' of the game to my advantage?" Even in basketball, people are inventing new mini-games all the time. To pick one example, 21 is an imitation game where someone takes a shot from a particular location, and the next person has to land the same shot from the same location. Mini-games like these spur better imitation capability and exploitation of opponent's weaknesses (where is the opponent bad at taking shots from that I am good at?)

One of the emergent cultural traditions in the shooting game Valorant is that if a team is losing badly enough, they will "surrender" by challenging the winning team to a knife-only fight. Some of these behaviors are often in direct opposition to *winning*, but generate really interesting behaviors that contain glimmers of creativity, humor, and the ability to conceptualize unsual scenarios. These behaviors can be later re-purposed to do solve real problems, like devise creative strategies for winning.

[^sidenote1]:
	There is a sweet spot between the unfamiliar and the familiar that really piques human curiosity, something that youtubers like Mr. Beast have masterfully done by asking questions like ["what if I get hunted by a bounty hunter?"](https://www.youtube.com/watch?v=TQHEJj68Jew) ["What if I go through the same drive-thru 1000 times?"](https://www.youtube.com/watch?v=QxGVgXf_LNk)


There are some preliminary research projects suggesting that crowd-sourced community participation can be a powerful driver of creative solutions.  sheer diversity and creativity of images generated on ArtBreeder.com, a website in which latent vectors can be combined to form novel images like faces and buildings. You have hundreds of users simultaneously spending their free time - without any compensation - simply exploring the space because their creations are interesting or pleasing to them.

![samples from artbreeder.com, where humans guide the crossover and mutation of images. The presence of humans drives the outcomes towards interesting images - a testament to the power of human-in-the-loop search](assets/artbreeder.png)

The interface will be similar to artbreeder and its predecessor, picbreeder, in that humans can watch videos of the agents and choose which agents are combined to form new ones. Having humans guide the selection and combination of traits will accelerate the search, because humans have good mental models of what behaviors they find interesting and what happens when different behaviors are combined.

This will interact nicely with the principle of "stepping stones" - qualitative leaps in capability can come from the most unusual of places, such as the adaptation of skin cells eventually turned into vision systes. Such an interface - in which humans can choose two disparate agents and combine them into a novel agent with interesting and never-before-seen behaviors.

[^sidenote2]:
	A technical challenge that arises in the Agent Zoo is that as organisms develop longer lifespans and learns to do many different behaviors, evaluating it quickly and holistically is not possible in the span of a few minutes. 


Once lifespans are long and chaotic enough, we might begin to see a new level of adaptive behavior unlocked.

Notes from https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4027410/
four phyla (Echinodermata, Arthropoda, Mollusca and Chordata) and nine classes (sea urchins, insects, spiders, crabs, snails, octopi, fish, birds and mammals) as containing tool-using species
Many studies of sponging dolphins, tool-using birds, does not suggest a large competitive advantage to using tools, there does not appear to be strong correlation between reproductive success and ability to use tools?


Tool use in animals can be divided into “hard-wired” / stereotyped tool behaviors, and flexible/adaptive/creative behaviors that are learned 

again, we see glimmers of the hard-wired vs. adaptive learning dichotomy here. Animals that perform stereotyped tool behaviors have it baked into their genetic memory, whereas more adaptable animals acquire the ability to *learn to use tools*. this only makes sense if the lifespan is long enough, or if the environment presents itself with far more tool diversity than genetic learning can remember.


# Reproduction

To make things truly lifelong, we have to imbue the genetic information with the ability to propagate via asexual or sexual reproduction. Replication evolved because no genetic information is perfect, and continual mutation and adaptation is more likely to stick around than an unchanging genetic template concentrated in a single location.

one way to implement this would be to have human-guided search select for agents that then eventually learn to clone themselves or swap genetic information with other agents, even without human intervention.

This is not necessary when training agents in an episodic framework, but it becomes very challenging.

Paralell to the business world - what is the objective of companies?
Milton Freedman Capitalists will say it is to maximize shareholder revenue - indeed, we do see examples of companies that do this , often at great moral, environmental, and customer expense.

But if you step back, this is a narrow way of looking at the definition of “company” that doesn’t even begin to capture the broad diversity of  firms we see in real life.
But there is a cambrian explosion of companies that don’t maximize shareholder revenue - as long as they serve a customer need, the shareholders are modestly rewarded, and the world is not far worse off,the company can continue to exist in the business ecosystem. 

Frozen yogurt stands, hawker stalls, a homeopathy shop, etc.
<!-- 
In chapter 9, I suggested a “never-ending simulation” that would sustain the continued increase in complexity, as well as increasingly capable agents that can navigate that complexity. Exploring interesting solutions in that simulation would be aided in a distributed manner by human game players, motivated to inject their own creativity and problem solving skill in the rich open-world game.

 -->
Goal of this chapter: convincing case for all the intelligence aspects that are reinforced by war, because they make a species more capable at war

Longer episode adds sexual reproduction step, by which agents can meet up, swap information (“mate”), and use that to synthesize new critters.
Agents should discover that finding mates that are more “fit” tend to result in winning the game more.
Using mate selection / preferences to accelerate evolution of intelligence  (involves deception games as well to some extent)
This i
Animats have to care for their young


Leveraging Human Creativity at Massive Scale

Life is not necessarily an objective - in biology, there isn’t one thing living things optimize for, nor is there a clear distinction of what is doing the surviving. We will rely on  human-in-the-loop creativity engine at massive scale crucial for exploring an open-ended search space (greatness cannot be planned)


# Unintended Mini-Games


<how many hours do people spend playing X ? watching X on Twitch / YouTube? >




Zero-sum game: 
Gladiator. In the preparation room, an agent is given a range of weapons it can choose from, and it spends some time learning how to use it. Then it must fight the enemy agent, and develop memory for how to use the weapon.

Monetization: humans can even participate in these sorts of games, which would generate incredibly rich source of data.
The conceptualization of “Creation”

What sort of behavior would we like to see?
Additional Socially scaffolded learning
in that it involves connecting starting conditions with a desired end-state through material transformations or actions whose specifics are not immediately apparent
What environmental circumstances might lead to that behavior?
Tool use in water is less prominent than on land. Some theories: pounding actions less effective in water due to viscosity, animals need to be streamlined which limits manipulators, no tools in water column except benthic stuff
There needs to be new tools that human creators did not design beforehand. Requires a notion of “atoms” that can be grasped, glued together, re-purposed for other things. Need glue, need joining material. 


 
In chapter 9, we 
Chapter 9, next milestone is to force the tool use brain large enough to invent weapons. Chimapnzee level. For example, stacking blocks together to form a shelter or more plotting the murder of rivals. Tool use behavior are typically regarded as implicitly understanding causality (how the tool would be use) and creativity (imagining something it has not seen before). Again, we won’t plan to build in “imaging” explicitly, but rather we hope that it internally emerges in the brains by simply making the environment harder so as to force the agent to develop these capabilities.

Invent wheelness 

What to implement
Extend simulation long enough so that agents can learn to do things *during the course of their lifetime*, as opposed to some stationary policy. This is the crucial behavior of learning to. Tool use is about making do with what is in the world around you, and a certain level of adaptability to be able to understand concepts generally. Acquiring general concepts takes time, and is energetically expensive, and so organism has to live long enough to make that energy expenditure worth it.
Pepper agents with arbitrary objectives (can be in the form of constraints on their form, their environment), or a really crazy arbitrary one (e.g. another game besides Jungle football).
Thesis: as we increase the number of side objectives, all under the constraint of survival / reproduction, we can richness.


War is a form of competition amongst a species.

War combines collaboration with competition (fighitng another group), potentially with tool use. Each of these can serve as sparks to improve another element


Fire was one of the first tools we weilded. In order to wield it, we had to understand several things about it:
That it was potentially dangerous to us but could be used to protect us or as a weapon
The conditions necessary to keep it alive 

As we became more sophisticated, we assembled more complex tools.

World had to be rich enough that the benefit of understanding how tools worked was necessary to survive (and worth the energetic reward) - for isntance, a world where there is not enough resources to go around and agents dont have hard bodies.

In order to understand people, you must have armed conflict. That is the way to build theory of mind.

You can’t learn to do detective work in a world without any crime.


What happens if we give agents weapons that alter physics, like the portal guns from the game Portal? Will they evolve to understand them?

Evolutionary arms race in the cambrian era gave rise to intelligetn brains, and so warfare gives rise to empathy. But not only must we need war, we need social cooperation.

One might imagine that our brain’s ability to review past episodes of our lives or imaging situations in the future serves as a source of “supervsion signal” for adapting our behavior. Rather than learn from a single example once and discard that information, we are constantly re-visitng past information we’ve encountered and re-interpreting that data under our new understanding of the world. 

Detective and murder mystery


A well-developed theme of the plot in “Three Body Problem” is how the scientific method, the development of technologies like computing, and the rise of civilizations as a whole is fairly consistent even between civilizations that evolve separately on different planets.
The book basically argues that all advancement of civilizations is largely due to the scientific endeavor of questioning how and why the universe works the way it does. That’s research.
The plot of the book involves some aliens (Trisolarians) who live on a pretty shitty planet and decide to pack up and relocate to a different planet. Unfortunately, the nearest hospitable planet is 8 light years away, 400-years via sublight interstellar vehicles. To make things worse, it’s already inhabited by sentient, intelligent life so the Trisolarians have to launch an invasion. The foreign planet’s technology is inferior to that of the Trisolarians, but because it takes 400 years to reach that planet, the Trisolarian invaders must account for the fact that when they arrive, the foreign planet will have had 400 years to improve their own technology and weapons.

At the timescale of galactic conquest, the top priority in a space invasion is not to assassinate key figures, or stockpile resources, but rather to simply halt the enemy’s scientific progress. This can be done by tampering with scientific experiments (e.g. messing with the results of particle accelerator experiments so the invaded civilization cannot discover how to manipulate higher dimensions, build antimatter weapons, etc.). Just to be safe, the Trisolarians also try to kill mathematicians, theoretical physicsits on the foreign planet first.

Research into the present solves crime mysteries, develops technology that increases the standard of living for all humans, understands and cures diseases that have plagued people for millennia.

