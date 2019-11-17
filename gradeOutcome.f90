PROGRAM gradeOutcome
IMPLICIT NONE

!################################################
!  To run from the Windows Command Prompt:
!    (1) Navigate to the folder location
!      - Use "cd" to open your folder
!      - Use "dir" to list folder contents
!      - Use "cls" to clear the screen
!    (2) Compile with "gfortran YOUR_FILE.f90"
!    (3) Execute code with "start a.exe"
!################################################

INTEGER :: grade

WRITE(*,*) "Please provide your grade. (INTEGER)"
READ(*,*) grade

WRITE(*,*) "As determined using IF Statements..."

IF (grade == 100) THEN ! executes if grade = 100
    WRITE(*,*) "You got a 100"
ELSE IF (grade >= 90 .AND. grade <= 99) THEN ! if 90 <= grade < 100
    WRITE(*,*) "You have an A"
ELSE IF (grade >= 80 .AND. grade <= 89) THEN ! if 80 <= grade < 89
    WRITE(*,*) "You have a B"
ELSE IF (grade <= 79) THEN ! if grade <= 79
    WRITE(*,*) "You need to work harder"
ELSE ! if no other system executes
    WRITE(*,*) "You cannot make over 100!"
END IF

WRITE(*,*) "As determined using the CASE Construct..."

SELECT CASE (grade)
    CASE (100) ! executes if grade = 100
        WRITE(*,*) "You got a 100"
    CASE (90:99) ! executes if grade >= 90 but less than 100
        WRITE(*,*) "You have an A"
    CASE (80:89) ! executes if grade >= 80 and <=89
        WRITE(*,*) "You have a B"
    CASE (:79) ! executes if grade <= 79
        WRITE(*,*) "You need to work harder"
    CASE DEFAULT ! executes if no other case executes
        WRITE(*,*) "You cannot make over 100!"
END SELECT

READ(*,*) ! Wait for <ENTER> to terminate

END PROGRAM gradeOutcome