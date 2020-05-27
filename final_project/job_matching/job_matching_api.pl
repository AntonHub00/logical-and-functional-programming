% "Imports" the HTTP server modules needed to create the REST API.
:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).
:- use_module(library(http/http_json)).


% Local module to get the possible jobs based on the skills a person has
% and the given minimum match percentage.
:- use_module(job_matching).


% URL handlers.
:- http_handler('/skills', handle_skills_request, []).
:- http_handler('/job_matching', handle_jobs_matching_requests, []).


% Gets the request parameters and sends it to skills.
get_skills(_, _{result:Skills}) :-
    skills(Skills).


% Gets the request parameters and sends it to matches_job.
get_job_matching(_{skills:Skills, match_percentage:MatchPercentage}, _{result:Result}) :-
    matches_job(Skills, MatchPercentage, Result).


% Gets the requests parameters, parses it, sends it to the processing function
% gets the result and returns a response as JSON.
handle_skills_request(Request) :-
    http_read_json_dict(Request, Query),
    get_skills(Query, Solution),
    reply_json_dict(Solution).


% Gets the requests parameters, parses it, sends it to the processing function
% gets the result and returns a response as JSON.
handle_jobs_matching_requests(Request) :-
    http_read_json_dict(Request, Query),
    get_job_matching(Query, Solution),
    reply_json_dict(Solution).


% Sets the required server values.
server(Port) :-
    http_server(http_dispatch, [port(Port)]).


% Starts the HTTP server.
:- initialization(server(8000)).
