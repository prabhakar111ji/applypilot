CREATE TABLE skill_evidence (
    id BIGSERIAL PRIMARY KEY,
    profile_id BIGINT NOT NULL,
    skill_id BIGINT NOT NULL,
    evidence_type VARCHAR(100) NOT NULL,
    evidence_text TEXT NOT NULL,
    created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_skill_evidence_profile
        FOREIGN KEY (profile_id)
        REFERENCES profiles(id)
        ON DELETE CASCADE,

    CONSTRAINT fk_skill_evidence_skill
        FOREIGN KEY (skill_id)
        REFERENCES skills(id)
        ON DELETE CASCADE
);
