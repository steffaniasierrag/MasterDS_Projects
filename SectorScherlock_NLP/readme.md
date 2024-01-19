# SectorScherlock: Classifying company descriptions into business sectors

## Table of Contents

1. [Introduction](#introduction)
2. [Files](#files)
3. [Dependencies](#dependencies)
4. [Course Content](#course-content)
 
## Introduction
The goal of this project is to identify linguistic patterns in companies’ descriptions in order to categorise them into different classes according to which industry they belong and eventually let keywords typical of each class emerge. Different techniques were used – namely gradient boosting and SVM classifiers, CNN and BERT deep learning  algorithms – to categorize the companies’ descriptions into their respective business sectors, as well as employed word and ngram frequency, word clouds and topic modelling to identify business sectors’ most informative and specific keywords.

## Files
This folder contains a full report file, a presentation where you can find a summary of the project's findings, and a folder with the code used for the analysis.

The code folder contains:
  * a companies.csv and company_industries.csv file downloaded from [Kaggle](https://www.kaggle.com/datasets/arshkon/linkedin-job-postings).
  * A industries_mapping_final.csv file containing the map from the original 141 industry categories to the new 15 categories.
  * SectorSherlock_code.ipynb notebook with the implementation of the code used.

## Dependencies
* Jupyter notebook
* NLTK
* Spacy
* Scikit-learn
* Tensorflow

## Course Content
Completed as part of the Text Analytics course. This project was developed in collaboration with Irene Crepaldi, Alex Degaudenzi and Alla Usova.
