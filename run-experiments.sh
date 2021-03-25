# Set up datasets

# Coat
mkdir -p data/coat/raw
cd data/coat/raw
wget https://www.cs.cornell.edu/~schnabts/mnar/coat.zip
unzip coat.zip
mv coat/test.ascii coat/train.ascii .
rm -rf coat.zip coat/
cd ../..

# Yahoo
mkdir -p yahoo/
cd yahoo
cp ../../../../drive/MyDrive/dataset/ydata-ymusic-rating-study-v1_0-test.txt test.txt
cp ../../../../drive/MyDrive/dataset/ydata-ymusic-rating-study-v1_0-train.txt train.txt

# Run real world experiments in Saito paper
cd ../../src
python main.py --num_sims 5 --data coat
python main.py --num_sims 20 --data yahoo
