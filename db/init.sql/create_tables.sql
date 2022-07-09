`CREATE TABLE IF NOT EXISTS measurements (
			id INT NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY
			, user_id varchar(50) NOT NULL
			, measure_date date NOT NULL
			, weight numeric(5,1) NOT NULL
		)`