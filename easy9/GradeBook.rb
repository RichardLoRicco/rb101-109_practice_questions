=begin

PROMPT:
Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value associated with that grade.

Numerical Score Letter	Grade
90 <= score <= 100	'A'
80 <= score < 90	'B'
70 <= score < 80	'C'
60 <= score < 70	'D'
0 <= score < 60	'F'
Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.

INPUTS: three integers
  - consisting of scores
OUTPUTS: a string character
  - consisting of a letter grade
RULES:
  - Tested values are between 0 and 100
  - No need to check for negative values or values greater than 100

EXAMPLES:
get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"

ALGORITHM:
Define method `get_grade` that accepts three arguments, `score1`, `score2`, and `score3`
  Initialize variable `average` that points to the average of the three arguments
  CONDITIONAL
  if `average` < 60
    "F"
  elsif `average` < 70
    "D"
  elsif `average` < 80
    "C"
  elsif 'average` < 90
    "B"
  elsif 'average` <= 100
    "A"

=end

def get_grade(score1, score2, score3)
  average = (score1 + score2 + score3)/3
  if average < 60
    "F"
  elsif average < 70
    "D"
  elsif average < 80
    "C"
  elsif average < 90
    "B"
  elsif average <= 100
    "A"
  end
end


# Test Cases:
p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"