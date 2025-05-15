DROP TABLE IF EXISTS public.student_data;

CREATE TABLE public.student_data (
  id SERIAL PRIMARY KEY,
  school_name VARCHAR(100) NOT NULL,
  class VARCHAR(10) NOT NULL,
  section CHAR(1) NOT NULL CHECK (section ~ '^[A-Z]$'),
  student_name VARCHAR(100) NOT NULL,
  roll_number INTEGER NOT NULL,
  UNIQUE (school_name, class, section, roll_number)
);

CREATE INDEX idx_school_name ON public.student_data (school_name);
CREATE INDEX idx_class ON public.student_data (class);
CREATE INDEX idx_section ON public.student_data (section);
