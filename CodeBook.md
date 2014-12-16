---
title: "Run Analysis Codebook"
author: "Borislav Karaivanov"
date: "Monday, December 15, 2014"
output: html_document
---

The data is derived from the UCI's Human Activity Recognition Using Smartphones Dataset
(UCI HAR Dataset) described in the included files README.txt, features_info.txt, features.txt.

Data in the orginal dataset is split randomly into two groups, training and test data, likely for purposes of training supervised learning models to predict the type of activity given measurements from the embedded accelerometer and gyroscope of a smart phone and features derived from them. Each of these two groups includes feature, outcome and subject datasets, where for each observation in the feature dataset the corresponding subject (person) and outcome (activity) are reflected in the subject and outcome data vectors. 

To obtain the Run Analysis (RA) dataset the feature, outcome and subject datasets of both groups, training and test, are recombined and from the feature dataset only the columns corresponding to features representing mean or standard deviation of other features are kept (all other features are discarded). The original feature variable names are cleaned by converting to lower case and removing all instances of underscores, dashes, and parentheses.
Additionally in all instances of repeated use of the string "body" in the name of a variable only one copy is kept. The resulting all-lower-case-letter names are assign them to the columns drawn from the feature dataset. The subject and outcome columns are named "subject" and "activity", correspondingly.

After cleaning the activity names (read from the given file activity_labels.txt) they are used as factors to replace the numerical values in the "activity" column. The cleaned activity name are written to the file activityNames.txt.
    
Finally, using the activity and subject columns as factors, each feature is averaged for each factor (i.e., for each combination of activity and subject) to form the tidy RA dataset
which is written to the file tidyRunAnalysisData.txt.

The description of the six activity levels and 68 variables follows:

##### Activity levels: 
1. walking - walking on a flat surface 
2. walkingupstairs - climbing up stairs 
3. walkingdownstairs - climbing down stairs 
4. sitting - exercising in sitting position 
5. standing - exercising in standing position 
6. laying - exercising in laying position 

##### Variables: 
1. activity - factor variable with six level described above.

2. subject - numeric variable ranging in 1..30 identifying a specific person.

3. tbodyaccmeanx - numeric variable, mean x-projection of body component of accelerometer signal averaged over all observations for each activity and each subject.

4. tbodyaccmeany - numeric variable, mean y-projection of body component of accelerometer signal averaged over all observations for each activity and each subject.

5. tbodyaccmeanz - numeric variable, mean z-projection of body component of accelerometer signal averaged over all observations for each activity and each subject.

6. tbodyaccstdx - numeric variable, standard deviation of x-projection of body component of accelerometer signal averaged over all observations for each activity and each subject.

7. tbodyaccstdy - numeric variable, standard deviation of y-projection of body component of accelerometer signal averaged over all observations for each activity and each subject.

8. tbodyaccstdz - numeric variable, standard deviation of z-projection of body component of accelerometer signal averaged over all observations for each activity and each subject.

9. tgravityaccmeanx - numeric variable, mean x-projection of gravity component of accelerometer signal averaged over all observations for each activity and each subject.

10. tgravityaccmeany - numeric variable, mean y-projection of gravity component of accelerometer signal averaged over all observations for each activity and each subject.

11. tgravityaccmeanz - numeric variable, mean z-projection of gravity component of accelerometer signal averaged over all observations for each activity and each subject.

12. tgravityaccstdx - numeric variable, standard deviation of x-projection of gravity component of accelerometer signal averaged over all observations for each activity and each subject.

13. tgravityaccstdy - numeric variable, standard deviation of y-projection of gravity component of accelerometer signal averaged over all observations for each activity and each subject.

14. tgravityaccstdz - numeric variable, standard deviation of z-projection of gravity component of accelerometer signal averaged over all observations for each activity and each subject.

15. tbodyaccjerkmeanx - numeric variable, mean x-projection of body component of accelerometer jerk signal averaged over all observations for each activity and each subject.

16. tbodyaccjerkmeany - numeric variable, mean y-projection of body component of accelerometer jerk signal averaged over all observations for each activity and each subject.

17. tbodyaccjerkmeanz - numeric variable, mean z-projection of body component of accelerometer jerk signal averaged over all observations for each activity and each subject.

18. tbodyaccjerkstdx - numeric variable, standard deviation of x-projection of body component of accelerometer jerk signal averaged over all observations for each activity and each subject.

19. tbodyaccjerkstdy - numeric variable, standard deviation of y-projection of body component of accelerometer jerk signal averaged over all observations for each activity and each subject.

20. tbodyaccjerkstdz - numeric variable, standard deviation of z-projection of body component of accelerometer jerk signal averaged over all observations for each activity and each subject.

21. tbodygyromeanx - numeric variable, mean x-projection of body component of gyroscope signal averaged over all observations for each activity and each subject.

22. tbodygyromeany - numeric variable, mean y-projection of body component of gyroscope signal averaged over all observations for each activity and each subject.

23. tbodygyromeanz - numeric variable, mean z-projection of body component of gyroscope signal averaged over all observations for each activity and each subject.

24. tbodygyrostdx - numeric variable, standard deviation of x-projection of body component of gyroscope signal averaged over all observations for each activity and each subject.

25. tbodygyrostdy - numeric variable, standard deviation of x-projection of body component of gyroscope signal averaged over all observations for each activity and each subject.

26. tbodygyrostdz - numeric variable, standard deviation of x-projection of body component of gyroscope signal averaged over all observations for each activity and each subject.

27. tbodygyrojerkmeanx - numeric variable, mean x-projection of body component of gyroscope jerk signal averaged over all observations for each activity and each subject.

28. tbodygyrojerkmeany - numeric variable, mean y-projection of body component of gyroscope jerk signal averaged over all observations for each activity and each subject.

29. tbodygyrojerkmeanz - numeric variable, mean z-projection of body component of gyroscope jerk signal averaged over all observations for each activity and each subject.

30. tbodygyrojerkstdx - numeric variable, standard deviation of x-projection of body component of gyroscope jerk signal averaged over all observations for each activity and each subject.

31. tbodygyrojerkstdy - numeric variable, standard deviation of y-projection of body component of gyroscope jerk signal averaged over all observations for each activity and each subject.

32. tbodygyrojerkstdz - numeric variable, standard deviation of z-projection of body component of gyroscope jerk signal averaged over all observations for each activity and each subject.

33. tbodyaccmagmean - numeric variable, mean magnitude of body component of accelerometer signal averaged over all observations for each activity and each subject.

34. tbodyaccmagstd - numeric variable, standard deviation of magnitude of body component of accelerometer signal averaged over all observations for each activity and each subject.

35. tgravityaccmagmean - numeric variable, mean magnitude of gravity component of accelerometer signal averaged over all observations for each activity and each subject.

36. tgravityaccmagstd - numeric variable, standard deviation of magnitude of gravity component of accelerometer signal averaged over all observations for each activity and each subject.

37. tbodyaccjerkmagmean - numeric variable, mean magnitude of gravity component of accelerometer jerk signal averaged over all observations for each activity and each subject.

38. tbodyaccjerkmagstd - numeric variable, standard deviation of magnitude of gravity component of accelerometer jerk signal averaged over all observations for each activity and each subject.

39. tbodygyromagmean - numeric variable, mean magnitude of gravity component of gyroscope signal averaged over all observations for each activity and each subject.

40. tbodygyromagstd - numeric variable, standard deviation of magnitude of gravity component of gyroscope signal averaged over all observations for each activity and each subject.

41. tbodygyrojerkmagmean - numeric variable, mean magnitude of gravity component of gyroscope jerk signal averaged over all observations for each activity and each subject.

42. tbodygyrojerkmagstd - numeric variable, standard deviation of magnitude of gravity component of gyroscope jerk signal averaged over all observations for each activity and each subject.

43. fbodyaccmeanx - numeric variable, mean frequency domain x-projection of body component of accelerometer signal averaged over all observations for each activity and each subject.

44. fbodyaccmeany - numeric variable, mean frequency domain y-projection of body component of accelerometer signal averaged over all observations for each activity and each subject.

45. fbodyaccmeanz - numeric variable, mean frequency domain z-projection of body component of accelerometer signal averaged over all observations for each activity and each subject.

46. fbodyaccstdx - numeric variable, standard deviation of frequency domain x-projection of body component of accelerometer signal averaged over all observations for each activity and each subject.

47. fbodyaccstdy - numeric variable, standard deviation of frequency domain y-projection of body component of accelerometer signal averaged over all observations for each activity and each subject.

48. fbodyaccstdz - numeric variable, standard deviation of frequency domain z-projection of body component of accelerometer signal averaged over all observations for each activity and each subject.

49. fbodyaccjerkmeanx - numeric variable, mean frequency domain x-projection of body component of accelerometer jerk signal averaged over all observations for each activity and each subject.

50. fbodyaccjerkmeany - numeric variable, mean frequency domain y-projection of body component of accelerometer jerk signal averaged over all observations for each activity and each subject.

51. fbodyaccjerkmeanz - numeric variable, mean frequency domain z-projection of body component of accelerometer jerk signal averaged over all observations for each activity and each subject.

52. fbodyaccjerkstdx - numeric variable, standard deviation of frequency domain x-projection of body component of accelerometer jerk signal averaged over all observations for each activity and each subject.

53. fbodyaccjerkstdy - numeric variable, standard deviation of frequency domain y-projection of body component of accelerometer jerk signal averaged over all observations for each activity and each subject.

54. fbodyaccjerkstdz - numeric variable, standard deviation of frequency domain z-projection of body component of accelerometer jerk signal averaged over all observations for each activity and each subject.

55. fbodygyromeanx - numeric variable, mean frequency domain x-projection of body component of gyroscope jerk signal averaged over all observations for each activity and each subject.

56. fbodygyromeany - numeric variable, mean frequency domain y-projection of body component of gyroscope jerk signal averaged over all observations for each activity and each subject.

57. fbodygyromeanz - numeric variable, mean frequency domain z-projection of body component of gyroscope jerk signal averaged over all observations for each activity and each subject.

58. fbodygyrostdx - numeric variable, standard deviation of frequency domain x-projection of body component of gyroscope jerk signal averaged over all observations for each activity and each subject.

59. fbodygyrostdy - numeric variable, standard deviation of frequency domain y-projection of body component of gyroscope jerk signal averaged over all observations for each activity and each subject.

60. fbodygyrostdz - numeric variable, standard deviation of frequency domain z-projection of body component of gyroscope jerk signal averaged over all observations for each activity and each subject.

61. fbodyaccmagmean - numeric variable, mean frequency domain magnitude of body component of accelerometer signal averaged over all observations for each activity and each subject.

62. fbodyaccmagstd - numeric variable, standard deviation of frequency domain magnitude of body component of accelerometer signal averaged over all observations for each activity and each subject.

63. fbodyaccjerkmagmean - numeric variable, mean frequency domain magnitude of body component of accelerometer jerk signal averaged over all observations for each activity and each subject.

64. fbodyaccjerkmagstd - numeric variable, standard deviation of frequency domain magnitude of body component of accelerometer jerk signal averaged over all observations for each activity and each subject.

65. fbodygyromagmean - numeric variable, mean frequency domain magnitude of body component of gyroscope signal averaged over all observations for each activity and each subject.

66. fbodygyromagstd - numeric variable, standard deviation of frequency domain magnitude of body component of gyroscope signal averaged over all observations for each activity and each subject.

67. fbodygyrojerkmagmean - numeric variable, mean frequency domain magnitude of body component of gyroscope jerk signal averaged over all observations for each activity and each subject.

68. fbodygyrojerkmagstd - numeric variable, standard deviation of frequency domain magnitude of body component of gyroscope jerk signal averaged over all observations for each activity and each subject.
