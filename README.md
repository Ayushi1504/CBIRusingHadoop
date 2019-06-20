# CBIRusingHadoop
Content based image retrieval systems are currently the most important and the most effective image retrieval method. The normal methodology applies a feature extraction algorithm on an image to generate a feature vector. Applying similar extractor on other image generates their respective feature vectors. Comparison on these feature vectors by applying any distance metric or any similarity metric generates an numerical value. This is then used to sort all the images based on the ranking and concludes similarity to the query image. Computation of this takes a lot of time and hence if map-reduce framework is applied then it will generate output much faster.
Matlab Mapreduce Platform has been used.

To execute the project:
1)Install hadoop in your system.
2)Upload the dataset of images on hdfs
3)Install matlab
4)Provide the given matlab files and change path appopriately.
5)Provide query image path
6)Run the main.m file.
