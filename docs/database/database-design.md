# ApplyPilot — Database Design

## Database

ApplyPilot uses PostgreSQL as its primary relational database.

## Database Name

`applypilot`

## PostgreSQL Version

PostgreSQL 18.6

## Purpose

The database is the system of record for:

- candidate profiles;
- skills and skill evidence;
- education;
- experience;
- projects;
- resumes;
- job preferences;
- companies;
- jobs;
- job requirements;
- candidate-job matches;
- applications;
- application events;
- application outcomes.

## Design Principles

### 1. Relational source of truth

Core business data is stored in normalized relational tables.

### 2. Evidence preservation

Candidate claims and supporting evidence should be represented separately where necessary.

### 3. Historical application tracking

Application state changes should be represented through application events rather than overwriting historical information.

### 4. Explainable matching

Match results should preserve enough information to explain why a candidate was considered suitable or unsuitable for a job.

### 5. Extensibility

The schema should support future additions such as semantic search, job discovery, application automation, analytics, and model evaluation.

## Planned Core Domains

### Candidate

- users
- profiles
- skills
- profile_skills
- skill_evidence
- education
- experience
- projects
- project_skills
- resumes
- job_preferences

### Job

- companies
- jobs
- job_requirements

### Matching

- matches

### Applications

- applications
- application_events
- outcomes

## Vector Search

The system may use PostgreSQL with the `pgvector` extension for semantic representations.

Vector search will be introduced only after the relational database foundation is implemented and tested.

## Database Development Principle

The schema will be developed incrementally.

The initial implementation should prioritize:

1. correct relationships;
2. data integrity;
3. constraints;
4. indexes;
5. testability.

Performance optimization and advanced vector search will be added after the core relational model is stable.