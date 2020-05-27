% Defines this as a module so it can be loaded from other files.
% /n is the arity.
:- module(job_matching, [matches_job/3, skills/1]).


% "Imports" jobs and its require_skills.
:- use_module(jobs_and_skills).


% Gets the length of a list.
% Returns: Number.
l_length([], 0).
l_length([_Head | Tail], Counter) :-
    l_length(Tail, TempCounter),
    Counter is TempCounter + 1.


% To know if an element belongs to a given list.
% Returns: Boolean.
member(Match, [Match | _Tail]) :- !.
member(Match, [_Head | Tail]) :- member(Match, Tail).


% Counts how many elements in the first list are in the the second list.
% Returns: Number.
count_matches([], _Skills, 0) :- !.
count_matches([Head | Tail], Skills, Counter) :-
    member(Head, Skills),
    count_matches(Tail, Skills, TempCounter),
    Counter is TempCounter + 1, !.
count_matches([Head | Tail], Skills, Counter) :-
    not(member(Head, Skills)),
    count_matches(Tail, Skills, TempCounter),
    Counter is TempCounter.


% Gets the the jobs that matches the person skills with the minimum given match
% percentage (or higher) and the got percentage.
% How to query: matches_job([skill1, ...], atom, Variable, Variable).
matches_job(PersonSkills, GivenPercentage, GotPercentage, SuitableJob) :-
    require_skills(SuitableJob, Skills),
    l_length(Skills, JobSkillsAmount),
    count_matches(PersonSkills, Skills, MatchesAmount),
    GotPercentage is ((MatchesAmount * 100 ) / JobSkillsAmount),
    GotPercentage >= GivenPercentage.


% Executes matches_job but get all results without needing to write ";".
% How to query: matches_job([skill1, ...], atom, Variable).
% Returns: list of lists [[job1, percentage_got_1], [job2, percentage_got_3], ...].
matches_job(PersonSkills, GivenPercentage, Result) :-
    findall(
        % Creates a list of lists with all the results as
        %[[SuitableJob, GotPercentage], ...] and then "asigns" it to "Result"
        [SuitableJob,GotPercentage],
        matches_job(PersonSkills, GivenPercentage, GotPercentage, SuitableJob),
        Result
    ).


skills(Skills) :-
    findall(SkillsTemp, require_skills(_, SkillsTemp), ListOfLists),
    append(ListOfLists, List),
    list_to_set(List, Skills).
