## Languages: Prolog, S(Casp), HTML, CSS, Bootstrap

## Inspiration
One of our team members recently had to do a general health check-up for a common illness that took an excessive amount of time. He felt that having an automated reasoning system would help quickly assess the level of risk for patients for certain illnesses and increase efficiency for doctors and nurses. Our team recognized a need for a non-traditional machine learning approach to the problem and the ideas bounced back and forth between us on ways to make it a reality. As continued with the idea, we were able to build multiple functions that could build off each other.
## What it does

Our health check system assesses the condition of a patient given certain metrics, tests, and more using only s(CASP). We were able to split our project in various components and some even required another. The first pillar pillar of our project was the General_Info s(CASP). Using basic measurements, the general info program was able to determine BMI and weight statuses, which will be used for other components. The next component is the Vitals, where measured body temp, blood pressure, rate of breathing, pulse rate, are used to find conditions and overall health of the patient. Another component is History which uses patient history and data from General_info to determine whether the patient has diabetes. The next component is Immunizations which uses an interesting function called findAll to find and determine the missing vaccine. Our second to last component is the PsychEvual. Using the guidelines attached in the pdf under resources, we were able to find out levels of depression. The last and most intricate component is the COVID-19 CheckList. Using a check of point values from Uganda, we are able to model these guidelines on what to do in regards to symptoms. What’s really interesting about this component is that we were able to take full advantage of s(CASP) in this component. We are able to use forward, backward, and mixed reasoning. In other words, we are able to determine the conclusion from the facts, determine the various worlds/fact from a conclusions, and a mix between both.

## How we built it
We first made a plan by referencing real-world general health check-up forms, we noted the various ways we could expand on it, but decided to focus on 3 main pillars first. A ruleset for an individual's vitals, ruleset.
## Challenges we ran into
We knew there were a lot of ways to approach building this sort of problem. However, with the constraints of having 3 undergraduates who've never used Prolog/S(CASP) before, a huge hurdle had to be climbed.

## Accomplishments that we're proud of

## What we learned
We learned a lot about logic programming in Prolog.
