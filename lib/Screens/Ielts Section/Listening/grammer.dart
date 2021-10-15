import 'package:esooul/Widgets/header.dart';
import 'package:flutter/material.dart';

import '../IELTS Home/ielts_widget.dart';

class Grammer extends StatefulWidget {
  const Grammer({Key? key}) : super(key: key);

  @override
  _GrammerState createState() => _GrammerState();
}

class _GrammerState extends State<Grammer> {
String bullet="\u2022";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
          child: Column(
        children: [
          Header(btntext: 'IELTS grammer'),
          Container(
            // height: MediaQuery.of(context).size.height *.27,

            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                // grammerAndVocabularyCard(context, 'assets/png/listeningGrammer.png',"IELTS Listening Grammer"),
                // grammerAndVocabularyCard(context,'assets/png/writingGrammer.png', 'IELTS Writing Grammer'),
                // grammerAndVocabularyCard(context,'assets/png/readingGrammer.png', 'IELTS Reading Grammer'),
                // grammerAndVocabularyCard(context,'assets/png/speakingGrammer.png', 'IELTS Speaking Grammer'),

                Container(
                    // color: Colors.amber,
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * .67,
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .02,
                          ),
                          Text(
                            "IELTS test sections Listening Preparation help",
                            style: TextStyle(color: Color(0xff196C7E)),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * .02,
                          ),
                          myHeading(context, 'Grammar'),
                          myHeading(context, 'Articles:'),
                          myText(context,
                              'In English there are three articles: a, an, and the. Articles are used before nouns or noun equivalents and are a type of adjective. The definite article (the) is used before a noun to indicate that the identity of the noun is known to the reader. The indefinite article (a, an) is used before a noun that is general or when its identity is not known. There are certain situations in which a noun takes no article.'),
                          myText(context,
                              'As a guide, the following definitions and table summarize the basic use of articles. Continue reading for a more detailed explanation of the rules and for examples of how and when to apply them.'),
                          myHeading(context, 'Definite article'),
                          myHeading(context, ''),
                          myText(context,
                              'the (before a singular or plural noun)'),
                          myHeading(context, 'Indefinite article'),
                          myText(context,
                              'a (before a singular noun beginning with a consonant sound)'),
                          myText(context,
                              'an (before a singular noun beginning with a vowel sound)'),
                          myText(context,
                              'Count nouns - refers to items that can be counted and are either singular or plural'),
                          myText(context,
                              'Non-count nouns - refers to items that are not counted and are always singular'),
                          snapshot(context, "assets/png/grammer1.png"),
                          myText(context,
                              'For the purposes of understanding how articles are used, it is important to know that nouns can be either count (can be counted) or noncount (indefinite in quantity and cannot be counted). In addition, count nouns are either singular (one) or plural (more than one). Noncount nouns are always in singular form.'),
                          myText(context,
                              'For example, if we are speaking of water that has been spilled on the table, there can be one drop (singular) or two or more drops (plural) of water on the table. The word drop in this example is a count noun because we can count the number of drops. Therefore, according to the rules applying to count nouns, the word drop would use the articles a or the.'),
                          myText(context,
                              'However, if we are speaking of water in general spilled on the table, it would not be appropriate to count one water or two waters -- there would simply be water on the table. '),
                          myText(context,
                              'However, if we are speaking of water in general spilled on the table, it would not be appropriate to count one water or two waters -- there would simply be water on the table. Water is a noncount noun. Therefore, according to the rules applying to noncount nouns, the word water would use no article or the, but not a.'),
                          myText(context,
                              'Following are the three specific rules which explain the use of definite and indefinite articles.'),
                          myHeading(context,
                              'Rule #1 - Specific identity not known: Use the indefinite article a or an only with a singular count noun whose specific identity is not known to the reader. Use a before nouns that begin with a consonant sound, and use an before nouns that begin with a vowel sound.'),
                          bulletCard(context,
                              'Use the article a or an to indicate any non-specified member of a group or category.'),
                          myText(context, 'I think an animal is in the garage'),
                          myText(context, 'That man is a scoundrel.'),
                          myText(context, 'We are looking for an apartment.'),
                          bulletCard(context,
                              'Use the article a or an to indicate one in number (as opposed to more than one).'),
                          myText(context, 'I own a cat and two dogs.'),
                          bulletCard(context,
                              'Use the article a before a consonant sound, and use an before a vowel sound.'),
                          myText(context, 'a boy, an apple'),
                          myText(context,
                              '◊ Sometimes an adjective comes between the article and noun:'),
                          myText(context, 'an unhappy boy, a red apple'),
                          bulletCard(context,
                              'The plural form of a or an is some. Use some to indicate an unspecified, limited amount (but more than one).'),
                          myText(context, 'an apple, some apples'),
                          myHeading(context,
                              'Rule #2 - Specific identity known: Use the definite article the with any noun (whether singular or plural, count or noncount) when the specific identity of the noun is known to the reader, as in the following situations:'),
                          bulletCard(context,
                              'Use the article the when a particular noun has already been mentioned previously.'),
                          myText(context,
                              'I ate an apple yesterday. The apple was juicy and delicious.'),
                          bulletCard(context,
                              'Use the article the when an adjective, phrase, or clause describing the noun clarifies or restricts its identity.'),
                          myText(context,
                              'The boy sitting next to me raised his hand.'),
                          myText(
                              context, 'Thank you for the advice you gave me.'),
                          bulletCard(context,
                              'Use the article the when the noun refers to something or someone that is unique.'),
                          myText(context, 'the theory of relativity'),
                          myText(context, 'the 2003 federal budget'),
                          myHeading(context,
                              'Rule #3 - All things or things in general: Use no article with plural count nouns or any noncount nouns used to mean all or in general.'),
                          myText(context,
                              'Trees are beautiful in the fall. (All trees are beautiful in the fall.)'),
                          myText(context,
                              'He was asking for advice. (He was asking for advice in general.)'),
                          myText(context,
                              'I do not like coffee. (I do not like all coffee in general.)'),
                          myHeading(context,
                              'Additional Information Regarding the Use of Articles'),
                          bulletCard(context,
                              'When indicating an unspecified, limited amount of a count or noncount noun, use some. My cousin was seeking some advice from a counselor (not advice in general or advice about everything, but a limited amount ofadvice).'),
                          myText(context,
                              'I would love some coffee right now (not coffee in general, but a limited amount of coffee).'),
                          myText(context,
                              'We might get rain tomorrow. Some rain would be good for the crops (a certain amount of rain, as opposed to rain in general).'),
                          myText(context,
                              'There are some drops of water on the table (a limited number, but more than one drop).'),
                          bulletCard(context,
                              'Noncount nouns are those which usually cannot be counted. Following are some common examples:'),
                          myText(context,
                              '◊ Certain food and drink items: bacon, beef, bread, broccoli, butter, cabbage, candy, cauliflower, celery, cereal, cheese, chicken, chocolate, coffee, corn, cream, fish, flour, fruit, ice cream, lettuce, meat, milk, oil, pasta, rice, salt, spinach, sugar, tea, water, wine, yogurt'),
                          myText(context,
                              '◊ Certain nonfood substances: air, cement, coal, dirt, gasoline, gold, paper, petroleum, plastic, rain, silver, snow, soap, steel, wood, wool'),
                          myText(context,
                              '◊ Most abstract nouns: advice, anger, beauty, confidence, courage, employment, fun, happiness, health, honesty, information, intelligence, knowledge, love, poverty, satisfaction, truth, wealth'),
                          myText(context,
                              '◊ Areas of study: history, math, biology, etc.'),
                          myText(context,
                              '◊ Sports: soccer, football, baseball, hockey, etc.'),
                          myText(context,
                              '◊ Languages: Chinese, Spanish, Russian, English, etc.'),
                          myText(context,
                              '◊ Other: clothing, equipment, furniture, homework, jewelry, luggage, lumber, machinery, mail, money, news, poetry, pollution, research, scenery, traffic, transportation, violence, weather, work'),
                          myHeading(context,
                              'Geographical names are confusing because some require the and some do not.'),
                          myText(context,
                              '◊ Use the with: united countries, large regions, deserts, peninsulas, oceans, seas, gulfs, canals, rivers, mountain ranges, groups of islands'),
                          myText(context, 'the Gobi Desert '),
                          myText(context, 'the United Arab Emirates '),
                          myText(context, 'the Sacramento River the Aleutians'),
                          myText(context,
                              '◊ Do not use the with: streets, parks, cities, states, counties, most countries, continents, bays, single lakes, single mountains, islands'),
                          myText(context, 'Japan'),
                          myText(context, 'Chico'),
                          myText(context, 'Mt. Everest'),
                          myText(context, 'San Francisco Bay'),
                          myHeading(context, 'Examples of the Use of Articles'),
                          myText(context,
                              'I do not want a gun in my house (any gun).'),
                          myText(context,
                              'The gun is in his closet (implies there is a specific gun).'),
                          myText(context,
                              'I am afraid of guns (all guns in general).'),
                          myText(context,
                              'She sent me a postcard from Italy (an unspecific postcard - not a letter, not an e-mail).'),
                          myText(context,
                              'Its the postcard that I have in my office (one specific postcard).'),
                          myText(context,
                              'Getting postcards makes me want to travel (any postcard in general).'),
                          myText(context, 'I have a dog (one dog).'),
                          myText(context,
                              'The dog is very friendly (the dog that I have already mentioned).'),
                          myText(context,
                              'Dogs make great pets (dogs in general).'),
                          myText(context,
                              'Greta needs furniture in her apartment (furniture is a noncount noun). She is going to select the furniture that she needs (the specific furniture that she needs). She hopes to find some furniture this weekend (an unspecified limited amount of furniture).'),
                          myText(context,
                              'We are going to see the Statue of Liberty this weekend (the only Statue of Liberty).'),
                          myHeading(context, 'Comparisons'),
                          myHeading(context,
                              'Comparative and Superlative Adjectives'),
                          myText(context,
                              'Being able to compare and contrast data is an essential skill for IELTS writing, especially in '),
                          myText(context,
                              'Task 1.  Comparatives and superlatives are one common way to do this.'),
                          myText(context,
                              'Comparatives are used to compare two things:'),
                          myText(context, 'Leopards are faster than tigers.'),
                          myText(context,
                              'Superlatives are used to compare one thing against a group of others:'),
                          myText(context,
                              'The leopard is the largest of the four big cats.'),
                          myText(context,
                              'Here are the basics of how they are formed:'),
                          snapshot(context, "assets/png/grammer2.png"),
                          myHeading(context, 'Other Important Language'),
                          myText(context,
                              'Comparatives and superlatives are useful to compare and contrast, but they wont be enough.'),
                          myText(context,
                              'Here are some other useful words and structures:'),
                          myHeading(context, 'Transitions'),
                          bulletCard(context,
                              'The Middle East produces high levels of oil; however, Japan produces none.'),
                          bulletCard(context,
                              'The USA produces large amounts of natural gas.  In contrast, South Korea produces none.'),
                          bulletCard(context,
                              'European countries make great use of solar power.  On the other hand, most Asian countries us this method of power generation very little.'),
                          myHeading(context, 'Subordinating Conjunctions'),
                          bulletCard(context,
                              'The Middle East produces high levels of oil, whereas / while Japan produces none.'),
                          bulletCard(context,
                              'Whereas / While the Middle East produces high levels of oil, Japan produces none.'),
                          bulletCard(context,
                              'Although the Middle East produced 100 tons oil, Japan produced none.'),
                          myHeading(context, 'Other Structures'),
                          bulletCard(context,
                              'Developing countries are more reliant on alternative energy production than developed countries.'),
                          bulletCard(context,
                              'Solar power accounts for far less of the total energy production than gas or coal does.'),
                          bulletCard(context,
                              'Hydropower is not as efficient as wind power.'),
                          bulletCard(context,
                              'Like Japan, South Korea does not produce any natural gas.'),
                          bulletCard(context,
                              'The Middle East produces twice as much oil as Europe.'),
                          bulletCard(context,
                              'Western countries consume three times more oil than the Middle East.'),
                          bulletCard(context,
                              'Russia consumes slightly more oil than Germany.'),
                          bulletCard(context,
                              'The UAE produced the same amount of oil as Saudi Arabia.'),
                          myHeading(context, 'Using Approximate Data'),
                          myText(context,
                              'When you compare and contrast, you also need to learn phrases so you can refer to data that is not exact.'),
                          myText(context, 'For example:'),
                          snapshot(context, "assets/png/grammer3.PNG"),
                          myHeading(context,
                              'Compare and Contrast Language Practice'),
                          myText(context,
                              'Look at the table below.  What is being compared?'),
                          myText(context,
                              'Natural Gas Consumption and Production, 2001'),
                          snapshot(context, "assets/png/grammer4.png"),
                          myHeading(context, '- Conjunctions'),
                          myText(context, 'Conjunctions are parts of speech that connect words, phrases, clauses, or sentences. There are three kinds of conjunctions: coordinating, paired, and subordinating.'),
                          myText(context, 'For more information about conjunctions, also see these webpages:'),
                          bulletCard(context,'Compound Sentences,'),
                          bulletCard(context,'Varying Sentence Structure, and'),
                          bulletCard(context,'Comma Basics.'),
                          myText(context, 'Coordinating conjunctions connect words or phrases that serve the same grammatical purpose in a sentence. There are seven main coordinating conjunctions in English, which form the acronym FANBOYS:'),
                          myText(context, 'F: for: The teachers were frustrated, for the school had cut funding for all enrichment programs.*'),
                          myText(context, 'A: and: In this course, I will write a literature review, a case study, and a final paper.**'),
                          myText(context, 'N: nor: The students did not complete their homework, nor did they pass the test.'),
                          myText(context, 'B: but: The study is several years old but still valuable to this study.'),
                          myText(context, 'O: or: At the end of the class, the students can choose to write an essay or take a test.'),
                          myText(context, 'Y: yet: The patient complained of chronic pain, yet she refused treatment.'),
                          myText(context, 'S: so: I have only been a nurse for one year, so I have little experience with paper charting.'),
                          myText(context, '* "For" is rarely used as a conjunction in modern English.'),
                          myText(context, '** When the conjunctions "and" and "or" connect three or more words or phrases, use a serial comma to separate items in the series. '),
                          myText(context, 'Transitional words such as "however" and "therefore" can also function as conjunctions:'),
                          bulletCard(context, 'The authors agreed on the prevalence of the problem; however, they disagreed on the problem’s cause.'),
                          bulletCard(context, 'Several employees complained about the new policies, and therefore, the manager held an all-staff meeting to address their concerns.'),
                          myText(context, 'Paired conjunctions consist of two words or phrases that help make a point or establish alternatives. Although paired conjunctions can be helpful in structuring a sentence, they can also make sentences wordier than necessary, so use these conjunctions sparingly.'),
                          myText(context, 'both…and'),
                          bulletCard(context, 'The project will require significant investments of both time and money.'),
                          bulletCard(context, 'Both the students and the teachers were satisfied with the pilot program.'),
                          myText(context,'Note: When two subjects are connected by "both…and," use a plural verb (such as "are" or "were").'),

                          myText(context, 'not only…but also'),
                          bulletCard(context, 'Students who did not complete the assignment received not only a poor grade but also a warning from the teacher.'),
                          bulletCard(context, 'Not only did the student include full sentences from the source without using quotation marks, but he also failed to properly cite paraphrased material.'),

                          myText(context, 'either…or'),
                          bulletCard(context, 'Either the students were unprepared or the assessment was poorly written.'),
                          bulletCard(context, 'Participants in the survey could either choose from a list of possible answers or write in their own responses.'),

                          myText(context, 'neither…nor'),
                          bulletCard(context, 'Students who did not complete the project received neither praise nor rewards.'),
                          bulletCard(context, 'The staff neither followed the new policy nor asked for clarification.'),

                          myText(context, 'Subordinating conjunctions join a subordinate clause to a main clause and establishes a relationship between the two. There are many subordinating clauses, but here are some of the most common:'),
                          bulletCard(context,'after'),
                          bulletCard(context,'although'),
                          bulletCard(context,'as much as/as soon as/as long as'),
                          bulletCard(context,'as though'),
                          bulletCard(context,'because'),
                          bulletCard(context,'before'),
                          bulletCard(context,'how'),
                          bulletCard(context,'if'),
                          bulletCard(context,'in order to/in order that'),
                          bulletCard(context,'once'),
                          bulletCard(context,'since'),
                          bulletCard(context,'than'),
                          bulletCard(context,'that'),
                          bulletCard(context,'though'),
                          bulletCard(context,'unless'),
                          bulletCard(context,'until'),
                          bulletCard(context,'when/whenever'),
                          bulletCard(context,'where/wherever'),
                          bulletCard(context,'whether'),
                          bulletCard(context,'while'),
                          myText(context, 'There are two ways to structure a sentence using a subordinating conjunction:'),
                          myHeading(context,'Main clause + subordinate clause'),
                          bulletCard(context,'The teacher administered the test after giving instructions.'),
                          bulletCard(context,'The author must avoid bias if she wants to maintain a scholarly tone.'),
                          bulletCard(context,'I will turn in this assignment at midnight whether or not I complete it.'),
                          myHeading(context, 'Subordinate clause + , + main clause'),
                          bulletCard(context,'After giving instructions, the teacher administered the test.'),
                          bulletCard(context,'If she wants to maintain a scholarly tone, the author must avoid bias.'),
                          bulletCard(context,'Whether or not I complete this assignment, I will turn it in at midnight.'),

                          myText(context, '"That" has a few different functions in English. This can lead to confusion because some instances of "that" are more optional than others in academic writing.'),
                          myText(context, 'One important use of "that" is for embedding (inserting) a certain type of dependent clause called a noun clause into an independent clause. Frequently, such "that" clauses serve as the direct object of a reporting verb (such as found, reported, posited, argued, claimed, maintained, and hypothesized) to introduce a paraphrase, summary, or quotation.'),
                          Row(
      children: [
        Wrap(
          children: [
            Text(
              'Key:',
              style: TextStyle(color: Colors.black, fontSize: 10),
            ),
             Text(
              'Yellow, bold',
              style: TextStyle(color: Colors.black, fontSize: 10,backgroundColor: Colors.yellow),
            ), Text(
              ' = subject;',
              style: TextStyle(color: Colors.black, fontSize: 10),
            ), Text(
              'green, underline ',
              style: TextStyle(color: Colors.black, fontSize: 10,backgroundColor: Colors.green),
            ), Text(
              ' = verb;',
              style: TextStyle(color: Colors.black, fontSize: 10),
            ), Text(
              'blue, italics ',
              style: TextStyle(color: Colors.black, fontSize: 10,backgroundColor: Colors.cyan),
            ), Text(
              '= object',
              style: TextStyle(color: Colors.black, fontSize: 10),
            ),
          ],
        ),
        
      ],
    ), 
    
    
                          myText(context, 'For example,'),
    
    Row(
      children: [
        Wrap(
          children: [
            Text('$bullet   ',style: TextStyle(color: Colors.black),),
             
             Text(
              'Smith (2015)',
              style: TextStyle(color: Colors.black, fontSize: 10,backgroundColor: Colors.yellow),
            )
            , Text(
              ' reported',
              style: TextStyle(color: Colors.black, fontSize: 10,backgroundColor: Colors.green),
            ), Text(
              'that more research was necessary.',
              style: TextStyle(color: Colors.black, fontSize: 10,backgroundColor: Colors.cyan),
            ),
          ],
        ),
        
      ],
    ),
    Row(
      children: [
        Wrap(
          children: [
            Text('$bullet   ',style: TextStyle(color: Colors.black),),
             
             Text(
              'Smith (2015)',
              style: TextStyle(color: Colors.black, fontSize: 10,backgroundColor: Colors.yellow),
            )
            , Text(
              '= subject',
              style: TextStyle(color: Colors.black, fontSize: 10,),
            ), 
          ],
        ),
        
      ],
    ),

    Row(
      children: [
        Wrap(
          children: [
            Text('$bullet   ',style: TextStyle(color: Colors.black),),
    
            Text(
              ' reported',
              style: TextStyle(color: Colors.black, fontSize: 10,backgroundColor: Colors.green),
            ), Text(
              '= verb',
              style: TextStyle(color: Colors.black, fontSize: 10),
            ),
          ],
        ),
        
      ],
    ),
    Row(
      children: [
        Container(
          width:  MediaQuery.of(context).size.width *.9,
          child: Wrap(
            children: [
              Text('$bullet   ',style: TextStyle(color: Colors.black),),
              
              Text(
                'that more research was necessary.',
                style: TextStyle(color: Colors.black, fontSize: 10,backgroundColor: Colors.cyan),
              ),
               
               Text(
                '= dependent clause, direct object of the verb "reported"',
                style: TextStyle(color: Colors.black, fontSize: 10),
              )
            ],
          ),
        ),
        
      ],
    ),










    
    Row(
      children: [
        Wrap(
          children: [
            Text('$bullet   ',style: TextStyle(color: Colors.black),),
             
             Text(
              'The authors',
              style: TextStyle(color: Colors.black, fontSize: 10,backgroundColor: Colors.yellow),
            )
            , Text(
              ' hypothesized ',
              style: TextStyle(color: Colors.black, fontSize: 10,backgroundColor: Colors.green),
            ), Text(
              'that there would be significant results.',
              style: TextStyle(color: Colors.black, fontSize: 10,backgroundColor: Colors.cyan),
            ),
          ],
        ),
        
      ],
    ),
    Row(
      children: [
        Wrap(
          children: [
            Text('$bullet   ',style: TextStyle(color: Colors.black),),
             
             Text(
              'The authors',
              style: TextStyle(color: Colors.black, fontSize: 10,backgroundColor: Colors.yellow),
            )
            , Text(
              '= subject',
              style: TextStyle(color: Colors.black, fontSize: 10,),
            ), 
          ],
        ),
        
      ],
    ),

    Row(
      children: [
        Wrap(
          children: [
            Text('$bullet   ',style: TextStyle(color: Colors.black),),
    
            Text(
              'hypothesized ',
              style: TextStyle(color: Colors.black, fontSize: 10,backgroundColor: Colors.green),
            ), Text(
              '= verb',
              style: TextStyle(color: Colors.black, fontSize: 10),
            ),
          ],
        ),
        
      ],
    ),
    Row(
      children: [
        Container(
          width:  MediaQuery.of(context).size.width *.9,
          child: Wrap(
            children: [
              Text('$bullet   ',style: TextStyle(color: Colors.black),),
              
              Text(
                'that there would be significant results',
                style: TextStyle(color: Colors.black, fontSize: 10,backgroundColor: Colors.cyan),
              ),
               
               Text(
                '= dependent clause, direct object of the verb "reported"',
                style: TextStyle(color: Colors.black, fontSize: 10),
              )
            ],
          ),
        ),
        
      ],
    ),









    

    
    Row(
      children: [
        Container(
                    width:  MediaQuery.of(context).size.width *.9,

          child: Wrap(
            children: [
              Text('$bullet   ',style: TextStyle(color: Colors.black),),
               
               Text(
                'Jones (2014)',
                style: TextStyle(color: Colors.black, fontSize: 10,backgroundColor: Colors.yellow),
              )
              , Text(
                ' asserted ',
                style: TextStyle(color: Colors.black, fontSize: 10,backgroundColor: Colors.green),
              ), Text(
                ' that confidentiality was maintained throughout the study.',
                style: TextStyle(color: Colors.black, fontSize: 10,backgroundColor: Colors.cyan),
              ),
            ],
          ),
        ),
        
      ],
    ),
    Row(
      children: [
        Wrap(
          children: [
            Text('$bullet   ',style: TextStyle(color: Colors.black),),
             
             Text(
              'Jones (2014) ',
              style: TextStyle(color: Colors.black, fontSize: 10,backgroundColor: Colors.yellow),
            )
            , Text(
              '= subject',
              style: TextStyle(color: Colors.black, fontSize: 10,),
            ), 
          ],
        ),
        
      ],
    ),

    Row(
      children: [
        Wrap(
          children: [
            Text('$bullet   ',style: TextStyle(color: Colors.black),),
    
            Text(
              'asserted',
              style: TextStyle(color: Colors.black, fontSize: 10,backgroundColor: Colors.green),
            ), Text(
              '= verb',
              style: TextStyle(color: Colors.black, fontSize: 10),
            ),
          ],
        ),
        
      ],
    ),
    Row(
      children: [
        Container(
          width:  MediaQuery.of(context).size.width *.9,
          child: Wrap(
            children: [
              Text('$bullet   ',style: TextStyle(color: Colors.black),),
              
              Text(
                'that confidentiality was maintained throughout the study',
                style: TextStyle(color: Colors.black, fontSize: 10,backgroundColor: Colors.cyan),
              ),
               
               Text(
                '= dependent clause, direct object of the verb "reported"',
                style: TextStyle(color: Colors.black, fontSize: 10),
              )
            ],
          ),
        ),
        
      ],
    ),




                       bulletCard(context, 'Rephrasing these sentences into questions and answers is one way to see that the "that" clauses are acting as direct objects.'),
                       bulletCard(context, 'What did Smith (2015) report?'),
                          myText(context, 'Answer: that more research was necessary'),
                       bulletCard(context, 'What did the authors hypothesize?'),
                          myText(context, 'Answer: that there would be significant results'),
                       bulletCard(context, 'What did Jones (2014) assert?'),
                          myText(context, 'Answer: that confidentiality was maintained throughout the study'),
                          myText(context, 'In formal written English, for clarity, most academic writers choose to keep "that" when it introduces a noun clause (Caplan, 2012). Leaving out "that" can cause the reader to misread (at first anyway) the subject of the dependent clause as being the object of the reporting verb (Jamieson, 2012).'),
                          bulletCard(context, 'For example, if readers see the sentence, Smith (2015) reported more research was necessary (without that), they may understand “more research” as the thing Smith reported and then have to backtrack and reread upon seeing “was necessary.'),

                          bulletCard(context, 'Any structure that leads to misinterpretation, even temporarily, can be an unwanted distraction from the writer’s message.'),
                          bulletCard(context, 'In spoken English, however, "that" may be dropped in such sentences. (Intonation patterns—rising and falling pitch—give the listener clues that may not be present in writing.)'),
                          myHeading(context, '- Passive Voice:'),
                          myText(context, 'In most instances, put the verb in the active voice rather than in the passive voice.'),
                          myText(context, 'Passive voice produces a sentence in which the subject receives an action. In contrast, active voice produces a sentence in which the subject performs an action. Passive voice often creates unclear, less direct, wordy sentences, whereas active voice creates clearer, more concise sentences.'),
                          myText(context, 'To change a sentence from passive to active voice, determine who or what performs the action, and use that person or thing as the subject of the sentence.'),
                          myText(context, 'Examples'),
                          myText(context, 'PASSIVE VOICE: My first trip abroad will always be remembered by me. '),
                          myText(context, 'PASSIVE VOICE: My first trip abroad is one I will always remember. '),
                          myText(context, 'ACTIVE VOICE: I will always remember my first trip abroad.'),
                          myText(context, 'PASSIVE VOICE: On April 19, 1775, arms were seized by British soldiers at Concord, precipitating the American Revolution. '),
                          myText(context, 'ACTIVE VOICE: On April 19, 1775, British soldiers seized arms at Concord, precipitating the American Revolution.'),
                          myText(context, 'PASSIVE VOICE: Thomas Jefferson’s support of the new Constitution was documented in a letter to James Madison. '), 
                          myText(context, 'ACTIVE VOICE: Thomas Jefferson documented his support of the new Constitution in a letter to James Madison.'),
                          myText(context, 'Overuse of to be'),
                          myText(context, '(a related problem)'),
                          myText(context, 'Using forms of to be (e.g., is, are, was, were) leads to wordiness. Use an action verb instead.'),
                          myText(context, 'Example: It is the combination of these two elements that makes the argument weak. REVISED: The combination of these two elements weakens the argument.'),

                          myText(context, ''),

                          myHeading(context,'- Predicting the Future:'),
                          myText(context, 'In the Speaking or the Writing test, you might be asked to make predictions about the future. You should get used to using a variety of ways to do this. Some are included in the example below, taken from a test taker’s response to a question from part three of the Speaking test, in which she was asked about the future of film making.'),
                          myText(context, 'I think making films will probably be very profitable in the future as well. I mean, the industry will definitely lose some money because of Internet piracy - that’s bound to happen. But I think there’s a strong likelihood that an industry this size will find a way around that, even if there’s not much chance that they,ll be able to stop piracy altogether. Maybe they’ll come up with technology some new that is only effective in the cinemas. They might improve 3-D technology. Or, I don’t know, they could come up with something '),
                          myText(context, 'completely new, which we haven’t thought of yet. Whatever happens though, they definitely won’t stop making films because of the piracy. There’s no chance of that happening. So yea, they probably won’t make as much money as they make now, but I doubt that the industry will suffer too much! '),
                          myHeading(context, '- Present Perfect'),
                          myText(context, 'The Present Perfect tense is a rather important tense in English, but it gives speakers of some languages a difficult time. That is because it uses concepts or ideas that do not exist in those languages. In fact, the structure of the Present Perfect is very simple. The problems come with the use of the tense. In addition, there are some differences in usage between British and American English.'),
                          myText(context, 'In this lesson we look at the structure and use of the Present Perfect tense, as well as the use of for and since, followed by a quiz to check your understanding.'),
                          myText(context, 'The Present Perfect tense is really a very interesting tense, and a very useful one. Try not to translate the Present Perfect into your language. Just try to accept the concepts of this tense and learn to "think" Present Perfect! You will soon learn to like the Present Perfect tense!'),
                          myText(context, 'How do we make the Present Perfect tense?'),
                          myText(context, 'The structure of the Present Perfect is:'),

                          snapshot(context, 'assets/png/grammer5.PNG'),
                          myText(context, 'The auxiliary verb (have) is conjugated in the Present Simple: have, has'),
                          myText(context, 'The main verb is invariable in past participle form: -ed (or irregular)'),
                          myText(context, 'For negative sentences we insert not between the auxiliary verb and the main verb.'),
                          myText(context, 'For question sentences, we exchange the subject and the auxiliary verb.'),
                          myText(context, 'Look at these example sentences with the Present Perfect tense:'),
                          snapshot(context, 'assets/png/grammer6.PNG'),
                          snapshot(context, 'assets/png/grammer7.PNG'),
                          myHeading(context,'Contraction with Present Perfect'),
                          myText(context, 'When we use the Present Perfect in speaking, we often contract the subject and auxiliary verb. We also sometimes do this in informal writing.'),
                          snapshot(context, 'assets/png/grammer8.PNG'),
                          bulletCard(context,'You\'ve told me that before.'),
                          bulletCard(context,'John\'s seen Harry Potter.'),
                          myText(context, 'In negative sentences, we may contract the auxiliary verb and "not":'),
                          bulletCard(context,'You haven\'t won the contest.'),
                          bulletCard(context,'She hasn\'t heard from him.'),
                          myText(context, 'He\'s or he\'s??? Be careful! The \'s contraction is used for the auxiliary verbs have and be. For example, "It\'s eaten" can mean:'),
                          bulletCard(context,'It has eaten. (Present Perfect tense, active voice)'),
                          bulletCard(context,'It is eaten. (Present Simple tense, passive voice)'),
                          myText(context, 'It is usually clear from the context.'),
                          myHeading(context, 'How do we use the Present Perfect tense?'),
                          myText(context, 'This tense is called the Present Perfect tense. There is always a connection with the past and with the present.'),
                          myText(context, 'We use the Present Perfect to talk about:'),
                          bulletCard(context,'experience'),
                          bulletCard(context,'change'),
                          bulletCard(context,'continuing situation'),
                          myHeading(context, 'Present Perfect for experience'),
                          myText(context, 'We often use the Present Perfect to talk about experience from the past. We are not interested in when you did something. We only want to know if you did it:'),
                          snapshot(context,'assets/png/grammer9.PNG'),
                          snapshot(context,'assets/png/grammer10.PNG'),
                          myText(context, 'Connection with past: the event was in the past'),
                          myText(context, 'Connection with present: in my head, now, I have a memory of the event; I know something about the event; I have experience of it'),
                          myText(context, 'Present Perfect for change'),
                          myText(context, 'We also use the Present Perfect to talk about a change, or new information:'),
                          snapshot(context,'assets/png/grammer11.PNG'),
                          snapshot(context,'assets/png/grammer12.PNG'), snapshot(context,'assets/png/grammer13.PNG'),
                           snapshot(context,'assets/png/grammer14.PNG'),

                          myText(context, 'Connection with past: the past is the opposite of the present'),
                          myText(context, 'Connection with present: the present is the opposite of the past'),
                          myText(context, 'Americans do use the Present Perfect but less than British speakers. Americans often use the Past Simple tense instead. An American might say "Did you have lunch?", where a British person would say "Have you had lunch?"'),
                          myText(context, 'Present Perfect for continuing situation'),
                          myText(context, 'We often use the Present Perfect to talk about a continuing situation. This is a state that started in the past and continues in the present (and will probably continue into the future). This is a situation (not an action). We usually use for or since with this structure.'),
                           snapshot(context,'assets/png/grammer15.PNG'),
                          myText(context, 'Connection with past: the situation started in the past.'),
                          myText(context, 'Connection with present: the situation continues in the present.'),
                          myText(context, 'For and Since with Present Perfect tense'),
                          myText(context, 'We often use for and since with perfect tenses:'),
                          bulletCard(context, 'We use for to talk about a period of time: five minutes, two weeks, six years'),
                          bulletCard(context, 'We use since to talk about a point in past time: 9 o\'clock, 1st January, Monday'),
                            snapshot(context,'assets/png/grammer16.PNG'), 
                             snapshot(context,'assets/png/grammer17.PNG'),
                          myText(context, 'Look at these example sentences using for and since with the Present Perfect tense:'),
                          bulletCard(context,'I have been here for twenty minutes.'),
                          bulletCard(context,'I have been here since 9 o\'clock.'),
                          bulletCard(context,'John hasn\'t called for six months.'),
                          bulletCard(context,'John hasn\'t called since February.'),
                          bulletCard(context,'He has worked in New York for a long time.'),
                          bulletCard(context,'He has worked in New York since he left school.'),
                          myHeading(context, '- Past Simple'),
                          myText(context, 'The Past Simple Tense is used to refer to actions that were completed in a time period before the present time. In the Simple Past the process of performing the action is not important. What matters is that the action was completed in the past. The action may have been in the recent past or a long time ago. '),
                          myText(context, 'So let’s start learning the Simple Past Tense – one of the most common tenses in spoken English – and the points to pay attention to.'),
                          myText(context, 'Using the Simple Past Tense'),
                          bulletCard(context,'The Simple Past is used for actions that started and finished at a specific time in the past. It’s also possible to use the simple past in a sentence without specifying a time, but it must have previously been made clear that the speaker is referring to a finished period. '),

                          myText(context, 'I saw a movie last week.'),
                          bulletCard(context, 'The Simple Past is used to describe several actions that were completed in the past.'),
                          myText(context, 'I finished work, walked to the beach and met my friends.'),
                          bulletCard(context, 'The Simple Past is used to describe a process that started and finished in the past. In this case, the process of the action is long and is used by specifying time periods such as ‘the whole year’ or ‘all day’.'),
                          myText(context, 'I lived in Italy for five years.'),
                          bulletCard(context, 'The Simple Past can also be used in sentences that describe past habits. These sentences have the same purpose as the expression ‘used to’. It should be clear in this kind of sentence that the action referred to is a habit. Time expressions like always, often, usually and never can be used to underline this.'),
                          myText(context, 'I often played football when I was a young man.'),
                          myText(context, 'Forming the Simple Past'),
                          myText(context, ''),
                          myText(context, ''),
                          myText(context, ''),
                          myText(context, ''),
                          myText(context, ''),
                          myText(context, ''),
                          myText(context, ''),
                          myText(context, ''),
                          myText(context, ''),
                        ],
                      ),
                    ))
              ],
            ),
          )
        ],
      )),
    );
  }
}
