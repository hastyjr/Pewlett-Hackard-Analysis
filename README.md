# Pewlett Hackard Analysis

## Overview

Pewlett Hackard is a large company that has been around for some time that has several thousand employees. Some analysis has already been done after creating some employee databases to help managment understand the wave of retirements coming up due to the large amount of baby boomers getting ready for retirement. With all these retirements coming up, they also recognize that this will open up a lot of positions as well. In preparation for filling those positions, they want to figure out which other employees might be able for mentorship to assit in filling these titles. You will see in the below deliverables how many fit within the retirement window and how many will be eligible for the mentorship program.
## Results

To understand how I'll get the retirment numbers by title and mentorship elibility information, I'll share the databases I started out with and built up over time.

Below is an example of the initial `EmployeeDB ERD` entity relationship diagram (ERD)):
![employee-db](https://github.com/hastyjr/Pewlett-Hackard-Analysis/blob/main/Resources/EmployeeDB.png)

There were several tables in place and adding them to our employee database assisted in further evaluating and analyzing the data accordingly.

# Deilvering the Number of Retiring Employees by Title
## Deliverable #1

The first deliverable was to understand the county of  employees that fall into he reitirement criteria and what titles they hold.

* The first criteria was to identify the `retirement_titles` among the emplpyees by joing both the `employees` and `titles` tables

* Part of this requirement too, was to filter out the employees by birthdate. The following filter was used to do this:

        WHERE (emp.birth_date BETWEEN '1952-01-01' AND '1955-12-31')

![del1_1](https://github.com/hastyjr/Pewlett-Hackard-Analysis/blob/main/Resources/del1_1.png)

* The results of this would create the `retirement_titles` table to use later on.

I noticed there I a lot of duplicates in the results due to the fact that some employees have had more than one title over their time with Pewlett Hackard. So I used the `Dictinct` with `ORDER BY` methods to remove duplicate rows

* I filtered the `emp_no` with the `DISTINCT ON` method
* Then used the `ORDER BY` to sort by `emp_no`
* The results of this was turned into a table called `unique_titles`.

![del1_2](https://github.com/hastyjr/Pewlett-Hackard-Analysis/blob/main/Resources/del1_2.png)

Finally, the above mentioned tables allowed me to retrieve the number of employees by their most recent job title who are about to retire.

* I queried the `unique_titles` table and used the `COUNT` method on `emp_no`.
* Then I used the `ORDER BY`method to
* The result of this provided the counts of eligible retirees by title.

![del1_3](https://github.com/hastyjr/Pewlett-Hackard-Analysis/blob/main/Resources/del1_3.png)

# Delivering the Employees Eligible for the Mentorship Program
## Deliverable #2

The second deliverable was to provide a list of eligible employees for the mentorship program. These employees could be considered as replacements as those retirees phase out. 

1st order of business was to create a Mentorship Eligibility table that holds the employees who are eligible to participate in a mentorship program.

* I started out by joining the following tables and ordering them by `emp_no` which happened to be a primary key:
    * `emp`
    * `title`
    * `dept`
* Additionally, I had to do a filter on `to_date` and `birtdate`, because I only needed to include those within a speficic criterea.

        WHERE dept.to_date = '9999-01-01'
	    AND (emp.birth_date BETWEEN '1965-01-01' AND '1965-12-31')`
![del2_2](https://github.com/hastyjr/Pewlett-Hackard-Analysis/blob/main/Resources/del2_2.png)

* In doing this, I then created the `mentorship_eligibility` table oout of the results. 

The results of this criteria are below:
![del2_3](https://github.com/hastyjr/Pewlett-Hackard-Analysis/blob/main/Resources/del2_3.png)


# Summary

### The summary addresses the two questions and contains two additional queries or tables that may provide more insight

In Summary, the purpose of this project for Pewlett Hackard was to provide a good understanding of how many employees are eligible to retire and break that number down by title. This would give management a start on how to understand when and how to fill those roles. Additionally, provided this information, getting a good idea of which emplpyees are elegibly for the mentorship program based off of certain criteria, would show who and how many could potentially fill some of the roles that will open up to due retirees leaving. 
### What does this infromation tell us? 
When you look back above at the outcomes of Deliverable #1 and Deilverable #2, you will that the amount of eligible retirees is substantially larger than those eligible for the mentorship program. This means, that there are not enough internal and eligible candidates to fill all of these roles. 

![del2_4](del2_4.png)

Furthermore, this data shows that there will need to be a hiring push to fill the large gaps of open roles within the year. 