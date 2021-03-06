# Complex Ranker based on LTR_Cascade Package #

My project is to create a dataset of ranked documnets from a large number of queries which does not have judgements using learning-to-rank technology. The dataset is ranked using a model trained from LTR_Cascade package. This dataset will later be helpful to evaluate and analysis ranking functions as a good base line. 
The first step of this project is to:
- Recreate the Gov2 experiment from LTR_Cascade
- [Analysis the running time of Gov2 experiment](https://github.com/JerryMXB/LTR_Cascade/blob/master/experiments/Gov2/data/mksvm/README.md)
- Create an experiment on ClueWeb09B subset

The LTR_Cascade package generates more than 400 features including gobal query/ doc features, unigram features and bigram features using 6 different ranking functions.

My project forked form a reference implementation of the cascade ranking
model in the SIGIR '17 paper "Efficient Cost-Aware Cascade Ranking for
Multi-Stage Retrieval".

If you use this package or theirs in your work, please cite the following paper:
```
@inproceedings{chen_efficient_2017,
 author = {Chen, Ruey-Cheng and Gallagher, Luke and Blanco, Roi and Culpepper, J. Shane},
 title = {Efficient Cost-Aware Cascade Ranking in Multi-Stage Retrieval},
 booktitle = {Proceedings of {SIGIR} '17},
 year = {2017},
 pages = {445--454},
 publisher = {ACM}
} 
```

## AWS EC2 Setup ##
All my experiments are done in AWS EC2, due to the fact that this package requires a real big memory and takes a long time to run.

Install the C++ dependencies (Luckily AWS provides a really easy way to setup the environment)
```
sudo yum groupinstall "Development Tools"
```

Install Zlib-devel dependencies (Zlib does not work for unknown reason)
```
sudo yum install zlib-devel
```

## Get Started ##

To compile the feature processing binaries:

    ./init-script/build.sh

This will also install/compile all the external dependencies such as Indri and
WANDbl.  Programs and header files will be installed at `external/local/bin`.

To install python dependencies:

    pip install -r python/requirements.txt

Other bash scripts and Makefiles under `experiments` should work out of the box.


## Ranking Experiments ##
My recreating result and analysis can be found
* [Gov2](experiments/Gov2/)

Experiment on ClueWeb09B Subset
* [StepByStep](experiments/StepByStep)
