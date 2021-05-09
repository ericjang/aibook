---
chapter-number: 10
title: Social Behavior
link-citations: true
reference-section-title: References
---

*Are you feeling down? Isolated? Uncertain about the future? Worried about what comes next? Then you may be suffering from … consciousness*

*-- Sarah Cooper (via Twitter)* <!-- @sarahcpr on  -->

Cooperation is when individual pieces of genetic information depend on each other for improved odds of survival. The information-synergy can be thought of as a larger piece of information -- a new life form that seeks to protect its unity. Cells in multicellular organisms, ants in a colony, and humans in a civilization all are examples of this. In this chapter we'll discuss how to extend Jungle Basketball to give rise to social behavior, and perhaps even phenomena resembling self-awareness. 

Basketball is typically a 5-v-5 sport, which is a far more exciting game than a 1-v-1 basketball. Multi-player basketball allows teams to set up "screens" (blocking an offensive player) "picks" (blocking a defensive player), "passing" to teammates, and coordinating player-to-player defenses. By extending Jungle Football to a multi-player team game, we should expect new cooperative behaviors to emerge and a higher level of play. As mentioned in the last chapter, the ultimate goal is not to play team basketball - it is to *use basketball to uncover foundational building blocks of social intelligence*.

# Level 1: Blind-Trust Cooperation

In the previous chapter, we considered "increasing adaptability within an episode" as one measure of intelligence of the agents. Let's use a similar rubric to judge social behavior: 

Level 1 agents are purely eusocial, with little flexibility in social structure: simpler creatures like ants and termites work together in near-perfect harmony: every individual has its role and cooperative behaviors pre-ordained. 

Though individuals may exhibit adaptive behavior in response to opponent behavior or environmental observations, their cooperative relationship and willingness to work with one another are hard-coded into their behavior. A simple way to implement this would be to add multiple agents to each Jungle Basketball team, and then training team-level behaviors rather than agent-level behaviors. This is more or less equivalent to a 1-v-1 game, except now each "coach agent" pupeteers 5 bodies instead of one. Researchers from OpenAI and Deepmind have already done things like this on games like DOTA and Starcraft. 

If the "coach agent" sees the observations of all 5 players, then there is no need for social communication between players, as all perception and coordination is centralized. The agents cooperate in the same way a pianist's five fingers cooperate on a keyboard, without actually socializing with one another.

If we want the agents to actually communicate with one another, the next step would be to decentralize the agents, so that agents have to learn to learn and evolve independently of their teammates. This is a harder problem that is still unsolved in the RL research community, because if an agent memorizes the behavior of its teammates and assumes them to be unchanging, that will be no longer true once their teammates update their own behavior.[^sidenote1]

[^sidenote1]:
	The non-stationary learning problem is the most challenging aspect of Multi-Agent Reinforcement Learning (RL). One idea for alleviating this problem would be to have Alice's episode contain the memory of Bob's policy being updated. Alice will then be slightly more adaptable to changes in Bob's behavior, since they are being trained for it. Learning a "Bob's rate of behavioral change” is a slightly more stationary quantity than Bob's behavior itself.

What are some emergent behaviors we can hope for? Rather than scouting the map alone for potential terrain advantages, agents can now divide-and-conquer the map, and share information with one another on potential dangers and opportunities. 

In the previous chapter I argued that sufficiently long episodes may make it worthwhile for agents to spend some time acquiring motor skills before "going to war". This capability can serve as a stepping stone to emergent "cooperative play": agents learn to practice on each other in the "warm-up" phase of the game. Agents can now practice one-on-one with each other, with their teammate simulating an opponent. Both agents improve themselves in the warm-up phase so that they can evade their opponents on the real match - it's like embedding a self-play game within a self-game. 

Suppose teammate Alice watches their teammate Bob practice, and sees Bob execute a very successful basketball maneuver. If Alice could put Bob's maneuver into her own shoes, and replicate the same maneuver, then she would have succesfully demonstrated imitation-by-observation.

 That information would be very informative to Alice from a reward learning perspective, and perhaps Alice can use that observation to learn that same maneuver. The development of mirror-neuron systems may arise if watching members of their own team is highly informative for further improvement - for instance, the ability to watch re-plays of past games. 

For instance, the development of a mirror-neuron like system might arise if an agent watches members of its own team attempt to do things, then learns which strategies work the best. This is only possible in an environment where agents have the luxury of time to watch other agents do things, and can potentially have a lot of “exploration time” early on in the game before it must compete at the task.

# Level 2: Cooperation with Deception

A certain level of "blind trust" in teammates leads to boring social activity - agents are fully cooperative and have can count on their teammates to behave in a way that benefits the team's objectives. Training agents to play cooperatively is not exactly the same as developing general, social behavior. We want to have agents that develop an awareness for how other individuals see it, and learn to communicate with other agents, not simply just play the team sport silently with ant-like devotion. 

Level 2 social animals need to be able to adapt to changing social dynamics, namely separating friend from foe. Unlike the physical world, where the environment changes fairly slowly via day-night cycles, the social context changes rapidly and are not directly observable; people and animals have to remember interactions and read subtle behavior cues to answer questions like these:

*Who is the alpha of my pack and does she like me?*

*Will this person betray my trust?*

*Does my crush like me back or am I annoying her?*

*What will happen if I barter with the enemy of my friend?* 

*How do I confront a friend about their behavior without compromising the friendship?*

Evolving a large brain to navigate around ever-changing social dynamics is very energetically expensive, but clearly worth it for humans. It probably greatly expanded our memory faculties. 

What if we remove that "blind trust"? In biology, selfish genes can lead to interesting dynamics in mate selection, where animals are incentivized to find reproductively fit partners even if they are not the most genetically adaptable. 

Mating with all parters who claim to be "the best" is a waste of resources, so a certain amount of social intelligence develops - the ensuing negotiation and performative acts creatures do to attract mates. 

If I take some of that person’s food, will they harbor a grudge towards me? If I help another individual, what might I be able to ask for in return? If they don't reciprocate, should I transact with them again?

There are simpler ways to remove blind trust without having to implement reproductive game theory. 

Two Rooms and a Boom is a game where there are two teams with opposing objectives. The catch is that each team has spies for the other team embedded in it, and the spies have to try and fulfill the other team's objectives without their own motives being known. We can use this principle to encourage our agents to build the machinery for trusting and distrusting their teammates. 

War can be interesting because there is a possibility of double-crossing, spies and betrayal. One way to implement this would be to give every agent its own set of incentives / objectives it has to fulfill, but start the game asymmetrically, where the vast majority of players are red vs. blue. 

Much like the game two rooms and a boom, each team needs to root out its spy, and the spy needs to establish contact with allies on other team (but not the spy on the opposing team). 
An important dynamic is for agents to feel a sense of fairness / reciprocity being violated - can evolve as a strong tell for an opposing player. Lack of reciprocity might be a strong tell that the agent is a spy for the other team / has competing objectives.


# Level 3: Dominance Hierarchies

Level 3 social animals are organized by dominance hierarchies, where the pecking order is not readily observed and animals must rely on more acute perception -- and memory -- of interactions. For example, assessing the social status of other individuals relative to one’s own, or remembering past interactions between individuals to judge ranking in the hierarchy. 



Potentially agents can even solve puzzles and teach each other how to solve them - imitating by demonstration.

we will now introduce the necessity for resources. Agents might have to gather and share food food, manage economy of resources in order  

Rather than squabbling over resources each time the group acquires it, the relative social rank between members can be used to settle disputes in a less costly way.

One challenge is that agents are not incentivized to survive or reproduce - they are incentivized to let their team win.


reproductive resources (access to mates)

or food resources

# Implementing Loneliness

Just as hunger is a learned bodily function that reminds us to take care of our nutritional needs, loneliness is a bodily function that takes care of our social needs. "Social pain" is the pain of rejection, and evolved to [stop behavior that would isolate animals from their social group](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3855545/). Humans are quite good at acquiring food in groups and protecting themselves against wildlife and the elements, so the biggest risk to our survival is being ostracized from the group (at which point being eaten by a predator or dying of starvation becomes more likely).

Just as we hope that internal reward mechanisms can emerge to reinforce agents during episodes, we also hope that an internal "social pain" signal and mechanisms to reinforce behavior around that signal emerges. This will allow agents to *seek out* cooperation. 

Hunger, anxiety, uncertainty, loneliness - all of these have negative connotations in our modern society, but serve as critical functions for animals to become *aware* of distressing situations that they need to avoid. Unlike a computer game, the universe is apathetic and has no over-arching optimization criteria, so life must devise its own rewards and its own reinforcement learning algorithms.


Social status is not easy to perceive by simply observing the world through eyes - one must remember the past behavior of other agents and align them with mental models of their current social standing. Doing so will drive capabilities like reasoning and perceiving theory of other agent's goals, and perceiving how other agents perceive itself.


# Self-Awareness

Once agents can *experience* hunger, anxiety, uncertainty, and loneliness, we start to veer into 

Perhaps consciousness is nothig more than the bombardment of 

Once agent Alice can perceive how other agents perceive Alice, it implicitly develops a *concept* for itself.  That same "Alice" concept ought to be re-used when reasoning about how agent Bob thinks about Alice, or how agent Carol thinks about Alice, or how Dave thinks about Alice. 

One way in which self-awareness can be selected for is if Alice needs to perform model-based reasoning with respect to opponents and teammates. "What is Eve's mental model of me, and how can I exploit that?" Such mental planning might not make sense in a 1-v-1 game, especially if the game is not running long enough for agents to build such mental models.

It's not a huge stretch to think that Alice could ask itself "what does Alice think of Alice"? 

Inevitably, someone will ask the question "if they can sense and conceptualize themselves, are they conscious?" I don't know what consciousness is, and I certainly don't think philosophers do either, so we will avoid answering that question.

Whereas an implicit understanding of oneself can be achieved via optimization at the genetic level (for instance, simply learning fine motor control achieves this), perceiving other's model of oneself is a quantity that is flexible and changing. Having to perceive important variations around a constant "Alice" 


There are a set of related capabilities here: the memory of the immediate present and the passage of time, the conceptualization of the self, the attention to relevant inputs arriving at the “self”. I don't know how these computations occur or what manipulations must go on internally for all this to fit together.


Huma-level Social intelligence requires memory. Did memory enable social intelligence, or did the demands for social intelligence refine our memory capabilities? All of these skills are deeply interwoven and probably reinforce each other. 

The capability to modify the environment and lay traps from the previous chapter can serve as a way to signal to teammates from distant locations.

The dynamics of the game become substantially more complicated - due to the presence of other learning agents in each episode, and the fact that agents are changing across iterations, there will be a lot of non-stationarity. this will depend on some infrastructure to allow the agents to learn under non-stationary environments.

Introduce some agents that look like others (need to distinguish between in group and out group)
Non-Features : still episodic RL based, and playing basketball, so there is no need for a truly open-ended simulation. 

It is about cooperation, deception, empathy, selfishness. All of these are sides of the same coin - they co-evolve together, just as evolution simultaneously produces selfish genetic information and cooperative genetic information. Yin and Yang, if you will.



https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3855545/

Just as animals bodies signal to them when they are deficient in nutrients 


So social is the mind of a human that ostracism from our communities make us physically sick and mentally unstable. 

Ostracism makes us physically sick - the body punishes us for situations that it recognizes as long-term unfavorable for our genetic survival. 


# The Evolution of Imitation

We think with words we didn’t invent - a lot of intelligence comes from our ability to imitate others, so we can replicate their successes without having to learn about reality from first principles. 

Agents that can imitate another agent (through energy expenditure).
[Evolution of the mirror neuron system](https://royalsocietypublishing.org/doi/10.1098/rstb.2009.0060#:~:text=According%20to%20this%20view%2C%20imitation,matching%20properties%20by%20mirror%20neurons)

One of the greatest boons for imitation is that agents who live in larger social communities can explore in parallel, and then teach each other very rapidly once a single agent discovers a viable strategy.



We expect communication and collaboration between organisms to eventually emere in order to more efficiently shepherd resources and perform life’s tasks. But what might drive this cooperation? What are some “mini-games” that can encourage the development of these behaviors?

Discover concepts of war and peace?   attempt to get agents to learn to use tools by introducing a wide range of resources and challenges that cannot be solved with the agent’s bodies alone. Instead, they must learn to conceptualize scenarios that they do not perceive, and plan for these hypotheticals. Contrary to prior work in reinforcement learning, we must get this “tool imagination” capability to emerge on its own as a byproduct of open-ended evolution. 

The notion that we build AGI by encouraging them to compete for survival in a brutal, harsh reality where there isn’t enough food to go around may the human reader a little bit nervous. Why do we need AI to take after the course of human evolution, full of primitive behavior and violent tendencies? Wouldn’t it be better to cooperate to build “nice” AI, that has humanity’s interests at heart and prefers peace?

We should keep in mind that the use of social competition is a means to build intelligent beings, not necessarily the end goal in itself. Just as a diplomat knows how to de-escalate conflict, a pro-social ASI needs to be able to understand the social underpinnings of high-stress situations and the mindset of anti-social humans, so that it may be most effective.

I certainly think it’s possible to convert an intelligent system into a kind one, much as we might domesticate a wolf into a golden retriever. but I cannot think of a way to build the components of an intelligent system - empathy, deduction, understanding of humans - without replicating the innumerable intelligence challenges posed by the problem of competitive survival.

It is like a yin-and-yang relationship.

training for pure team-cooperative ability lends itself to a coordinated, but boring intelligence. By adding elements of inter-team deception, agents will be forced to reckon with the motivations of agents that they have to mostly cooperate with.



[Human-level performance in 3D multiplayer games with population-based reinforcement learning](https://science.sciencemag.org/content/364/6443/859) by Jaderberg et al. is a very inspiring work showcasing promise in agents.


# Jungle Basketball in a Hall of Mirrors

one variation to challenge these creatures further is to add reflective surfaces - like playing Jungle Basketball in a hall of mirrors. At any moment, agents are constantly viewing reflections of themselves or competing agents, and have to figure out how to infer the true location of agents, distinguish themselves from enemies.

This will require Infrastructure for monitoring emergent phenomena, which will also help researchers guide the evolution. It’s likely that details of how we specify optimization objectives will lead to outcomes wedont want, but we want to be able to prune things quickly.


Predicting the Future

Philosopher discussion & thoughts on GPT-3.

http://dailynous.com/2020/07/30/philosophers-gpt-3/

By the end of Year 2, hope to get agents that rapidly adapt to rapidly shifting social dynamics, be able to trust and distrust their team members.
