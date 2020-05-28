:- module(jobs_and_skills, [require_skills/2]).

% Defines the skills a doctor needs
require_skills("Doctor",
                [
                    "Communication",
                    "Emotional intelligence",
                    "Problem-solving",
                    "Attention to detail",
                    "Decision-making",
                    "Professionalism",
                    "Teamwork",
                    "Leadership",
                    "Resilience",
                    "Capacity for learning"
                ]).


% Defines the skills a lawyer needs
require_skills("Lawyer",
                [
                    "Communication",
                    "Attention to detail",
                    "Research",
                    "Problem-solving",
                    "Resilience",
                    "Time management",
                    "Creativity",
                    "Stress management",
                    "Business skills",
                    "Creativity"
                ]).


% Defines the skills a teacher needs
require_skills("Teacher",
                [
                    "Communication",
                    "Critical thinking",
                    "Organization",
                    "Creativity",
                    "Teamwork",
                    "Problem-solving",
                    "Childcare",
                    "Leadership",
                    "Multitasking",
                    "Patience"
                ]).


% Defines the skills a security guard needs
require_skills("Security guard",
                [
                    "Communication",
                    "Observation",
                    "Strength",
                    "Alertness",
                    "Teamwork",
                    "Problem-solving",
                    "Flexibility",
                    "Honesty",
                    "Professionalism",
                    "Attitude"
                ]).


% Defines the skills a software developer guard needs
require_skills("Software developer",
                [
                    "Creativity",
                    "Communication",
                    "Critical thinking",
                    "Concentration",
                    "Teamwork",
                    "Optimization",
                    "Project management",
                    "Process analysis",
                    "Deductive reasoning",
                    "Inductive reasoning"
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
