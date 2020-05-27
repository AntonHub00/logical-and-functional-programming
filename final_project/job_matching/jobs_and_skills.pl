:- module(jobs_and_skills, [require_skills/2]).

% Defines the skills a doctor needs
require_skills(doctor,
                [
                    "communication",
                    "emotional_intelligence",
                    "problem-solving",
                    "attention_to_detail",
                    "decision-making",
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
                    "problem-solving",
                    "resilience",
                    "time_management",
                    "creativity",
                    "stress_management",
                    "business_skills",
                    "creativity"
                ]).


% References

% Doctor skills:
% https://www.careeraddict.com/doctor-skills

% Lawyer skills:
% https://www.prospects.ac.uk/jobs-and-work-experience/job-sectors/law-sector/7-skills-for-a-successful-law-career,
% https://amazelaw.com/9-skills-successful-lawyer/
