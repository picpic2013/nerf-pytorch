
CUDA_DEVICE_VISIABLE=$1
CONFIG_PATH=$2



export CUDA_VISIBLE_DEVICES=$CUDA_DEVICE_VISIABLE
export PYTHONPATH=$PWD

# BASE_DIR=`cat $CONFIG_PATH | grep basedir | sed 's/basedir = //g'`
BASE_DIR="./logs2"
EXP_NAME=`cat $CONFIG_PATH | grep expname | sed 's/expname = //g'`

rm -rf $PWD/$BASE_DIR/$EXP_NAME
python $PWD/run_nerf.py --config $CONFIG_PATH --basedir $BASE_DIR --i_testset 1000 --n_iters 800000