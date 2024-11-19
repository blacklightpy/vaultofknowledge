> [!summary]
> For ease of use, I can agree that using a graph library is better than building my own. **Boost::Graph** is a good choice.

I've been wondering about what data structure a family tree would be best represented in, and how large it will be for a few generations. After a while of thinking, I figured out that there is no specific formula, and it depends on how many couples choose to intermarry. Unless there are an infinite number of parents, each couple cannot have completely separate family lines.

**Note:** An interesting thought, I think calculating the complete human family tree would take terabytes of data assuming about 150 bytes of data per record of the database and 190 billion humans ever to have lived on Earth.
# Premise
These are the generations (except great-great-grandparents) up to which I'm interested in calculating. Most likely I won't be able to complete all the data, but at least I can try.

- Their Parents (Can add later if available) \[They would be in 1800s, assuming everyone lives to 100, and have kids at 30\] \[\Strangely, I figured out my dad was born when grandpa was 47\]
- Their Parents (Their siblings if available)
- Grandparents (And their siblings)
- Parents (And their siblings)
- Me

I will also be including cousins, their parents, and all of their parents, and so on.
# How I tried to come at a formula for the number of members in a single family for 'n' generations
## Model 1: Start counting from the top (ancestor along a parent of a specific gender)
At first, I tried starting from the parents of grandparents (and assumed an X for their siblings). I did not realize I was only considering one of my parents' grandparents, and I was thinking along my father's family side, since that's the only side I knew the name of a great-grandparent.

But this isn't an issue in principle, as we have to start somewhere, and apparently, anywhere would do just fine. We just have to model from there, and therefore choosing a right spot can come in handy. Ideally this model can find out all the children, siblings and ancestors from any individual.

So, I put 2 for the number of great-grandparents (or Gen 4, Gen 1 being my generation), and X for the number of siblings each of them had. So Gen 4 would have 2+2X members (2X because both of them had X siblings). *(As I've stated below, Including the spouses of the siblings, Gen 4 will have 2+2(2X) members).*

Next, I went down to their children, and I assumed they would have Y children.

> **NOTE:** X would be the number of children (siblings) in Gen 4, Y would be the same number of Gen 3, Z would be that for Gen 2 and N would be the number of siblings for Gen 1.

So, the number of members in Gen 3 would be *(oops, I realized my mistake, and I'll be adding corrections as I write here)*: (1 + 2X)Y *(I first calculated it as 2+2X, but really, both father and mother doesn't have separate number of children, but in case of siblings, there are X on each side, and we didn't count their spouses, so 2X is valid.)*

> Please remember BODMAS, because I don't want to make the symbols look weird by using too many brackets

The total number of people will be: 2+2(2X) + (1+2X)Y
I will refactor it as {2\[2(1+X)-1\]} + \[2(1+X)\-1\]Y    -> \[2(1+X) is better than 2+2X for the number of people by modelling, and also when considering spouses, it becomes 2\[2(1+X)-1\] because the couple we started with to get the two sides are already married! Amazing how genetic binding is expressed mathematically.\]

This simplifies to 2 + 4X + Y + 2XY (I'll put them in brackets as (2 + Y)+(4X + 2XY) to group parents and their kids together.)

Since they will marry and have children *(again realizing the effects of that mistake, and correcting it)*, they will then have Z children each, so the number of members in Gen 2 would be (1+2X)YZ *(I also multiplied the number of Gen 3 members by 2 to include for their spouses before multiplying by Z to get the number of children, without remembering that children only have to be calculated for every pair of parents, not for each parent.)*

The total number of Gen 3 people due to family expansion would be 2\[(2 + Y)+(4X + 2XY)\].
The total number of people upto Gen 4 people due to family expansion would be 2(2+4X).
The total number of people will be 2(2+4X) + 2\[(2 + Y)+(4X + 2XY)\] + (1+2X)YZ.

This simplifies to: 8 + 16X + 2Y + 4XY + YZ + 2XYZ
I can group them as 2{\[2 + Y + Z\] + \[4X + 2XY + 2XYZ\]}

Coming to Gen 2, we can use the same method and get the number of children.
The number of children will be (1+2X)YZN

Before calculating the total number of members, one thing I noticed here is that my attempts to calculate backwards to the parents of the spouses are flawed, because then I'll have to consider their siblings and their spouses' and children's family trees too. But that in mind, I can stop this section, and maybe I should remove the multiplier to the number of parents since I don't want to be taking note of the parents of spouses.

I guess I could keep them but then just avoid listing the chains of siblings of spouses.
## Model 2: Starting at the bottom

When starting at the bottom, I can still choose include my cousins, just as I have included the siblings of my grandparents.

And when going upwards, the general principle is that we do not come down. Or, we could come down, but without going back up again.

The numbers obtained in both ways won't match up though for obvious reasons, as the tracks of exploration will turn out different.

## Model 3: Going up and down
This was what I thought the real answer was when I started writing this article, only to later realize that I had made a minor mistake. In the end, going up and down traverses both up and down, as well as towards the sides outward going up and down in a zigzag motion.

Going up and down will only end if you have enough data, and people intermarry well enough. That may not be ideal, and hence won't be possible with any real world data.
# Conclusion
Don't aim for a perfect family tree.

But rather, impose any these two limits:
- Go only in one direction (for minimalism)
- If you do go in the opposite direction from where you started, don't explore the chains of siblings, as such a traversal will end up in an infinite loop (for maximalism)
# Data Structure
I sketched a data structure to connect each person with their relationships to form a full family tree while I was sleepy. Here's how it is:

```C++
class Person {
	std::string identity;
	
	enum parent_type {father, mother, lab-grown};
	enum guardian_type {step_father, step_mother, caretaker};
	enum social_relationship {married, unmarried_with_baby};
	enum biological_sex {male, female, intersex};
	enum gender {male, female, transgender, non-binary};
	
	std:vector<Person> siblings;
	std::vector<std::map<Person, Person::parent_type>> parent;
	std::vector<std::map<Person, Person::guardian_type>> guardians; // Guardians overrides parents as caretakers
	std::vector<std::map<Person, Person::social_relationship>> spouses; // Spouse can be married or unmarried with baby
	std::vector<std::map<Person, Person>> children; // affiliated Person must be a spouse
	std::vector<Person> wards;
	
public:
	Person(identity, biological_sex, gender);
	
	add_sibling(Person var_sibling);
	add_parent(Person var_parent, parent_type pt);
	add_guardian(Person var_guardian, guardian_type gt);
	add_spouse(Person var_spouse, social_relationship sr); // if added spouse already exists as unmarried, modify them as married
	add_children(Person var_child, Person var_spouse); // If spouse isn't in Person::spouses, add them there.
	add_ward(Person var_ward);
	
	delete_sibling(Person var_sibling);
	delete_parent(Person var_parent);
	delete_spouse(Person var_spouse);
	delete_children(Person var_child);
	delete_ward(Person var_ward);
	
	modify_parent(Person var_parent, parent_type pt);
	modify_parent_type(Person var_parent, parent_type pt);
	modify_guardian(Person var_guardian, guardian_type gt);
	modify_guardian_type(Person var_guardian, guardian_type gt);
	modify_spouse(Person var_spouse, social_relationship sr);
	modify_child(Person var_child, Person var_spouse);
}
```
# Closing Thoughts
After going through some StackOverflow discussions on the topic, I think it's best to use **Boost::Graph** than code up my own data structure and functions.

The family tree is a [[Organized Knowledge - Legacy/Science and Engineering/Mathematics/Computer Science/Data Structures/Graphs|graph]] in any case.