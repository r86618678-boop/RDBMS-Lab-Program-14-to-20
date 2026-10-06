SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE InsertStudent (
    p_student_id   IN NUMBER,
    p_student_name IN VARCHAR2,
    p_department_id IN NUMBER
)
IS
BEGIN
    INSERT INTO Student (StudentID, StudentName, DepartmentID)
    VALUES (p_student_id, p_student_name, p_department_id);

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Student record inserted successfully.');
END;
/


