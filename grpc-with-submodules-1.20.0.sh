set -e

git clone --depth 1 -b v1.20.0 https://github.com/grpc/grpc

cd grpc
git submodule update --init
find . -name .git -type d -prune -exec rm -rf {} \;

cd ..
tar czvf grpc-with-submodules-1.20.0.tar.gz grpc
rm -rf grpc

