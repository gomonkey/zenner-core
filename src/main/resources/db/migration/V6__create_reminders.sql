CREATE TABLE zenner_core.reminders (
    id UUID PRIMARY KEY,
    user_id UUID NOT NULL,
    question VARCHAR(255) NOT NULL,
    display_order INTEGER NOT NULL,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL
);