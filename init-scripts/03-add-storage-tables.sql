-- Volumes table
CREATE TABLE IF NOT EXISTS volumes (
    resource_id VARCHAR PRIMARY KEY,
    resource_name VARCHAR,
    size INTEGER,
    status VARCHAR NOT NULL,
    created_time TIMESTAMP NOT NULL,
    updated_time TIMESTAMP,
    last_seen_time TIMESTAMP NOT NULL,
    first_time_not_seen TIMESTAMP,
    volume_type VARCHAR,
    attachments JSONB,
    project_site project_site NOT NULL,
    user_deleted BOOLEAN NOT NULL DEFAULT FALSE,
    system_deleted BOOLEAN NOT NULL DEFAULT FALSE
);

-- Buckets (Containers) table
CREATE TABLE IF NOT EXISTS buckets (
    resource_name VARCHAR PRIMARY KEY,
    count INTEGER,
    bytes BIGINT,
    last_seen_time TIMESTAMP NOT NULL,
    first_time_not_seen TIMESTAMP,
    project_site project_site NOT NULL,
    user_deleted BOOLEAN NOT NULL DEFAULT FALSE,
    system_deleted BOOLEAN NOT NULL DEFAULT FALSE,
    created_time TIMESTAMP -- May be null if not returned by API
);
