PROGRAM circleParameters
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

REAL, PARAMETER :: pi = 3.14159265
REAL :: radius, area, circumference

WRITE(*,*) "What is the radius of your circle?"
READ(*,*) radius

area = pi*radius**2
circumference = 2*pi*radius

WRITE(*,*) "The area of your circle is: ", area
WRITE(*,*) "The circumference of your circle is: ", circumference

READ(*,*) ! Wait for <ENTER> to terminate

END PROGRAM circleParameters