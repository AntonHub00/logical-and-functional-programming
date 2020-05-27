% "Imports" the HTTP server modules needed to create the REST API.
:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).
:- use_module(library(http/http_json)).


% Local module to get the possible jobs based on the skills a person has
% and the given minimum match percentage.
:- use_module(job_matching).


% URL handlers.
:- http_handler('/sum', handle_request_sum, []).
:- http_handler('/job', handle_request_job, []).


% Gets the request parameters and sends it to matches_job.
get_skills(_{skills:Skills, match_percentage:MatchPercentage}, _{result:Result}) :-
    matches_job(Skills, MatchPercentage, Result).


% Gets the requests parameters, parses it, sends it to the processing function
% gets the result and returns a response as JSON.
handle_request_job(Request) :-
    http_read_json_dict(Request, Query),
    get_skills(Query, Solution),
    reply_json_dict(Solution).


% Sets the required server values.
server(Port) :-
    http_server(http_dispatch, [port(Port)]).


% Starts the HTTP server.
:- initialization(server(8000)).
