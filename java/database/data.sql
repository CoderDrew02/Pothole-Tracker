BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');

-- TEST DATA --
INSERT INTO 
	potholes (user_id, latitude, longitude, current_status, reported_date, inspected_date, repaired_date, severity)     -- added severity property
VALUES
	(1, 39.0000, -75.3124, 'repaired', '4-2-2024', '4-3-2024', '4-5-2014', 'mild');                                     -- added "mild" to test data
	
INSERT INTO 
	potholes (user_id, latitude, longitude, current_status, reported_date, inspected_date, repaired_date, severity)     -- added severity property
VALUES
	(1, 45.0000, -85.3124, 'inspected', '4-2-2024', '4-3-2024', '', 'moderate');                                        -- added "moderate" to test data

COMMIT TRANSACTION;
