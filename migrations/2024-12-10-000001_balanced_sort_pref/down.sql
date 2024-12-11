-- Note: PostgreSQL doesn't support removing enum values, so we'll need 
-- to change any rows using 'Balanced' to something else before downgrading
UPDATE local_user SET default_sort_type = 'Hot' WHERE default_sort_type = 'Scaled';
