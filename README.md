Partitioning Souvenirs 
3-Partition Problem
Introduction: 
	The 3-Partition Problem is a special type of K-Partition problem and is an NP-Complete Problem in Computer Science. Here, the problem is to devise an algorithm that partitions a Set of Integers into 3 dis-joint subsets with equal sums, i.e., check whether there exist three disjoint sets S1, S2, S3 ⊆ {1,2,...,n}, such that S1 ∪ S2 ∪ S3 = {1,2,...,n} and

![image](https://github.com/Sarprab/PartitionProblem/assets/157615199/2c7c327a-be72-4e65-a864-bf0067c86ee5)


Constraints - 1 ≤ n ≤ 20, 1 ≤ vi ≤ 30 for all i. Another constraint is that no element is repeated unless the user enters a duplicate element on purpose.
Algorithm:
	We used simple Dynamic Programming to solve the given problem. Let Stotal be the sum of all the elements in the given set. If Stotal is divisible by 3, only then the original set S can be divided into 3 dis-joint sets with equal sum. To optimize the algorithm, we return 0 if this condition is not met, before further execution.
Base Case: The algorithm’s base case for recursion can defined when no element is left or in a case where the input by the user for total number of elements was 0. 
If Stotal is divisible by 3, we check if three subsets, S1, S2 and S3 with sum of elements equal to Stotal/3 exists or not. This is found by going through each element in the input array one after the another. This results in three possibilities:
o	We include the current item in the first subset and recurse for remaining items with remaining sum.

o	We include the current item in the second subset and recurse for remaining items with remaining sum.

o	We include the current item in the third subset and recurse for remaining items with remaining sum

After performing this check, we include this in the i¬th subset and recurse for the remaining items with the remaining sums i.e., S2 and S3. In case the solution is not found, we backtrack by including the current element in the ith subset and then go check for the (i+1)th subset.
Finally, to complete the dynamic part of the algorithm we introduced caching/storing. We simply maintained another arr t[] to keep a track of the subset elements. It is printed in a set format if the original subset S can be divided into 3 subsets such that their sum is equal.

Time Complexity:
	The proposed algorithm is relatively simple as the major operations include:
1.	Going through total number of elements provided ‘n’ and
2.	Comparison with the computed Sum ‘S’
Therefore, the time complexity can be given in Big-O notation as:
	O (number of elements ‘n’ ∙ computed Sum ‘S’)
	O (n.S)
