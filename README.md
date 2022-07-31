# Pewlett Hackard Analysis

## Overview

Pewlett Hackard is a large company that has been around for some time that has several thousand employees. Some analysis has already been done after creating some employee databases to help managment understand the wave of retirements coming up due to the large amount of baby boomers getting ready for retirement. With all these retirements coming up, they also recognize that this will open up a lot of positions as well. In preparation for filling those positions, they want to figure out which other employees might be able for mentorship to assit in filling these roles. You will see in the below deliverables how many fit within the retirement window and how many will be eligible for the mentorship program.

![alt text](http://url/to/img.png)

## Results

To understand how we'll get the retirment and mentorship elibility information, I'll share the databases we started out with and built up over time.

Below is an example of the initial `EmployeeDB ERD` entity relationship diagram (ERD)):
![employee-db](https://github.com/hastyjr/Pewlett-Hackard-Analysis/blob/main/Resources/EmployeeDB.png)

There were several tables in place and adding them to our employee database assisted in further evaluating and analyzing the data accordingly.

## Deilvering the Number of Retiring Employees by Title

The first deliverable was to understand the county of  employees that fall into he reitirement criteria and what titles they hold.

* The first criteria was to identify the `retirement_titles` among the emplpyees by joing both the `employees` and `titles` tables

* Part of this requirement too, was to filter out the employees by birthdate. The following filter was used to do this:

    ```WHERE (emp.birth_date BETWEEN '1952-01-01' AND '1955-12-31')```

![del1_1](https://github.com/hastyjr/Pewlett-Hackard-Analysis/blob/main/Resources/del1_1.png)

* The results of this would create the `retirement_titles` table to use later on.

We noticed there were a lot of duplicates in the results due to the fact that some employees have had more than one role over their time with Pewlett Hackard. So we used the `Dictinct` with `ORDER BY` methods to remove duplicate rows

* We filtered the `emp_no` with the `DISTINCT ON` method
* Then used the `ORDER BY` to sort by `emp_no`
* The results of this was turned into a table called `unique_titles`.

![del1_2](https://github.com/hastyjr/Pewlett-Hackard-Analysis/blob/main/Resources/del1_2.png)

Finally, the above mentioned tables allowed me to retrieve the number of employees by their most recent job title who are about to retire.

* I queried the `unique_titles` table and used the `COUNT` method on `emp_no`.
* Then I used the `ORDER BY`method to
* The result of this provided the counts of eligible retirees by role.

![del1_3](https://github.com/hastyjr/Pewlett-Hackard-Analysis/blob/main/Resources/del1_3.png)

## Delivering the Employees Eligible for the Mentorship Program

The second deliverable was to provide 

*

*

## Summary

### The summary addresses the two questions and contains two additional queries or tables that may provide more insight
