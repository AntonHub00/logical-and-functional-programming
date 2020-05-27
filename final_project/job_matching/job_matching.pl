:- module(job_matching, [matches_job/3, matches_job/4]).

% Defines the skills a doctor needs
require_skills(doctor,
                [
                    "communication",
                    "emotional_intelligence",
                    "problem"-solving,
                    "attention_to_detail",
                    "decision"-making,
                    "professionalism",
                    "teamwork",
                    "leadership",
                    "resilience",
                    "capacity_for_learning"
                ]).


% Defines the skills a lawyer needs
require_skills(lawyer,
                [
                    "communication",
                    "attention_to_detail",
                    "research",
                    "problem"-solving,
                    "resilience",
                    "time_management",
                    "creativity",
                    "stress_management",
                    "business_skills",
                    "creativity"
                ]).


% Gets the l_length of a list. Returns: Number
l_length([], 0).
l_length([_Head | Tail], Counter) :-
    l_length(Tail, TempCounter),
    Counter is TempCounter + 1.

% To know if a elements belongs to a list. Returns: Boolean
member(Match, [Match | _Tail]) :- !.
member(Match, [_Head | Tail]) :- member(Match, Tail).


% Counts how many elements in a first list are in the a second list.
% Return: Number

%Base case.
count_matches([], _Skills, 0) :- !.
% Case current elements of the first list is in the second list.
count_matches([Head | Tail], Skills, Counter) :-
    member(Head, Skills),
    count_matches(Tail, Skills, TempCounter),
    Counter is TempCounter + 1, !.
% Case current elements of the first list is NOT in the second list.
count_matches([Head | Tail], Skills, Counter) :-
    not(member(Head, Skills)),
    count_matches(Tail, Skills, TempCounter),
    Counter is TempCounter.

% Gets the the jobs that matches the skills with the given percentage and the
% got percentage
% How to query: matches_job([skill1, ...], atom, Variable, Variable)
matches_job(PersonSkills, GivenPercentage, GotPercentage, SuitableJob) :-
    require_skills(SuitableJob, Skills),
    l_length(Skills, JobSkillsAmount),
    count_matches(PersonSkills, Skills, MatchesAmount),
    GotPercentage is ((MatchesAmount * 100 ) / JobSkillsAmount),
    GotPercentage >= GivenPercentage.

% Executes matches_job but get all results without needing to write ";".
% Returns: list of lists [[job1, percentage_got_1], [job2, percentage_got_3], ...]
matches_job(PersonSkills, GivenPercentage, Result) :-
    findall(
        [SuitableJob,GotPercentage],
        matches_job(PersonSkills, GivenPercentage,
        GotPercentage, SuitableJob),Result
    ).

% References

% Doctor skills:
% https://www.careeraddict.com/doctor-skills

% Lawyer skills:
% https://www.prospects.ac.uk/jobs-and-work-experience/job-sectors/law-sector/7-skills-for-a-successful-law-career,
% https://amazelaw.com/9-skills-successful-lawyer/
