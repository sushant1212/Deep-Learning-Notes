# Sequence Models:
* Used in:
 1. Speech Recognition
 2. Music Generation
 3. Sentiment Classification
 4. DNA sequence analysis
 5. Machine Translation
 6. Video activity recognition
 7. Name entity recognition


## Notation:
(Name Entity recogntion example):  

<img src="images/notation.png">

### Representing Words:
* Make a dictionary of like 10000 of the most commonly occuring words or look through online dictionary and take the 10000 most commonly occuring english words.
* Modern commercial applications use dictoinary size is around 50k.
* Represent each word as a **one hot** vector.
* For words not in the dictionary, create a UNK token in the dictionary. This will be seen later in this material.

## Recurrent Neural Networks (RNNs):

### Why not conventional neural networks:
1. Variable amount of input and output
2. Suppose the word "Harry" occurs as the first word of the sentence. Then the NN would learn to sort of treat the first word specially. But what if in the next sentence the name "Harry" comes in some other position.

<img src="images/RNN.png">

### Points to understand from the above slide
* The RNN learns from the prev as well as form the current (word or vector). 
* Since it only learns from the previous part, it may have diificulty in dealing with sentences in the lower half of the slide.
* The diagram on the right is another way people depict RNNs in papers etc.

* **All the parameters Waa, Wax, Wya are all the same. Think of this as different time steps of calculation.**


<img src="images/RNN(2).png">

### Points to understand from the above slide
* Wax ---> Notation means that it is computed on an 'x' like quantity to calculate an 'a' type quantity. Same applies to the bias terms as well(notation).

* "a<0>" is taken as a vector of zeros or it is randomly initialized.

* **tanh is one of the most commonly used activation function here. Although ReLU may also be used.**

<img src="images/Simplified_RNN_notation.png">

### Points to understand from the above slide
* This slide shows about the short notation of RNNs.
* Writing as Wa and as ["a&#60;t-1&#62;" , X(t)] has reduced the amount of calculation we have to write and has also vectorized the step.


### Backprop through time:
<img src="images/Backprop_thru_time.png">

* **Re-iterating the fact that the parameters are the same. Hence it has been shown by arrows.**

* Loss function is again the same Cross-Entropy Loss function.
* The cost function is sum of all the losses.
* Since during the backpropagation algorithm we would have to update the weights of a previous time step, hence its name **backpropagation through time** which actually is an apt name for this.

### Different types of RNNs:
<img src="images/RNN_architectures.png">

## Language Models:

### What is a language model:
* To identify that it is "tha apple and pear salad" and not "the apple and *pair* salad"

* The work of the language model is to predict what is the probability of a given sentence. It outputs the probability of the sequence of words.
* The words in the sentence are represented as y&#60;i&#62;

### How to build a language model:
* We require a large **corpus** of English text. Corpus is an NLP term which means a large body or large set.

* Suppose the sentence in the training example is "Cats average 15 hours of sleep a day."

 1. First TOKENIZE the sentence by building a vocabulary and converting each word to a one-hot vector.
 2. Another common thing to do is to add an &#60;EOS&#62; token for a full-stop.
 3. Then map these to y&#60;i&#62;. So here it would go on from y<1> to y<9> (including the EOS token). When we tokenize, we can decide whether EOS has to be a token or not.
 4. If sometimes the word doesn't occur in the dictionary we made, we may assign an "<UNK>" token to this word. For example, "The Egyptian <u>Mau</u> is a breed of cat."

### Modelling an RNN for building a language model:
* Running example:  
"Cats average 15 hours of sleep a day.<EOS>"

<img src="images/RNN_model.png">

* The output from y is based on a softmax classifier, and hence there is a softmax loss function in the end.
* x&#60;t&#62; = y&#60;t-1&#62;
* **Notice the difference between yi and yi_hat**
* The output of the softmax is the probability given the previous words of the sentence.

### Sampling Novel Sequences:
* One way to see what the RNN has learnt is to sample novel sequences.
* Take a[0] and x<1> as 0 and find the probability of each word in the vocabulary.
* Now use `np.random.choice()` to get the first word. Now during sampling, pass the value of **y_hat<1> instead of y<1>** to the next time step.

* Continue this process and choose randomly using `np.random.choice()`.

* We can also have a "**character level RNN**". So the vocabulary is like [a,b,c...' ', ., ;, 0,1,3....,A,B,C....].
* Pros: We don't have to worry about the &#60;UNK&#62; token.
* Cons: It maybe too long and more computationally expensive. This may be the reason why word level language models work better than the character level models.

## Vanishing Gradients in RNNs:
* Since RNNs are long we may face the problem of vanishing and exploding gradients. 
* Exploding gradients are easy to take care of by just using **Gradient Clipping**. This means that if the gradient crosses a threshold then re-scale some of your gradient vectors so that is not too big.
* Vanishing gradients are much harder to handle. Due to this the network may not be able to use the information from layers in the beginning which may prove to be useful. (For very deep networks)

### Gated Recurrent Units (GRUs):
* Simplified Version of GRU:
<img src="images/GRU_simple.png">

* c&#60;t&#62; = a&#60;t&#62; here. But it's not the same always. In LSTMs it's different.

* c&#60;t&#62; is called memory cell. c_telda&#60;t&#62; is a potential replacement of c&#60;t&#62;.
* GAMMAu is called the Gate. Its value lies between 0 and 1 (obviously because if the sigmid). The value which comes out of the gate determines whether there needs to be change in the memory cell or not.
* The value of the c&#60;t&#62; is given by the third equation.
* The pictorial summarization is given in the top-left side of the slide. Notice that these values of c&#60;t-1&#62; and GAMMAu determine the value of y_hat&#60;t&#62; and the value of c&#60;t&#62; which here is the value of a&#60;t&#62;.
* All the quantities marked in red boxes have the same dimension.

<img src="images/Full_GRU.png">

**Correction in the above slide:**  
there should be a  ' * ' sign instead of '+' in the 4th line.

* GAMMA_r is the metric that calculates the relevence of c&#60;t-1&#62; and c_telda&#60;t&#62;

* Researches have proven that it actually proves to be quite useful to have GAMMA_r term.

### Long Short Term Memory units (LSTMs):
<img src="images/LSTM.png">
* First point is to note that c&#60;t&#62; is not same as a&#60;t&#62; and hence in the gates also the equations are different than before.
* There are three gates in this unit, and hence the complexity is more than GRUs. 
* Instead of the 1-GAMMA_u in GRUs, We have the forget gate here. And also since c and a aren't the same there is an output gate to compute a from c.

<img src="images/LSTM_in_pics.png">
* One main thing to be noted is the red line in the bottom figures which shows the memory and how the LSTM can use this memory in the future very easily. Also it also shows how easy it is for the network to learn to retain the memory or change it accordingly.

* LSTMs are usually preferred over GRUs, but are more computationally expensive.
* Theoretically, there is no hard and fast rule that LSTMs are better than GRUs or vice versa.
* **PEEPHOLE CONNECTION** is a variation of LSTMs, when the gates also include c&#60;t-1&#62; during its computation.