# Learnbasics Assignment - PostgreSQL and Appsmith

## Setup Instructions

### PostgreSQL Database (on Render)
1. Create a PostgreSQL database on Render.com (free tier).
2. Use `sql/create_table.sql` to create the `student_data` table.
3. Use `sql/insert_sample_data.sql` to insert sample student records.
4. Alternatively, import `sql/sample_data.csv` using pgAdmin 4 import feature.

### Appsmith Application
1. Create a new app on Appsmith.com.
2. Connect your Render PostgreSQL database as a datasource.
3. Add three Dropdown widgets:
   - `SchoolDropdown` with options: "Green Valley School", "Sunrise Academy"
   - `ClassDropdown` with options: "9", "10"
   - `SectionDropdown` with options: "A", "B"
4. Add a Table widget to display student data.
5. Add a Button widget to trigger the query.

### Query to Use in Appsmith

Use the query in `queries/getStudentData.sql` with variables bound to dropdowns:

```sql
SELECT * FROM public.student_data
WHERE school_name LIKE COALESCE(NULLIF('{{SchoolDropdown.selectedOptionValue}}', ''), '%')
AND class LIKE COALESCE(NULLIF('{{ClassDropdown.selectedOptionValue}}', ''), '%')
AND section LIKE COALESCE(NULLIF('{{SectionDropdown.selectedOptionValue}}', ''), '%');
