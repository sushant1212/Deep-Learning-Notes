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

## RNNs:

### Why not conventional neural networks:
1. Variable amount of input and output
2. Suppose the word "Harry" occurs as the first word of the sentence. Then the NN would learn to sort of treat the first word specially. But what if in the next sentence the name "Harry" comes in some other position.

<img src="images/RNN.png">

### Points to understand from the above slide
* The RNN learns from the prev as well as form the current (word or vector). 
* Since it only learns from the previous part, it may have diificulty in dealing woth sentences in the lower half of the slide.
* The diagram on the right is another way people depict RNNs in papers etc.


<img src="images/RNN(2).png">

### Points to understand from the above slide
* Wax ---> Notation means that it is computed on an 'x' like quantity to calculate an 'a' type quantity. Same applies to the bias terms as well(notation).

* "a<0>" is taken as a vector of zeros or it is randomly initialized.

<img src="images/Simplified_RNN_notation.png">

### Points to understand from the above slide
* This slide shows about the short notation of RNNs.
* Writing as Wa and as ["a<t-1>" , X(t)] has reduced the amount of calculation we have to write and has also vectorized the step.
