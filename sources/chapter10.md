---
chapter-number: 10
title: Social Behavior
link-citations: true
reference-section-title: References
---

*Are you feeling down? Isolated? Uncertain about the future? Worried about what comes next? Then you may be suffering from … consciousness*

*-- Sarah Cooper (via Twitter)*

In chapter 7 we discussed how "life" transcends the species, the individual, the cell, and yes, even DNA. Just as how there is no "spoon" in The Matrix, there isn't really a singular "building block of life" trying to optimize for its survival. Self-preserving patterns can be encoded in genes, in multi-cellular organisms, in behavior, and in societies.

So how should we think about "cooperative behavior"? It is how two pieces of information work together to improve both their odds of preserving themselves. The information-synergy can be thought of as a new pattern that seeks to protect its unity. Cells in multicellular organisms, ants in a colony, and humans in a civilization all are examples of this. In this chapter we'll discuss how to extend Jungle Basketball to give rise to social behavior, and perhaps even phenomena resembling self-awareness. Culture is itself a sort of "information pattern" that preserves itself over time, and through the complex interactions between agents working together in teams, we may be able to start seeing this kind of behavior unfold.

Basketball is typically a 5-v-5 sport, which is a far more exciting game than a 1-v-1 basketball. Multi-player basketball allows teams to set up "screens" (blocking an offensive player) "picks" (blocking a defensive player), "passing" to teammates, and coordinating player-to-player defenses. These will require new intelligence capabilities. By extending Jungle Football to a multi-player team game, we should expect new cooperative behaviors to emerge and a higher level of play. As mentioned in the last chapter, the ultimate goal is not to play team basketball - it is to *use basketball to uncover foundational building blocks of social intelligence*.

In the previous chapter, we considered "increasing adaptability within an episode" as one measure of intelligence of individual agents. Let's use a similar rubric to outline several tiers of "social behavior":

1. Milestone 1: fixed cooperative behaviors that assume all other plays are behaving socially. This is still rich enough to lead to learning from other agents.
2. Milestone 2: ability to handle players that are behaving selfishly.
3. Milestone 3: Emergence of social hierarchies and relationships


# Milestone 1: Cooperative Learning and Adaptive Behavior

Milestone 1 agents are purely eusocial, with little flexibility in social structure: simpler creatures like ants and termites work together in near-perfect harmony: every individual has its role and cooperative behaviors pre-ordained. 

Though individuals may exhibit adaptive behavior in response to opponent behavior (see Chapter 9) or environmental observations, their cooperative relationship and willingness to work with one another are hard-coded into their behavior. A simple way to implement this would be to add multiple agents to each Jungle Basketball team, and then training team behaviors rather than agent behaviors. This is more or less equivalent to a 1-v-1 game, except now each "coach agent" pupeteers 5 bodies instead of one. Researchers from OpenAI and Deepmind have already done things like this on games like DOTA and Starcraft. 

If the "coach agent" sees the observations of all 5 players, then there is no need for social communication between players, as all perception and coordination is centralized. The agents cooperate in the same way a pianist's five fingers cooperate on a keyboard, centrally coordinated without direct communication with one another.

If we want the agents to actually communicate and socialize with one another, the next step would be to have agents act independently without access to what the other agents see and know, so that agents have to learn to learn and evolve independently of their teammates. This is a harder problem that is still unsolved in the RL research community. The reasons are somewhat technical and still an actie research topic, but basically have to do with *non-stationarity*: if an agent A memorizes the behavior of agent B and adapts its behavior around the assumption that B will remain the same, that will be cease to be true once B update their own behavior.<!-- [^sidenote1]

[^sidenote1]:
	The non-stationary learning problem is the most challenging aspect of Multi-Agent Reinforcement Learning (RL). One idea for alleviating this problem would be to have Alice's episode contain the memory of Bob's policy being updated. Alice will then be slightly more adaptable to changes in Bob's behavior, since they are being trained for it. Learning a "Bob's rate of behavioral change” is a slightly more stationary quantity than Bob's behavior itself. -->

What are some emergent behaviors we can hope for? Rather than scouting the map alone for potential terrain advantages, agents can now divide-and-conquer the map, and share information with one another on potential dangers and opportunities. 

In the previous chapter I argued that sufficiently long episodes may make it worthwhile for agents to spend some time acquiring motor skills before "going to war". This capability can serve as a stepping stone to emergent "cooperative play": agents learn to practice on each other in the "warm-up" phase of the game. Agents can now practice one-on-one with each other, with their teammate simulating an opponent. Both agents improve themselves in the warm-up phase so that they can evade their opponents on the real match - it's like embedding a self-play game within a self-game. 

Suppose teammate Alice watches their teammate Bob practice, and observes Bob execute a very successful basketball maneuver. If Alice could imagine Bob's maneuver in the first person, and replicate the same maneuver, then she would have succesfully demonstrated imitation-by-observation.

That information would be very informative to Alice from a reward learning perspective. Alice might not know exactly how to replicate the maneuver, but she would know what a correct one looked like and be able to try again and again until she got it right. The development of mirror-neuron systems may arise if watching members of their own team is highly informative for further improvement - for instance, the ability to watch re-plays of past games. 

# Multi-Generational Household

For instance, the development of a mirror-neuron like system might arise if an agent watches members of its own team attempt to do things, then learns which strategies work the best. This can be facilitated by a "multi-generational household" environment where agents don't know what to learn a priori, but have enough time to figure things out and watch other successful agents (perhaps members of a prior generation) demonstrate useful trajectories for them.

From sapolsky chapter on parenting: mothers teach babies *when* and *where* to display certain behaviors, monkeys raised without moms displayed subordination / challenge behaviors at the wrong times.

young rats in the presence of their moms do not secrete glucocorticoids in response to strong negative stimuli because they think that their moms wouldn't have allowed bad things to happen to them. in fact, they become attached to any strong stimuli when in presence of mom, even if mom is the source of the negative stimuli! this is a learning mechanism that allows them to learn early on when most stimuli are overwhelming.

# Milestone 2: Cooperation with Deception

A certain Milestone of "blind trust" in teammates leads to boring social activity - agents are fully cooperative and have can count on their teammates to behave in a way that benefits the team's objectives. Training agents to play cooperatively is not exactly the same as developing general, social behavior. We want to have agents that develop an awareness for how other individuals see it, and learn to communicate with other agents, not simply just play the team sport silently with ant-like devotion. 

Milestone 2 social animals need to be able to adapt to changing social dynamics, namely separating friend from foe. Unlike the physical world, where the environment changes fairly slowly via day-night cycles, the social context changes rapidly and are not directly observable; people and animals have to remember interactions (memory) and read subtle behavior cues (perception) to answer questions like these:

- *Who is the alpha of my pack and does she like me?*

- *Will this person betray my trust?*

- *Does my crush like me back or am I annoying her?*

- *What will happen if I trade with the enemy of my friend?* 

- *How do I confront a friend about their problematic behavior without compromising the friendship?*

Evolving a large brain to navigate around ever-changing social dynamics is very energetically expensive, but drastically improved survival rates for humans. Humans hunting in packs were able to fell wooly mammoths, exact deadly vengance on any animal or person that killed one of their pack. It probably greatly expanded our memory faculties as a side effect, along us to leverage that for other important skills. 

What if we remove that blind trust? In biology, "selfish genes" can lead to interesting dynamics in mate selection. Individuals may be incentivized to find the most reproductively fit partners even if they don't have the best genetic traits. Mating with all parters who claim to be "the best" is a waste of resources, so a certain amount of social intelligence develops - the ensuing negotiation and performative acts all sexually reproducing creatures do to attract mates. 

<!-- If I take some of that person’s food, will they harbor a grudge towards me? If I help another individual, what might I be able to ask for in return? If they don't reciprocate, should I transact with them again? -->

<!-- There are simpler ways to remove blind trust without having to implement reproductive game theory.  -->

<!-- A simple way to introduce the mechanics of agents having to evaluate each other for trustworthiness is a card game like "Two Rooms and a Boom" (TRAAB). In TRAAB, everyone starts out randomly assigned to one room, a team (red or blue), and a character. The red team wins if their "Bomber" team member is in the same room with the blue team's "President" at the end of the game. When exchanging information with other people in the room, one has to figure out who their allies and enemies are. 
 -->
<!--  The catch is that each team has spies for the other team embedded in it, and the spies have to try and fulfill the other team's objectives without their own motives being known. We can use this principle to encourage our agents to build the machinery for trusting and distrusting their teammates. 
 -->
War (or jungle basketball) is an interesting testbed for intelligence because it admits the possibility of double-crossing, spies and betrayal. One way to implement this would be to have conflicts where there are "spies" embedded within each team, who are visually indistinguishable from allies but are optimized to serve the other team. Each team needs to root out its spy, and the spy needs to establish contact and coordinate with allies on other team (but not the spy on the opposing team). 

A capability that might emerge from agents adapting to play these games is for agents to feel a sense of fairness and reciprocity being violated, as this can be a strong tell that the agent has a different set of values than the team (and may be a spy).

# Milestone 3: Social Hierarchies

When a cooperating group of individuals acquires a resource, there is often a question of how to divide it amongst its members. 



Rather than fighting over resources each time the group acquires it, the relative social rank between members can be used to settle disputes in a less costly way.

Milestone 3 social animals are organized by dominance hierarchies, where the pecking order is not readily observed and animals must rely on more acute perception -- and memory -- of interactions. For example, assessing the social status of other individuals relative to one’s own, or remembering past interactions between individuals to judge ranking in the hierarchy. 



Potentially agents can even solve puzzles and teach each other how to solve them - imitating by demonstration.

we will now introduce the necessity for resources. Agents might have to gather and share food food, manage economy of resources in order  



One challenge is that agents are not incentivized to survive or reproduce - they are incentivized to let their team win.


chimps do theory of mind - glass separating banaas https://youtu.be/ISVaoLlW104?t=5500

chimp sees another chimp through one-way or two-way glass. if the chimp knows that the dominant chimp can't see the banana, they will go for it.

chimps are only capable of theory of mind in competitive situations (not cooperative)

reproductive resources (access to mates)

or food resources

# Implementing Loneliness

Just as hunger is a learned bodily function that reminds us to take care of our nutritional needs, loneliness is a bodily function that takes care of our social needs. "Social pain" is the pain of rejection, and evolved to [stop behavior that would isolate animals from their social group](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3855545/). Humans are quite good at acquiring food in groups and protecting themselves against wildlife and the elements, so the biggest risk to the individual's survival was not being eaten by a saber-toothed tiger, but being ostracized from the group (at which point being eaten by a predator or dying of starvation becomes more likely).

Just as we hope that internal reward mechanisms can emerge to reinforce agents during episodes, we also hope that an internal "social pain" signal and mechanisms to reinforce behavior around that signal emerges. This will allow agents to *seek out* cooperation, in order to avoid social pain. 


<!-- draw a conncetion to the neurobiological software stack -->

Hunger, anxiety, uncertainty, loneliness - all of these have negative connotations in our modern society, but serve as critical functions for animals to become *aware* of distressing situations that they need to avoid. Unlike a computer game, the universe is apathetic and has no over-arching optimization criteria, so life must devise its own rewards and its own reinforcement learning algorithms.


Social status is not easy to perceive by simply observing the world through eyes - one must remember the past behavior of other agents and align them with mental models of their current social standing. Doing so will drive capabilities like reasoning and perceiving theory of other agent's goals, and perceiving how other agents perceive itself.

# Is The Negative Stuff Necessary?

The notion that we build AGI by encouraging them to compete for survival in a brutal war and establish dominance hierarchies when there isn’t enough food to go around may the reader a little bit nervous. Why do we need AI to take after the course of human evolution, full of primitive behavior and violent tendencies? Why do we need to yoke them with things like loneliness? Wouldn’t it be better to cooperate to build “nice” AI, that has humanity’s interests at heart, prefers peace, and is incapable of feeling lonely?

That sounds nice, but "peace", like "hot dogs" and "sandwiches" is a slippery concept for any being to understand. In World-War II, many proponents of dropping the Atomic bomb on Japan genuinely believed that it was the quickest solution to world peace that resulted in the fewest human casualties. Also, we should keep in mind that the use of social intelligence is a means to build intelligent beings, not necessarily the end goal in itself. Just as a diplomat knows how to de-escalate conflict, a pro-social ASI needs to be able to understand the social underpinnings of high-stress situations and the mindset of anti-social humans, so that it may be most effective with interfacing with humans.

Sapolsky chapter on morality: sociopaths have higher pain tolerance - lends some evidence to the fact that maybe we do want our agents to be able to feel pain, so that they may develop empathy.

I certainly think it’s possible to convert an intelligent system into a kind one, much as we might domesticate a wolf into a golden retriever. but I cannot think of a way to build the components of an intelligent system - empathy, deduction, understanding of humans - without replicating the innumerable intelligence challenges posed by the problem of competitive survival. At the very least, it is like trying to define "yin" without the "yang": an agent that understands peace must also understand its complement.

training for pure team-cooperative ability lends itself to a coordinated, but boring intelligence. By adding elements of inter-team deception, agents will be forced to reckon with the motivations of agents that they have to mostly cooperate with.


# Self-Awareness

<!-- discuss default mode network and its role in self image and depression / anxiety -->

Once agents can *experience* hunger, anxiety, uncertainty, and loneliness, we start to veer into 

Perhaps consciousness is nothig more than the bombardment of 

Once agent Alice can perceive how other agents perceive Alice, it implicitly develops a *concept* for itself.  That same "Alice" concept ought to be re-used when reasoning about how agent Bob thinks about Alice, or how agent Carol thinks about Alice, or how Dave thinks about Alice. 

One way in which self-awareness can be selected for is if Alice needs to perform model-based reasoning with respect to opponents and teammates. "What is Eve's mental model of me, and how can I exploit that?" Such mental planning might not make sense in a 1-v-1 game, especially if the game is not running long enough for agents to build such mental models.

It's not a huge stretch to think that Alice could ask itself "what does Alice think of Alice"? 

Inevitably, someone will ask the question "if they can sense and conceptualize themselves, are they conscious?" I don't know what consciousness is, and I certainly don't think philosophers do either, so we will avoid answering that question.

Whereas an implicit understanding of oneself can be achieved via optimization at the genetic Milestone (for instance, simply learning fine motor control achieves this), perceiving other's model of oneself is a quantity that is flexible and changing. Having to perceive important variations around a constant "Alice" 

There are a set of related capabilities here: the memory of the immediate present and the passage of time, the conceptualization of the self, the attention to relevant inputs arriving at the “self”. I don't know how these computations occur or what manipulations must go on internally for all this to fit together.


Huma-Milestone Social intelligence requires memory. Did memory enable social intelligence, or did the demands for social intelligence refine our memory capabilities? All of these skills are deeply interwoven and probably reinforce each other. 

The capability to modify the environment and lay traps from the previous chapter can serve as a way to signal to teammates from distant locations.

The dynamics of the game become substantially more complicated - due to the presence of other learning agents in each episode, and the fact that agents are changing across iterations, there will be a lot of non-stationarity. this will depend on some infrastructure to allow the agents to learn under non-stationary environments.

Introduce some agents that look like others (need to distinguish between in group and out group)
Non-Features : still episodic RL based, and playing basketball, so there is no need for a truly open-ended simulation. 

It is about cooperation, deception, empathy, selfishness. All of these are sides of the same coin - they co-evolve together, just as evolution simultaneously produces selfish genetic information and cooperative genetic information. Yin and Yang, if you will.



https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3855545/

Just as animals bodies signal to them when they are deficient in nutrients 


So social is the mind of a human that ostracism from our communities make us physically sick and mentally unstable. 

Ostracism makes us physically sick - the body punishes us for situations that it recognizes as long-term unfavorable for our genetic survival. 

<!-- TODO: move the language and thought contents here? -->

social learning is inextricably linked with general skills like imitation, language.

Just as cells in multi-cellular organisms need to develop intelligent coordination abilities (nervous systems) and specialize (immune cells, blood cells), so do individuals in a highly social group. Once individuals are smart enough to do okay at surviving on their own, the remainder of intelligence will be highly dependent on social evolution, passing on knowledge to future generation, and "standing on the shoulders of giants" (as Isaac Newton said)


# The Evolution of Imitation

We think with words we didn’t invent - a lot of intelligence comes from our ability to imitate others, so we can replicate their successes without having to learn about reality from first principles. 

Agents that can imitate another agent (through energy expenditure).
[Evolution of the mirror neuron system](https://royalsocietypublishing.org/doi/10.1098/rstb.2009.0060#:~:text=According%20to%20this%20view%2C%20imitation,matching%20properties%20by%20mirror%20neurons)

One of the greatest boons for imitation is that agents who live in larger social communities can explore in parallel, and then teach each other very rapidly once a single agent discovers a viable strategy.

mirror test involves putting a small sticker on some animal's forhead, and see if they investigate the new, unknown marker by bringing up their own finger (or trunk in the case of elephants)


We expect communication and collaboration between organisms to eventually emere in order to more efficiently shepherd resources and perform life’s tasks. But what might drive this cooperation? What are some “mini-games” that can encourage the development of these behaviors?

Discover concepts of war and peace?   attempt to get agents to learn to use tools by introducing a wide range of resources and challenges that cannot be solved with the agent’s bodies alone. Instead, they must learn to conceptualize scenarios that they do not perceive, and plan for these hypotheticals. Contrary to prior work in reinforcement learning, we must get this “tool imagination” capability to emerge on its own as a byproduct of open-ended evolution. 




[Human-Milestone performance in 3D multiplayer games with population-based reinforcement learning](https://science.sciencemag.org/content/364/6443/859) by Jaderberg et al. is a very inspiring work showcasing promise in agents.


Theory of mind - do you know what information another agent has, but you have?


# Jungle Basketball in a Hall of Mirrors

one variation to challenge these creatures further is to add reflective surfaces - like playing Jungle Basketball in a hall of mirrors. At any moment, agents are constantly viewing reflections of themselves or competing agents, and have to figure out how to infer the true location of agents, distinguish themselves from enemies.

This will require Infrastructure for monitoring emergent phenomena, which will also help researchers guide the evolution. It’s likely that details of how we specify optimization objectives will lead to outcomes wedont want, but we want to be able to prune things quickly.


Predicting the Future

Philosopher discussion & thoughts on GPT-3.

http://dailynous.com/2020/07/30/philosophers-gpt-3/

By the end of Year 2, hope to get agents that rapidly adapt to rapidly shifting social dynamics, be able to trust and distrust their team members.
