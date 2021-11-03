// ignore_for_file: non_constant_identifier_names, empty_constructor_bodies

import 'package:esooul/Screens/Ielts%20Section/IELTS%20Home/ielts_widget.dart';
import 'package:esooul/Screens/Ielts%20Section/Speaking/answer.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:esooul/Widgets/ielts_widget.dart';
import 'package:flutter/material.dart';

class WorkAndStudies extends StatefulWidget {
  const WorkAndStudies({Key? key}) : super(key: key);

  @override
  _WorkAndStudiesState createState() => _WorkAndStudiesState();
}

class _WorkAndStudiesState extends State<WorkAndStudies> {
  bool showAnser = false;
  void buttonevent() {
    setState(() {
      showAnser = true;
      // Answers[index]=Questions[index];
    });
    // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WorkStudiesAnsewer()));
  }

  // int index=0;
  List<QuestionAnswer> part1List = [
    QuestionAnswer(
        question: 'Do you work or are you a student?',
        answer: """I’ve been working as an English teacher for about 15 
Years now, and for the last 10 years I’ve specialized
 exclusively in teaching IELTS. And I absolutely love
 what I do. Of course, sometimes I feel tired and
 emotionally drained, especially when I have to mark my 
Students’ essays until midnight … but I just don’t see
Myself being happier doing anything else. 
"""),
    QuestionAnswer(
        question: 'Do you work or are you a student?',
        answer: '''It’s been a few years now since I started working full 
time. I work in Experiential Marketing and I absolutely
 love it because it’s the type of job that really lets you
Utilize all of your talents. One day you can be making a
budget , and the next day you can be learning to use a
drill because you need to drill holes in the floor. It’s very
versatile. It’s for people who don’t want to be the same
as the day before . (by Elena Korobskaya, a band 9 
scorer, watch a video on our Instagram)
'''),
    QuestionAnswer(
        question: 'Do you work or are you a student?',
        answer: '''Well, when I left school, I got a degree in nursing 
I’ve been working as a nurse at X hospital for almost
Years now. Being a nurse is really hard .I’m responsible
For lots of different things such as preparing patient 
For examination, observing and recording patient
Conditions. Measuring and recording their vital signs
And weight. providing emotional support to patients  and
their families , administering medications ,preparing 
rooms, cleaning  and disinfection equipment and
instrument, or assisting doctors during surgery . This 
list is endless. Also every day I perform a really wide
range of tasks. To provide care to my patients and
resolve their problems . For instance, I thread and 
remove catheters , apply and change wraps and
bandages, feed patients who cannot feed themselves,
dress patients with physical challenges help 
ambulatory patients walk, turn bedridden patients to
 prevent pressure sores, and transport patients. There’s
No such thing as a routine day in a hospital, and you
Never know what to except. That’s why it’s very tough 
Job. 
'''),
    QuestionAnswer(
        question: 'Do you work or are you a student?',
        answer: '''I’m a student, and this is my final year at school. Now
I’m working hard in order to get passing grades to enter
College in Canada. If everything is ok, six, months ago
now I’ll already be studying there. I want to major 
Journalism  as I like writing essays and articles and want
to work for some famous magazine of newspaper .I’m
going to do a three- year course at X college .
'''),
    QuestionAnswer(
        question: 'Do you work or are you a student?',
        answer: '''I neither work nor study . At the moment I have a 
Bachelor’s degree and I’m planning to apply for a 
Master’s degree as soon as I meet the requirements of
the program. It seems I’ve missed the boat for the fall
semester, so I’ll try not to miss the deadline for applying 
for the winter one .
'''),
    QuestionAnswer(
        question: 'Do you work or are you a student?',
        answer: '''Neither. Having worked for many Years in the field of 
Advertising, I made a decision to upskill and now that I
have completed a program, I want to pursue a career in
IT.
'''),
    QuestionAnswer(
        question: 'Do you work or are you a student?',
        answer: '''Currently I’m unemployed. Half a Year ago the company
I had been working at for many Years started massive
layoffs. One day I was made redundant among others
Unfortunately, I’m still looking for a job which would 
in line with my qualifications and experience, but
an easy task. 
'''),

    // next quuestions
    QuestionAnswer(
        question: '''Why did you choose that job?''',
        answer: '''Well, I guess the primary reason why I decided to 
Pursue a career in Finance was that I really loved Math’s 
at school as I was always good at numbers . And
because of this , I thought it was the only possible
choice I could make. So it wasn’t a tough decision. And,
thank God, I have never regretted it. 
'''),
    QuestionAnswer(
        question: '''Why did you choose to study that subjects?''',
        answer: '''Back in the day when I was a high school student, I had
an idea that I might like to do something related to
fashion , nut my parents insisted on my choosing
Accounting . Frankly, I wish I hadn’t listened to them as I
don’t really enjoy being an accountant

'''),
    QuestionAnswer(
        question: '''Why did you choose that job?''',
        answer: '''Well, I guess the primary reason why I decided to 
Pursue a career in Finance was that I really loved Math’s 
at school as I was always good at numbers . And
because of this , I thought it was the only possible
choice I could make. So it wasn’t a tough decision. And,
thank God, I have never regretted it. 
'''),
    QuestionAnswer(
        question: '''Why did you choose to study that subjects?''',
        answer: '''Back in the day when I was a high school student, I had
an idea that I might like to do something related to
fashion , nut my parents insisted on my choosing
Accounting . Frankly, I wish I hadn’t listened to them as I
don’t really enjoy being an accountant
'''),
    QuestionAnswer(
        question: '''Do you like your job?''',
        answer: '''I do. Mainly because it’s never boring. I love challenging 
tasks. In fact, the more challenging, the better. Of
Course, I usually spend a lot of time and energy, put a 
Lot of effort in order to complete such tasks
Successfully, but job satisfaction that it gives me
Significantly outweighs the hours, the stress and the 
hard work. Among   other things, there’s nothing to
adequate, let alone all the perks that my employer
Provides.
'''),
    QuestionAnswer(
        question:
            '''New!! (for nurses) Is there anything you dislike about Your Job?
''',
        answer: '''I’d rather say there are things that are really hard to 
manage or cope with. The hardest thing is that as a
nurse know what to expect. Also, you have to work long
hours, work on weekends, holidays and during night
Workloads and paperwork.  What’s more, you spend
most of the time walking ,standing , lifting and bending ,
something, trying to test the limits of your patience. But
despite all this, I don’t think I could do anything but 
nursing now.
'''),
    QuestionAnswer(
        question: '''What do you dislike about your job?''',
        answer: '''Well, I hate that I often have to work against the clock
to meet deadlines and it seems that I’ll never be able to
escape this constant rat race.  I feel this jam packet
schedule is robbing me of my life.
'''),
    QuestionAnswer(question: '''What do you dislike about your job?
''', answer: '''The only thing that I don’t like is too much
responsibility. Of course, when I chose this job, I Knew
What I was getting into, but sometimes I can’t help
feeling envious and be responsible for the rescue 
the whole company .
'''),
    QuestionAnswer(
        question: '''Do you like your job?''',
        answer: '''I do. Mainly because it’s never boring. I love challenging 
tasks. In fact, the more challenging, the better. Of
Course, I usually spend a lot of time and energy, put a 
Lot of effort in order to complete such tasks
Successfully, but job satisfaction that it gives me
Significantly outweighs the hours, the stress and the 
hard work. Among   other things, there’s nothing to
adequate, let alone all the perks that my employer
Provides.
'''),
    QuestionAnswer(
        question:
            '''New!! (for nurses) Is there anything you dislike about Your Job?
''',
        answer: '''I’d rather say there are things that are really hard to 
manage or cope with. The hardest thing is that as a
nurse know what to expect. Also, you have to work long
hours, work on weekends, holidays and during night
Workloads and paperwork.  What’s more, you spend
most of the time walking ,standing , lifting and bending ,
something, trying to test the limits of your patience. But
despite all this, I don’t think I could do anything but 
nursing now.
'''),
    QuestionAnswer(question: '''What do you dislike about your job?
''', answer: '''Well, I hate that I often have to work against the clock
to meet deadlines and it seems that I’ll never be able to
escape this constant rat race.  I feel this jam packet
schedule is robbing me of my life.
'''),
    QuestionAnswer(question: '''What do you dislike about your job?
''', answer: '''The only thing that I don’t like is too much
responsibility. Of course, when I chose this job, I Knew
What I was getting into, but sometimes I can’t help
feeling envious and be responsible for the rescue 
the whole company . 
'''),
    QuestionAnswer(question: '''What was your dream job when you were Young?
''', answer: '''Oh, when I was younger, I wanted to either become a
CEO of a big company or be self-employed. I was really
 Sure that this would bring me an adequate remuneration
and, as a result , a sense of satisfaction. What is more, I
Managing, people, could  take on responsibility and work
under pressure, which was very important for pursing
such careers.
'''),
    QuestionAnswer(question: '''Have you changed your mind on your dream job?
''', answer: '''Well, on the whole, ‘no’ as this is what I still dream
about. However, now I realize that there are quite a lot
Or things in this career which I didn’t think about at a 
younger age, for example, the fact that working under 
pressure is robbing people of their life, talking them
from their families and pushing them to participate in 
the rat race in order to get recognition and good 
Money.
'''),
    QuestionAnswer(question: '''What do you like about your studies?
''', answer: '''I will probably sound a bit nerdy, but I’m happy that 
School provide me with an opportunity to acquire
Knowledge about things I didn’t know before. I guess
that most subjects. We are taught. Will help us to
succeed in the future. So I never miss lessons and
complete all the assignments on time.
'''),
    QuestionAnswer(question: '''What do you like about your studies?
''', answer: '''As a high school student, I can safely say that I dislike 
School very strongly mainly because the teachers pile
So much work onto us  that we hardly get 5 hours of 
Sleep a night during an average school week. You see,
no matter when I go to bed, I have to wake up early
Because my classes usually start 8 am. To top it off,
Most subjects are boring and irrelevant to our future
Careers. So it causes a lot of stress, making me and my
fellow students reluctant to study.
'''),
    QuestionAnswer(question: '''What do you dislike about your studies?
''', answer: '''Well, my pet hate is that the school curriculum doesn’t
take into account individual differences and capabilities
of students. All of us are different, but we are supposed
to study the same subjects at the same pace. Also, I
Don’t like the fact that our educational system relies
Heavily on teamwork. Of course, I realise they’re trying 
to teach us to collaborate, but I think it’s unfair that
everyone gets the same grade irrespective of how
much each person has done. '''),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Header(btntext: 'Question'),
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * .7,
                  child: ListView.builder(
                      itemCount: part1List.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            questionCard(
                                context,
                                part1List[index].question,
                                Answer(
                                  ans: part1List[index].answer,
                                )),
                            // Text('$index')
                          ],
                        );
                      }),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class QuestionAnswer {
  final String question;
  final String answer;

  QuestionAnswer({
    required this.question,
    required this.answer,
  });
}
