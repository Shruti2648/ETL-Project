CREATE TABLE tap_college (
    academic_year INT NOT NULL,
    tap_college_code INT NOT NULL,
    federal_school_code INT NOT NULL,
    level VARCHAR NOT NULL,
    tap_level_of_study VARCHAR NOT NULL,
    tap_college_name VARCHAR NOT NULL,
	sector_type VARCHAR NOT NULL,
    tap_sector_group VARCHAR NOT NULL,
	tap_recipient_headcount INT NOT NULL,
	tap_recipient_ftes NUMERIC NOT NULL,
	tap_recipient_dollars NUMERIC NOT NULL
);

CREATE TABLE tap_income (
    academic_year INT NOT NULL,
    level VARCHAR NOT NULL,
    tap_level_of_study VARCHAR NOT NULL,
	sector_type VARCHAR NOT NULL,
    tap_sector_group VARCHAR NOT NULL,
	recipient_age_group VARCHAR NOT NULL,
	tap_financial_status VARCHAR NOT NULL,
	tap_award_schedule VARCHAR NOT NULL,
    tap_degree_nondegree VARCHAR NOT NULL,
    tap_schedule_letter VARCHAR NOT NULL,
    income_by_$10k VARCHAR NOT NULL,
    tap_recipient_headcount INT NOT NULL,
	tap_recipient_ftes NUMERIC NOT NULL,
	tap_recipient_dollars NUMERIC NOT NULL
);