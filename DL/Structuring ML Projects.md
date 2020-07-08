# Structuring ML projects:
--------------------------
## Orthogonalization:

* Just like the knobs of an old TV set control different aspects of the image displayed on the screen like the height, width etc, we should be able to tune our model in such a way that tuning has affect on only one aspect of the model.

## Single real number evaluation metrics:

* It is important to have a single real number evaluation metric to differentiate between good and bad algorithms. By just seeing this metric we would be easily able to tell one algorithm is better than the rest.
* The real number metric is divided into two parts, optimizing metric and satisficing metric.
 * Satisficing metrics are conditions which your algorithm should satisfies
 * Optimizing metrics are metrics which you use to differentiate different algorithms which satisfy the satisficing metric.

* <b>Dev and test sets need to come from the same disrtibution.</b><br>
This is important since making your model perform better on dev set is like getting closer to the bull's eye on the target. Now when you go to the test set, you don't want your bull's eye to shift... Andrew has seen many machine learning teams spend months and then realize that their dev and test sets were from different distributions. Example : dev set is of whether loan has been accepted or rejected for middle class families and test set comprises of people from the lower income families...... This is a really bad way of organizing test and dev sets.

* Size of train, dev and test set:<br>
The idea of the sizes have evolved. Previously 60/20/20 was used. But at that time the dataset was not as large as it is now......... If we have a million examples, then having 98/1/1 is quite reasonable.

* <b>When to change the evaluation metric and/or dev/test set</b>: <br>
Suppose you're working on your cat classifier and you have two algorithms A and B which give 3% and 5% error respectively. But algorithm A classifies more pornographic images as cats. So algorithm A according to the dev set and the metric is better but according to you and the users, algorithm B is better. It's now tie to changr the evalutaion metric. <br>

Initially error was defined as 1/mdev * summation(no.of yhat != y, i -> 1:mdev)
Now you can change this metric as 1/summation(wi) * (wi * yhat != y) where wi = 1 for non porn images and wi = 10 for pornographic images.

<br>

* One more scenario for changing your evaluation metric and/or dev/test set is that if your algorithm B does better on user uploaded images than what algorithm A does, (beacuse of image quality differences).
* There are two main steps, first is to set the target and next is to decide how to aim/shoot at the target.

## Why Human Level Performance?
* The highest possible performance which is theoretical is called the <b>Bayesian optimal error</b>.
* Most ML algorithms have a steep slope till it achieves human level performance but then this slope goes down as the algorithm approaches Bayes error.
* As long as ML algorithm is worse than humans:
 * Get labeled data from humans
 * Gain insight from manual error analysis: Why did a person get this right?
 * Better analysis of bias/variance

### Human level performance as a proxy for Bayesian error:
* Humans are really good at many tasks and thus the human level error can be approximately considered as the Bayesian error.
* The difference between the Bayesian error(approx) and the train error is called the <b>Avoidable Bias</b>. The difference between the dev error and the train error is called the <b>Variance</b>. 
* Depending on which error is more we have to take action. For instance if the avoidable bias is more then we can implement bias reduction techniques, while on the other hand if the variance is more then we could implement variance reduction techniques.

## Error Analysis:
* Manually do an error analysis preferably using a spreadsheet and check manually 100 misclassified images and the type of the image. For example for cat classification categories may be blurry images, images of dogs, images of the big cats(lions, leopards ,tigers etc). 
* Now check which of the following categories comprises most of the misclassified 100 images. Working on the largest category may help in reducing the overall error. This method is often described as the <b>ceiling analysis</b>.

## Misclassified Examples:
* DL algorithms are quite robust in handling minor random errors in the training set. 
* Again if you want to decide whether or not to spend time in correcting the incorrectly labelled you just have to add another column to your previous spreadsheet and check whether it is viable in doing so.
* Whatever you do to your train set do the same for the dev set. This is to maintain uniformity in the distribution.
* It is as important to manually checkout what your algorithm is doing right as well as seeing where it's going wrong.
* Train and the dev/test may have slightly different distributions.
* This may seem a bit of a boring and time consuming job to manually examine, but Andrew stil believes that it is worth spending some hours to manually go through such examples.

## Building a new ML algorithm from scratch:
* **If you have no prior experience and no academic research paper on the problem statement**, it is advisable to build a quick and dirty and then understand the bias/variance relationship and do the error analysis. This would give a heading on how to improve your algorithm. 

## Training set and dev/test of different distributions:
* Always remember that the dev/test set is where you setup your target, so if you want to do better on the user uploaded images of cats, then it is advisable that most of your dev/test sets comprises of user uploaded images of cats. 
* The training set may comprise of both user uploaded images and images downloaded from the internet. Even though they are not from the same distribution, it works well.
<br>
* When the training set and the dev/test set have diffferent distributions, then the difference in the train error and the dev set error is not necessarily the measure of the variance. This may comprise of two reasons :
 * Variance
 * Data Mismatch
* To handle this difference what we can do is we can divide the training set into the train set and a small portion of the train set as the training-dev set over which we won't train on. The training-dev set has the same disribution as the train set. The difference between the train set error and the training dev set error is the variance, while the difference between the dev set and the training dev set is the <b>data mismatch</b>.

* <b>Sometimes the dev set error and the test set error maybe different by quite a lot. This means that you've overfit to your dev set. To rectify this you have to increase the dev set size in order to generalize.</b>
* For more generalized understanding one may also plot a table as shown for an example on speech recognition model for a rear view mirror:

<table>
	<th> </th>
	<th>General Speech recognition</th>
	<th>Rear-view speech data</th>
	<tr>
		<td><b>Human Level</b></td>
		<td>"Human level" 4%</td>
		<td> - </td>
	</tr>
	<tr>
		<td><b>Error on examples trained on</b></td>
		<td>"Training Error" 7%</td>
		<td> - </td>
	</tr>
	<tr>
		<td><b>Error on examples <u>NOT</u> trained on</b></td>
		<td>"Training-dev" 10%</td>
		<td> "Dev/Test error" 6% </td>
	</tr>
</table>

* For the cells with dashes, you may train on the rear view speech data and ask people to volunteer to get data on human level performance on the rear-view speech data.
* The final table may look like this:
<table>
	<th> </th>
	<th>General Speech recognition</th>
	<th>Rear-view speech data</th>
	<tr>
		<td><b>Human Level</b></td>
		<td>"Human level" 4%</td>
		<td> 6% </td>
	</tr>
	<tr>
		<td><b>Error on examples trained on</b></td>
		<td>"Training Error" 7%</td>
		<td> 6% </td>
	</tr>
	<tr>
		<td><b>Error on examples <u>NOT</u> trained on</b></td>
		<td>"Training-dev" 10%</td>
		<td> "Dev/Test error" 6% </td>
	</tr>
</table>


* The table as a whole may not be able to guide on what to do next. But the values of variance, data mismatch and avoidable bias surely give some information. Andrew finds that sometimes looking at the whole table also gives some inforrmation and some intuitions of what exactly is happening.

* There is no proper structured method to deal with data mismatch.
* When you have data mismatch, one approach you can take is to perform error analysis on the train and dev set and see where both of them differ.
* Another way to do is by using **Artificial Data Synthesis**. For example if you have an audio clip in the train set and the dev set contains audio clips with car noise, then what you can do is to add car noise to the trian data.
* **Caution**<br>
Whenever you are trying to use artificial data synthesis, keep in mind that you may overfit the data. For example if you have 10000 hrs of audio and only 1 hr of car noise one thing you may do is to take this 1hr car noise and play is 10000 times. This would sound pretty well to the human ear but this may actually lead your model to overfit to that particular car sound.
* Artificial data synthesis may be able to boost up the performance but one should be cautious about the problems it may give.

## Transfer Learning:
* When you have a model which has learned to clssify images and now you want to train a model in radiology, it is better to use the knowledge learned in the previous task rather than building from scratch.
* Remove the weights and biases of the last layer and train on the new X and y. You may update the previous weights and biases as well.

### When is transfer learning meaningful? :
<br>
Transfer Learning from Task A to Task B is meaningful when:<br>
* Task A and B have the same input X
* You have a lot more data for task A than task B
* Low level features from A could be helpful for learning B.

## Multi-task  learning:
* Training to learn many things at once.
* Instead of using the softmax regression what we do now is use the logistic loss function for each class of y.
* If there are unlabeled examples also, you can still learn a lot from the parts of the data where labeling is done.
* Example of autonomous vehicles which have to detect pedestrians, stop signs, traffic signals etc in an image.

### When does multitask learning make sense:
<br>
* Training on a set of tasks that could benefit from having shred low-level features
* Usually: Amount of data you have for each task is quite similar.
* Can train a big enough neural network to do well on all the tasks.
* In practice transfer learning is used more than multitask learning. Except on the field of computer vision, where multitask learning is used a bit more. But in general trand=sfer learning is used more often to get benefit of already learned models.

## End to end Deep learning:
* Instead of doing the work in parts directly training a NN to take you form start to the end.
* This is usually done <u>ONLY</u> when you have a large amount of data.
* Pros:
 * Lets the data speak.
 * Less hand-designing of components needed

* Cons:
 * May need a large amount of data
 * Excludes pootentially useful hand designed components