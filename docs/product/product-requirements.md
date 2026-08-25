# ApplyPilot — Product Requirements Document

## 1. Product Overview

ApplyPilot is a career-agent platform designed to improve the quality of job applications.

The system builds a detailed representation of a candidate, analyzes job requirements, evaluates candidate-job fit, recommends whether to apply, assists with application preparation, tracks application outcomes, and uses outcome data to improve future matching.

The primary objective is not to maximize the number of applications.

The primary objective is to maximize the number of relevant, evidence-supported applications.

---

## 2. Problem Statement

Job seekers commonly create profiles on multiple job platforms and apply to many positions without having a sufficiently accurate understanding of:

- whether they actually satisfy the job requirements;
- which requirements they satisfy;
- which requirements they partially satisfy;
- which requirements they do not satisfy;
- whether their resume provides sufficient evidence;
- whether the role aligns with their preferences and constraints;
- why an application may or may not be worth submitting.

This can result in large numbers of applications with little useful feedback.

ApplyPilot addresses this problem by introducing structured candidate understanding, structured job understanding, explainable matching, application tracking, and outcome analysis.

---

## 3. Product Goal

Build a system that can:

1. Understand the candidate.
2. Understand the job.
3. Compare the candidate with the job.
4. Explain the comparison.
5. Recommend APPLY, MAYBE, or SKIP.
6. Assist with preparing the application.
7. Allow the candidate to review the application.
8. Submit the application through supported workflows.
9. Track application events and outcomes.
10. Use observed outcomes to improve matching quality.

---

## 4. Core Product Principle

Application quantity is not the primary optimization target.

The system should optimize for application quality.

A high-quality application is one where:

- the candidate satisfies the important requirements;
- candidate capabilities are supported by evidence;
- candidate preferences and constraints are compatible with the opportunity;
- significant gaps are known;
- the candidate understands the risks before applying.

---

## 5. Target User

### Primary User

An individual job seeker who wants to:

- understand their suitability for jobs;
- reduce low-quality applications;
- identify skill gaps;
- organize applications;
- automate repetitive application preparation;
- measure application outcomes.

### Initial Target Segment

The initial product should focus on software/technology job seekers because the domain has relatively structured technical requirements and provides useful evidence sources such as:

- resumes;
- projects;
- GitHub repositories;
- technical skills;
- education;
- certifications;
- work experience.

---

## 6. Candidate Intelligence

ApplyPilot must maintain a structured candidate profile.

Candidate information may include:

- personal profile information;
- education;
- work experience;
- technical skills;
- skill proficiency;
- projects;
- project technologies;
- certifications;
- achievements;
- resumes;
- portfolio links;
- GitHub links;
- preferred roles;
- preferred locations;
- work-mode preferences;
- salary expectations;
- career goals.

The system should distinguish between:

### Claimed information

Information supplied by the candidate.

### Evidence-supported information

Information supported by a resume, project, repository, certification, or other available evidence.

The system must not invent candidate qualifications.

---

## 7. Job Intelligence

For each supported job, ApplyPilot should create a structured representation containing, where available:

- company;
- job title;
- location;
- work mode;
- employment type;
- salary information;
- experience requirements;
- education requirements;
- technical requirements;
- non-technical requirements;
- required skills;
- preferred skills;
- other constraints;
- application URL;
- source;
- posting date.

The system must distinguish between:

- REQUIRED requirements;
- PREFERRED requirements.

---

## 8. Matching Engine

The matching engine compares the candidate profile with the structured job requirements.

The initial matching model should consider:

- required technical skills;
- preferred technical skills;
- experience;
- education;
- project evidence;
- role relevance;
- location compatibility;
- work-mode compatibility;
- salary compatibility;
- candidate preferences;
- other applicable constraints.

The system should produce both quantitative and qualitative results.

Example:

    Overall Match: 87%

    Technical Skills: 91%
    Experience: 75%
    Education: 100%
    Location: 100%
    Project Evidence: 88%

The score must be accompanied by an explanation.

---

## 9. Match Explanation

For every meaningful match evaluation, the system should identify:

### Strong Matches

Requirements that the candidate clearly satisfies.

### Partial Matches

Requirements for which the candidate has related but incomplete evidence.

### Gaps

Important requirements that the candidate does not currently satisfy.

### Risks

Factors that may reduce the probability of a successful application.

Example:

    Strong:
    - Java
    - Spring Boot
    - SQL

    Partial:
    - Docker

    Gap:
    - Required professional experience

    Recommendation:
    MAYBE

---

## 10. Application Decision

The initial decision categories are:

### APPLY

The candidate appears sufficiently qualified and the opportunity is compatible with their relevant preferences and constraints.

### MAYBE

The candidate has meaningful gaps or uncertainty, but applying may still be reasonable.

### SKIP

A significant requirement or constraint makes the application unsuitable.

The decision should never be based solely on semantic similarity.

---

## 11. Human-in-the-Loop Principle

Application submission should initially require explicit candidate confirmation.

The system may:

- identify suitable jobs;
- prepare application data;
- prepare answers;
- select an appropriate resume;
- fill supported forms;
- present the completed application for review.

The candidate should have the opportunity to review and approve the application before submission.

---

## 12. Application Tracking

Each submitted application should have a lifecycle.

Initial application states may include:

- PREPARING
- READY_FOR_REVIEW
- SUBMITTED
- WITHDRAWN
- FAILED

Application events should be recorded separately so that the historical timeline is preserved.

Possible events include:

- application prepared;
- application submitted;
- recruiter response;
- assessment received;
- interview invitation;
- rejection;
- offer;
- withdrawal.

---

## 13. Outcome Analysis

ApplyPilot should distinguish between:

### No response yet

An application has been submitted but insufficient time has passed to classify the result.

### No response observed

A defined observation period has passed without a recorded response.

### Explicit rejection

The employer or hiring process provides a rejection outcome.

No response must not automatically be interpreted as proof that the candidate-job match was incorrect.

Outcome data should be treated as evidence for future model evaluation and calibration.

---

## 14. Learning Loop

The system should eventually compare:

    Predicted Match
          VS
    Actual Outcome

This enables analysis of whether higher predicted match scores correlate with better outcomes.

The system should not claim that the matching model improves until sufficient outcome data exists to evaluate that claim.

---

## 15. Job Discovery

ApplyPilot may eventually discover jobs from supported sources.

The discovery system should:

- collect jobs;
- normalize job information;
- identify duplicates;
- store source information;
- update job status;
- pass normalized jobs to the matching engine.

The system must respect the technical and legal constraints of each job source.

---

## 16. Application Automation

Application automation is a secondary capability.

The product should first establish reliable:

1. Candidate Intelligence
2. Job Intelligence
3. Matching
4. Decision
5. Outcome Tracking

Only then should application automation be expanded.

Automation should operate only through supported workflows and should maintain the human approval step during the initial product stage.

---

## 17. Core Product Metrics

The product should eventually measure:

### Qualified Application Rate

    Qualified applications / total applications

### Response Rate

    Recruiter responses / submitted applications

### Interview Rate

    Interviews / submitted applications

### Offer Rate

    Offers / submitted applications

### Match Calibration

Comparison between predicted suitability and observed outcomes.

The product should avoid optimizing for raw application count.

---

## 18. MVP Scope

The first functional MVP should include:

- user account;
- candidate profile;
- candidate skills;
- education;
- experience;
- projects;
- resume management;
- job creation/import;
- job requirement extraction;
- candidate-job matching;
- explainable match result;
- APPLY/MAYBE/SKIP recommendation;
- application tracking;
- application event tracking;
- basic outcome tracking.

The MVP should not attempt to solve every job platform or fully autonomous application submission.

---

## 19. Future Scope

Potential future capabilities include:

- automated job discovery;
- advanced resume optimization;
- personalized application generation;
- application automation;
- recruiter communication tracking;
- interview preparation;
- skill-gap analysis;
- personalized learning recommendations;
- matching-model calibration;
- outcome prediction;
- analytics dashboards;
- multi-source job aggregation.

These features are outside the initial MVP unless specifically added later.

---

## 20. Product Non-Goals

ApplyPilot is not initially intended to:

- guarantee interviews;
- guarantee recruiter responses;
- guarantee employment;
- claim that every rejection is caused by poor matching;
- fabricate candidate experience;
- fabricate skills;
- automatically submit every discovered job;
- optimize solely for application volume.

---

## 21. Trust Requirements

The system must:

- preserve factual candidate information;
- distinguish facts from inference;
- explain important matching decisions;
- avoid fabricating qualifications;
- preserve application history;
- preserve important outcome information;
- protect user credentials and sensitive data;
- provide the user with control over application submission.

---

## 22. MVP Success Criteria

The MVP is considered technically successful when a user can:

1. Create a candidate profile.
2. Add skills, education, experience, and projects.
3. Add or import a job.
4. Extract structured job requirements.
5. Run a candidate-job match.
6. See the match score and explanation.
7. Receive an APPLY, MAYBE, or SKIP recommendation.
8. Create an application record.
9. Track application events.
10. Record an eventual outcome.

The first MVP does not need to prove that the system increases interview or offer rates.

That requires real-world outcome data and should be evaluated separately.

---

## 23. Product Development Principle

ApplyPilot should be developed incrementally.

Development sequence:

    Candidate Intelligence
            ↓
    Job Intelligence
            ↓
    Matching Engine
            ↓
    Decision Engine
            ↓
    Application Tracking
            ↓
    Outcome Analysis
            ↓
    Application Automation
            ↓
    Job Discovery at Scale

Each stage must be functional and testable before the next major stage is added.