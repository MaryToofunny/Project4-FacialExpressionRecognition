# **Project 4: Facial Expression Analysis**

## **Introduction**
With the ever-increasing computational powers and much refined deep learning models and the availability of data sets on social media platforms, emotion detection technology is reaching new milestones. 

Furthermore, the presence of data in the form of videos, audio, images leads to a robust scope for emotion detection technologies to show their tremendous capabilities. According to a report by Markets and Markets Research, the value of the emotion recognition field is projected to grow from USD 19.5 billion in 2020 to USD 37.1 billion by 2026, at a Compound Annual Growth Rate (CAGR) of 11.3%.

We are Future Co., a Data Analysis company that's created a model to assist predicting users' facial expression.

### **Team Members**
- Eric
- Jane
- Mary
- Nato
- Terry


## **Project Goal** 
- Create a Machine Learning Model to analyze people’s faces (in the form of pictures) to see how a person is feeling.


- Potential use cases of a predictive emotion model: 
    - Market research: 
        - moment-by-moment facial expressions and emotions (facial coding) automatically vs verbal Surveys
    - Safe and personalized cars:
        - Driver's mood
    - Virtual  Assistances: 
        - siri and Alexa facial expression recognition adjusting to user's mood
    - Video games testing
        - Gamers real time FER
    - Law enforcement, surveillance, and monitoring
    - Children Safety and surveillance
        - Schools and Daycares
    - Marketing, advertising, media, entertainment, and PR(Public Relations)
        - Retail,Malls
    - More in-depth interviews
        - HR


## **Data**
Dataset used for this project was retrieved from Kaggle.com (https://www.kaggle.com/datasets/debanga/facial-expression-recognition-challenge?select=fer2013.tar)

- The dataset has 48x48 pixel greyscale images of faces
- The dataset is comprised of 7 different categories 
    - 0=Angry
    - 1=Disgust
    - 2=Fear
    - 3=Happy
    - 4=Sad
    - 5=Surprise
    - 6=Neutral)
- Total dataset amounts to over 28,000 examples which have been cleaned and reduced to include only "Happy" or "Sad" samples 

- The original dataset was prepared by Pierre-Luc Carrier and Aaron Courville.


## **Model**
The eventual model is able to scan the people’s faces in 48x48 pixel images and read how the person is feeling at that moment ("Happy" or "Sad").

- ### **Libraries used:**
    - Pandas
    - Matplotlib
    - sklearn
    - numby
    - keras
    - cv2
    - PIL

- ### **Training Process**
    - An initial basic proof of concept model was first established, compiled and fit followed by three more robust and unique CNN models using varying and multiple layers of conv2d, max pool2d, flatten as well as a variety of filter numbers, kernel sizes and epochs and steps_per_epoch. Ultimately, the models varied from 30k trainable parameters to 3.8 million. The most accurate of these optimized models was "Model A" with a 95% accuracy evaluation score.  

    - **Limitations:**
        - The model's effectiveness is beholden to the quality of the dataset. While the images are categorized based on emotion, the degree and visual display of those emotions' could differ greatly. 
        - The quality or original resolution of the scaled imagesthemselves are also limited at a certain base level which may muddy a model's ability to effectively differentiate facial features regardless of how many layers and filters are applied. 
        - The Dataset itself was of a relatively limited size which could lead to undertraining of our model. In part, this was by design as we reduced the Kaggle data set down to the two emotions of Sad and Happy from the original 7, cutting the total dataset from 28000+ to roughly 8000 samples. This was done to make the dataset maleable within our coding and notebooks and would be potentially averted through the use of resources such as AWS if the project were to be scaled up in size. 
            - One workaround in the meantime was the use of Repeated K-Fold Cross Validation which split our data into 5 k "folds" or sections where four of the sections would be combined to form the training data set and one would be held back as the test or validation dataset. (AKA an 80-20% train test split in our data).
            - The real strength of this is that a model can actually be sequentially trained on all five unique grouping variations of the folds, meaning that a different fold is reserved as the test set and the other four become the training set of each respective model. The idea being then to take the mean of your now five trained models to get an overall accuracy score or even just select the best performing one.
            - This becomes a useful tool when working with a limited data set and seeking to maximize that available data that can be used to train and test a model on. Especially useful for the reduced dataset in this case. Ultimately, it also begets a smarter model with less variance error potential when testing its effectiveness. 

### **Results**
With the model trained and showing a promising evaluation score, we next sought to feed some real life test data through the model. By way of the use of OpenCV (open source computer vision library), a relatively crude but effective function was coded to scrape an image url from the internet, pre-process it to the desired grayscale and shape and then feed it into our model for analysis. 
    
- Fun Finding: Is Mona Lisa happy or sad?
    - By using the above defined function and based on our optimized Facial Expression Recognition Model, she is in fact "SAD"!!!


## References:
- Data source: Kaggle.com
(https://www.kaggle.com/datasets/debanga/facial-expression-recognition-challenge?select=fer2013.tar)
- Real-time emotion recognition: Potential use cases and challenges Article
https://indiaai.gov.in/article/real-time-emotion-recognition-potential-use-cases-and-challenges

