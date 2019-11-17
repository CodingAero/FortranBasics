PROGRAM formatting
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

INTEGER :: x
REAL :: y, a, b, c
CHARACTER(LEN=18) :: z
LOGICAL :: i

WRITE(*,*) "Let's demostrate formatting with the follow:"

x = 4208

WRITE(*,*) ""
WRITE(*,*) "########## INTEGER ##########"
WRITE(*,*) "Here is the unformatted INTEGER number."
WRITE(*,*) x
WRITE(*,*) "'(I4)' Formatting with exactly enough space to fit 4 digits:"
WRITE(*,'(I4)') x
WRITE(*,*) "'(I3)' Formatting with not enough space to fit 4 digits in 3 columns:"
WRITE(*,'(I3)') x
WRITE(*,*) "'(I6)' Formatting that is right justified in 6 columns:"
WRITE(*,'(I6)') x
WRITE(*,*) "'(I6.6)' Formatting that inserts zeros in front of integer:"
WRITE(*,'(I6.6)') x
WRITE(*,*) "Note: This last format is useful for time display. (6 hours, 5 minutes = 6:05)"

y = 824.9057

WRITE(*,*) ""
WRITE(*,*) "########## REAL ##########"
WRITE(*,*) "Here is the unformatted REAL number."
WRITE(*,*) y
WRITE(*,*) "'(F8.4)' Formatting with exactly enough space to fit the number:"
WRITE(*,'(F8.4)') y
WRITE(*,*) "'(F8.2)' Formatting that rounds to 2 decimal places and right justifies:"
WRITE(*,'(F8.2)') y
WRITE(*,*) "'(F6.4)' Formatting with 6 asterisks to indicate not enough space to fit with 4 decimals places:"
WRITE(*,'(F6.4)') y

WRITE(*,*) ""
WRITE(*,*) "########## REAL (Exponential Notation) ##########"
WRITE(*,*) "Note: Exponential notation is normalized from 0.1 to 10."
WRITE(*,*) "Here is the unformatted REAL number."
WRITE(*,*) y
WRITE(*,*) "'(E13.7)' Formatting with exactly enough space to fit the number:"
WRITE(*,'(E13.7)') y
WRITE(*,*) "'(E10.4)' Formatting with four significant figures (rounded):"
WRITE(*,'(E10.4)') y
WRITE(*,*) "'(E13.4)' Formatting that is right justified:"
WRITE(*,'(E13.4)') y
WRITE(*,*) "'(E10.7)' Formatting with not enough space to fit:"
WRITE(*,'(E10.7)') y
WRITE(*,*) "'(E12.6)' Formatting with exactly enough space to fit the number:"
WRITE(*,'(E12.6)') y
WRITE(*,*) "'(E9.3)' Formatting with four significant figures (rounded):"
WRITE(*,'(E9.3)') y
WRITE(*,*) "'(E12.3)' Formatting that is right justified:"
WRITE(*,'(E12.3)') y
WRITE(*,*) "'(E9.6)' Formatting with not enough space to fit:"
WRITE(*,'(E9.6)') y

WRITE(*,*) ""
WRITE(*,*) "########## REAL (Standard Scientific Notation) ##########"
WRITE(*,*) "Note: Standard scientific notation is normalized from 1 to 10."
WRITE(*,*) "Here is the unformatted REAL number."
WRITE(*,*) y
WRITE(*,*) "'(ES13.7)' Formatting with exactly enough space to fit the number:"
WRITE(*,'(ES13.7)') y
WRITE(*,*) "'(ES10.4)' Formatting with four significant figures (rounded):"
WRITE(*,'(ES10.4)') y
WRITE(*,*) "'(ES13.4)' Formatting that is right justified:"
WRITE(*,'(ES13.4)') y
WRITE(*,*) "'(ES10.7)' Formatting with not enough space to fit:"
WRITE(*,'(ES10.7)') y
WRITE(*,*) "'(ES12.6)' Formatting with exactly enough space to fit the number:"
WRITE(*,'(ES12.6)') y
WRITE(*,*) "'(ES9.3)' Formatting with four significant figures (rounded):"
WRITE(*,'(ES9.3)') y
WRITE(*,*) "'(ES12.3)' Formatting that is right justified:"
WRITE(*,'(ES12.3)') y
WRITE(*,*) "'(ES9.6)' Formatting with not enough space to fit:"
WRITE(*,'(ES9.6)') y

z = "Formatting example"

WRITE(*,*) ""
WRITE(*,*) "########## CHARACTER ##########"
WRITE(*,*) "Here is the unformatted CHARACTER number."
WRITE(*,*) z
WRITE(*,*) "'(A)' Formatting printed as is:"
WRITE(*,'(A)') z
WRITE(*,*) "'(A6)' Formatting that truncates the variable:"
WRITE(*,'(A6)') z
WRITE(*,*) "'(A20)' Formatting that is right justified (more columns than needed):"
WRITE(*,'(A20)') z

i = .TRUE.

WRITE(*,*) ""
WRITE(*,*) "########## LOGICAL ##########"
WRITE(*,*) "Here is the unformatted REAL number."
WRITE(*,*) i
WRITE(*,*) "'(L5)' Formatting with variable in 5th column (center justified):"
WRITE(*,'(L5)') i
WRITE(*,*) "'(L1)' Formatting with variable in 1st column (left justified):"
WRITE(*,'(L1)') i
WRITE(*,*) "'(L8)' Formatting with variable in 8th column (right justified):"
WRITE(*,'(L8)') i

WRITE(*,*) ""
WRITE(*,*) "Now let's put what we outlined above to work in an example."

100 FORMAT(A, I2, A, F5.2, A)
x = 19
y = 12.45

WRITE(*,*) ""
WRITE(*,*) "########## EXAMPLE ##########"
WRITE(*, 100) "The total number of groceries is ", x, &
& " and the cost is $", y, "."

a = 9.35
b = 6.23
c = a - b
z = "Apple"
WRITE(*,'(A6, 9x, F4.2, 5x, F4.2, 5x, F4.2)') z, a, b, c
! Note: The number in front of a formatting letter repeats that descriptor.

a = 7.46
b = 1.12
c = a - b
z = "Orange"
WRITE(*,'(A6, 4x, 3(5x, F4.2))') z, a, b, c
! Note: Patterns can also be repeated multiple times.

a = 4.99
b = 0.07
c = a - b
z = "Banana"
WRITE(*,'(A6, T16, F4.2, T25, F4.2, T34, F4.2)') z, a, b, c
! Note: "T" is tabbing to a specified column.
! Note: Tabbing to a column with existing information will lead to overwriting.

a = 2.87
b = 0.63
c = a - b
z = "Kiwi"
WRITE(*,'(A6, T16, F4.2)', ADVANCE = "NO") z, a
! Note: ADVANCE = "NO" will keep the following WRITE on the same line.
WRITE(*,'(5x, F4.2)', ADVANCE = "NO") b
WRITE(*,'(5x, F4.2///)') c
! Note: "/" will skip a line each time it is entered.
! Note: "/" can be place anywhere in the format statement without a common.
WRITE(*,*) "Grocery List Complete"

READ(*,*) ! Wait for <ENTER> to terminate

END PROGRAM formatting