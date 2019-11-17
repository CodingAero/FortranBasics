PROGRAM loops
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

INTEGER :: i, j, sum

WRITE(*,*) "Let's try some random DO Loop Functionality."

DO i = 0, 10, 2

    DO j = 10, 5, -1

        WRITE(*,*) "###################################"
        WRITE(*,*) "Outer loop: ", i
        WRITE(*,*) "Inner loop: ", j

        IF (i == 10 .AND. j == 6) EXIT
        IF (i == 8) CYCLE ! Used to skip

        sum = i+j
        WRITE(*,*) "Loop Sum: ", sum

    END DO

END DO

WRITE(*,*) "###################################"

READ(*,*) ! Wait for <ENTER> to terminate

END PROGRAM loops