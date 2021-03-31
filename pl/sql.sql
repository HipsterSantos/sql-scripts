Starting with Oracle Database 10g, you can define your own
quoting mechanism for string literals in both your SQL and
PL/SQL statements. Use the characters q' (q followed by a
straight single quote) to designate the programmer-defined
delimiter

//Datetime Interval Literals

INTERVAL '1-3' YEAR TO MONTH 1 year and 3 months later
INTERVAL '125-11' YEAR(3) TOMONTH 125 years and 11 months later
INTERVAL '-18' MONTH 18 months earlier
INTERVAL '-48' HOUR 48 hours earlier
INTERVAL '7 23:15' DAY TO
MINUTE 7 days, 23 hours, 15 minutes later

Useful oracle delimiters
: Host variable indicator
% Attribute indicator
. (Period) Component indicator (as in record.field or package.element)
@ Remote database indicator (database link)
=> Association operator (named notation)



Block Structure
Each PL/SQL program is a block consisting of a standard set
of elements, identified by keywords. The block determines the scope of declared elements and how excep-
tions are handled and propagated. A block can be anony-
mous or named. Named blocks include functions,
procedures, packages, and triggers.