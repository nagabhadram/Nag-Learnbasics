-- Create student_data table
CREATE TABLE IF NOT EXISTS student_data (
  id INTEGER PRIMARY KEY,
  school_name VARCHAR(100),
  class VARCHAR(10),
  section VARCHAR(5),
  student_name VARCHAR(100),
  roll_number INTEGER
);
