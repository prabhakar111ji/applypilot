CREATE TABLE profile_skills (
    profile_id BIGINT NOT NULL,
    skill_id BIGINT NOT NULL,
    PRIMARY KEY (profile_id, skill_id),
    CONSTRAINT fk_profile_skills_profile
        FOREIGN KEY (profile_id)
        REFERENCES profiles(id)
        ON DELETE CASCADE,
    CONSTRAINT fk_profile_skills_skill
        FOREIGN KEY (skill_id)
        REFERENCES skills(id)
        ON DELETE CASCADE
);
