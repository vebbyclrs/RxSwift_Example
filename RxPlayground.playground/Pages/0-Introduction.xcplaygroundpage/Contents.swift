/*:
 # Introduction
 
 ## What is Reactive Programming?
 Definition from [wikipedia](https://en.wikipedia.org/wiki/Reactive_programming) :
 - Programming paradigm that concerned with **asynchronous data streams** and **propagation of change**
 
 ### But, what do you mean by data streams?
 
 ![Data Streams](0-datastream.png)
 
 We can listen to this stream!
 
 If you familiar with **_Observer Pattern_**, this _listening_ process usually called as **subsribing**.
 And the stream that being listened is called a subject, or in ReactiveX terms we called it as an **Observable**.
 
 ### Next, is about Propagation of Change...
 That means that while we listening to a stream, we can transform its data.
 
 ![Transforming a stream](0-propagationofchange.png)
 
 ## Reminder!
 The streams will still flowing even when nobody's is listening to it. But the streams itself won't do anything for you.
 
 _source for image: [@andrestaltz](https://twitter.com/andrestaltz) from [The introduction to Reactive Programming you've been missing](https://gist.github.com/staltz/868e7e9bc2a7b8c1f754)_
 */
//: [Let's start with **Observable**](@next)
