# Job Matching REST API

This project consists in a REST API created with pure Prolog.

Tools: SWI-Prolog 7.6.4 and its HTTP library.

It's goal is to find the possible jobs matches for a person, based on a
given set of skills and a minimum match percentage.

## API end-points

### /skills

Receives an empty JSON object and returns a JSON object with a list with
all the skills registered(without possible duplicates)

### /job_matching

Receives a JSON object with an array of skills and a match percentage and
returns a JSON object with a list of lists where the first element of each
sublist is the matched job and the second one is the real matched percentage.

## Instructions


### Setup

The following line should start the server in localhost in port 8000
[server_ip](http://127.0.0.1:8000/):

```bash
swipl job_matching_api.pl
```

Now, the server should be accessible from anywhere within the network,
otherwise, check the firewall configuration.


### Testing

To test the server any request tool can be use, e.g Postman o curl.

Example with curl for "/skills" end-point:

``` bash
curl --header 'Content-Type: application/json' --request POST --data '{}' 'http://localhost:8000/skills'
```

Example with curl for "/job_matching" end-point:

``` bash
curl --header 'Content-Type: application/json' --request POST --data '{"skills":["Communication","Teamwork", "Problem-solving"], "match_percentage": 10}' 'http://localhost:8000/job_matching'
```
