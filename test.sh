#! /bin/bash

function clean {
    git clean -dfx
    rm -fr src
}

clean
python bootstrap.py -c egg.cfg
./bin/buildout -c egg.cfg
ls bin
./bin/tom_main
./bin/tom

clean
python bootstrap.py -c develop.cfg
./bin/buildout -c develop.cfg
ls bin
./bin/tom_main
./bin/tom

clean
python bootstrap.py -c source.cfg
./bin/buildout -c source.cfg
ls bin
./bin/tom_main
./bin/tom

clean
python bootstrap.py -c localsource.cfg
./bin/buildout -c localsource.cfg
ls bin
./bin/tom_main
./bin/tom

