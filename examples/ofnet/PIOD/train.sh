#!/bin/bash
set -x

weights="../../../models/resnet/resnet50.caffemodel"
solver="solver_ofnet_piod.prototxt"
../../../build/tools/caffe.bin train -solver="$solver" -weights="$weights" -gpu 0,1
