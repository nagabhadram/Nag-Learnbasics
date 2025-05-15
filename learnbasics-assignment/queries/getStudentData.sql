SELECT * FROM public.student_data
WHERE school_name LIKE COALESCE(NULLIF('{{SchoolDropdown.selectedOptionValue}}', ''), '%')
AND class LIKE COALESCE(NULLIF('{{ClassDropdown.selectedOptionValue}}', ''), '%')
AND section LIKE COALESCE(NULLIF('{{SectionDropdown.selectedOptionValue}}', ''), '%');
