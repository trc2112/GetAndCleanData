Running Script:
	1.	Script Name: GetAndCleanData.R
	2.	Setup: The file https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip must be downloaded and unzipped to C:\\datasciencecoursera in order for the script to work.

Tidied Data Sets:
	1.	dataSet.csv: Consists of Merged test and training data consisting of columns for activity, subject ID and the mean and standard deviation measures from the original data .
	2.	meanByActivityDataSet.csv: is an aggregate of dataSet.csv consisting of the averages of the mean and standard deviation columns group by activity and subject ID.
	3.	Colum names:
		a.	Activity: This column is to identify which of the six activities that were carried out.
		b.	SubjectID: This is to identify which of the 30 subjects the measures are for.
		c.	All remaining column names are the various means and standard deviations of the results.  The column names remain unchanged from the original.

Source Datasets:
	Further Description of the experiment, and original datasets can be found in the read me file unzipped from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
