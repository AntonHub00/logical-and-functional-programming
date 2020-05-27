:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).
:- use_module(library(http/http_json)).

% My module
:- use_module(job_matching).

% URL handlers.
:- http_handler('/sum', handle_request_sum, []).
:- http_handler('/job', handle_request_job, []).

% has_skills(laywer, ["skill1","skill2"]).
% has_skills(doctor, ["skill1","skill2"]).

get_skills(_{skills:S, match_percentage:M}, _{result:R}) :-
    matches_job(S, M, R).

% solve(_{a:X, b:Y}, _{answer:N}) :- number(X), number(Y), N is X + Y.

% handle_request_sum(Request) :-
%     http_read_json_dict(Request, Query),
%     solve(Query, Solution),
%     reply_json_dict(Solution).

handle_request_job(Request) :-
    http_read_json_dict(Request, Query),
    get_skills(Query, Solution),
    reply_json_dict(Solution).

server(Port) :-
    http_server(http_dispatch, [port(Port)]).

:- initialization(server(8000)).
