<h1 align="center">Shell Scripting Fundamentals Study 🖥</h1>

<p align="center">This repository is dedicated for my fundamental knowledge related to Shell scripting across POSIX Unix Systems. I intend to work on this repository monthly.</p>

<p align="center">
  <a href="./LICENSE">License</a>
</p>

<p>In this repository I study the practical application of:</p>
<ul>
  <li>Shell built-in functions</li>
  <li>Types of numeric data (such as int and float)</li>
  <li>Strings Formatting</li>
  <li>Variables</li>
  <li>Mathematical operations with Bash</li>
  <li>Libraries</li>
  <li>Decision making (if, else if, else)</li>
  <li>Repetitions (while, for)</li>
  <li>User-defined functions</li>
  <li>My knowledge of English and general Bash usage.</li>
  <li>Advanced use cases</li>
</ul>

## 🗺 Directory Map

<ol>
<li><a href="#conversion">Conversion Scripts</a></li>
<li><a href="#math">Math Scripts</a></li>
<li><a href="#problemSolving">Problem Solving Scripts</a></li>
<li><a href="#string">String Based Scripts</a></li>
</ol>

<h4 id="conversion">2. Conversion Scripts</h4>
<p>Scripts with focus on conversion operations, using part of practical application topics</p>

<h4 id="math">3. Math Scripts</h4>
<p>Mathematical operations scripts to calculate and/or give mathematical results.</p>

<h4 id="problemSolving">4. Problem Solving Scripts</h4>
<p>These scripts are daily general problem solving scripts, like an investment calculator, a salary bonus calculation, price per quantity, etc.</p>

<h4 id="string">5. String Based Scripts</h4>
<p>Simple and direct strings scripts with minimal interaction with the user.</p>

## 💡 Useful Snippets and study pieces

<p>Here are some useful snippets to use daily for boosting code efficiency. Every single snippet is coming from a study script that I made from this repository.</p>

<h3>User Inputs</h3>
<p>A mandatory thing these days, give user the choice and input inside scripts.</p>

```bash
#! /bin/bash

# Always use $(()) for making calculations

read -p "Enter your name: " NAME

echo "Welcome $NAME!"

```

<h3>Arithmetic Operation</h3>
<p>Useful for calculating variables, converting from String to Int or Float types.</p>

```bash
#! /bin/bash

# Always use $(()) for making calculations

read -p "Enter the circle's radius in square meters: " CIRCLE_RAY

CIRCLE_AREA=$((CIRCLE_RAY*CIRCLE_RAY))
CIRCLE_FINAL=$((CIRCLE_AREA*3))

echo "$CIRCLE_FINAL is the circle's radius in square meters."

```

<h3>If Statement</h3>
<p>Important logical operation present in every programming language and problem solving scripts.</p>

```bash
#! /bin/bash

if [ "$NAME" == "Nick" ]
then
  echo "Your name is $NAME"
elif [ "$NAME" == "Lisa" ]
then  
  echo "Your name is $NAME"
else 
  echo "Your name is NOT Nick or Lisa"
fi

```

<h3>Case Statement</h3>
<p>You can use multiple if...elif statements to perform a multiway branch. However, this is not always the best solution, especially when all of the branches depend on the value of a single variable.

Shell supports case...esac statement which handles exactly this situation, and it does so more efficiently than repeated if...elif statements.</p>

```bash
#! /bin/bash

read -p "Do you want to install it? Y/N " INSTALL
case "$INSTALL" in 
  [yY] | [yY][eE][sS])
    echo "Installing..."
    ;;
  [nN] | [nN][oO])
    echo "Aborting operation..."
    ;;
  *)
    echo "Please enter y/yes or n/no"
    ;;
esac

```

<h3>Comparison Statement</h3>
<p>Comparing values between variables is a need for different logical reasons.</p>

```bash
#! /bin/bash

NUM_ONE=31
NUM_TWO=5
if [ "$NUM_ONE" -gt "$NUM_TWO" ]
then
  echo "$NUM_ONE is greater than $NUM_TWO"
else
  echo "$NUM_ONE is less than $NUM_TWO"
fi

######## COMPARISON TABLE
# val1 -eq val2 Returns true if the values are equal
# val1 -ne val2 Returns true if the values are not equal
# val1 -gt val2 Returns true if val1 is greater than val2
# val1 -ge val2 Returns true if val1 is greater than or equal to val2
# val1 -lt val2 Returns true if val1 is less than val2
# val1 -le val2 Returns true if val1 is less than or equal to val2
########

```

<h3>File Comparison Conditions</h3>
<p>For shell script, working with system files is a daily common task, so checking and comparing files is one of the first steps to have in place.</p>

```bash
#! /bin/bash

FILE="test.md"
if [ -e "$FILE" ]
then
  echo "$FILE exists"
else
  echo "$FILE does NOT exist"
fi

######## CONDITION TABLE
# -d file   True if the file is a directory
# -e file   True if the file exists (note that this is not particularly portable, thus -f is generally used)
# -f file   True if the provided string is a file
# -g file   True if the group id is set on a file
# -r file   True if the file is readable
# -s file   True if the file has a non-zero size
# -u    True if the user id is set on a file
# -w    True if the file is writable
# -x    True if the file is an executable
########

```

<h3>For Loop</h3>
<p>Making repetitions with for loops, in this case utilizing range (1, TOTAL).</p>

```bash
#! /bin/bash

read -p "See the projection until: (in years -> ex: 5) " INVESTMENT_UNTIL

for EACH_YEAR_INCOME in $(seq 1 $INVESTMENT_UNTIL)
  do
    TOT_INC=$((TOTAL_INCOME * EACH_YEAR_INCOME))
    echo "In $EACH_YEAR_INCOME year(s) you will have $TOT_INC $WHAT_CURRENCY"
done

```

<h3>While Loop</h3>
<p>Like for loops, this is an important repetition condition that automates processes. In this case, the while loop reads through a file line by line.</p>

```bash
#! /bin/bash

LINE=1
while read -r CURRENT_LINE
  do
    echo "$LINE: $CURRENT_LINE"
    ((LINE++))
done < "./test.md"

```

<h3>Function Usage</h3>
<p>Functions are great for separating the code into blocks, organizing and automating better.</p>

```bash
#! /bin/bash

# SIMPLE FUNCTION
function sayGenericHello() {
  echo "Hello World"
}
sayGenericHello

# FUNCTION WITH PARAMETERS
function sayMyNameAge() {
  echo "Hello, I am $1 and I am $2"
}

sayMyNameAge "Nick" "21"

```

## 📄 License

Permissions of this strong copyleft license are conditioned on making available complete source code of licensed works and modifications, which include larger works using a licensed work, under the same license. Copyright and license notices must be preserved. Contributors provide an express grant of patent rights.

| Permissions | Restrictions | Conditions
| --- | --- | --- 
&check; Commercial Use | &times; Liability | &#x1f6c8; License and Copyright Notice
&check; Modification   | &times; Warranty | &#x1f6c8; State changes
&check; Distribution |  | &#x1f6c8; Disclose source
&check; Patent Use |  | &#x1f6c8; Same license
&check; Private Use
