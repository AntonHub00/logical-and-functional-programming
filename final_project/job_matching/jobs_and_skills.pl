:- module(jobs_and_skills, [require_skills/2]).

% Defines the skills a doctor needs
require_skills(doctor,
                [
                    "communication",
                    "emotional_intelligence",
                    "problem_solving",
                    "attention_to_detail",
                    "decision_making",
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
                    "problem_solving",
                    "resilience",
                    "time_management",
                    "creativity",
                    "stress_management",
                    "business_skills",
                    "creativity"
                ]).


% Defines the skills a teacher needs
require_skills(teacher,
                [
                    "communication",
                    "critical_thinking",
                    "organization",
                    "creativity",
                    "teamwork",
                    "problem_solving",
                    "childcare",
                    "leadership",
                    "multitasking",
                    "patience"
                ]).


% Defines the skills a security guard needs
require_skills(security_guard,
                [
                    "communication",
                    "observation",
                    "strength",
                    "alertness",
                    "teamwork",
                    "problem_solving",
                    "flexibility",
                    "honesty",
                    "professionalism",
                    "attitude"
                ]).


% Defines the skills a software developer guard needs
require_skills(software_developer,
                [
                    "creativity",
                    "communication",
                    "critical_thinking",
                    "concentration",
                    "teamwork",
                    "optimization",
                    "project_management",
                    "process_analysis",
                    "deductive_reasoning",
                    "inductive_reasoning"
                ]).


% References

% Doctor skills:
% https://www.careeraddict.com/doctor-skills

% Lawyer skills:
% https://www.prospects.ac.uk/jobs-and-work-experience/job-sectors/law-sector/7-skills-for-a-successful-law-career,
% https://amazelaw.com/9-skills-successful-lawyer/

% Teacher skills:
% https://www.thebalancecareers.com/teaching-skills-list-2062488
% https://www.careeraddict.com/teacher-skills

% Security guard skills:
% https://jobdescriptionandresumeexamples.com/top-15-security-guard-skills-to-succeed-on-the-job/
% https://www.topresume.com/career-advice/security-officer-top-needed-skills

% Sofware developer skills:
% https://www.thebalancecareers.com/software-developer-job-description-salary-and-skills-2061833
% https://www.thebalancecareers.com/software-engineer-skills-list-2062483
