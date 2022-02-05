#! /bin/bash

# echo
if [ $1 == 'echo' ]; then
    echo 'Opaaaaaaaa! ☕'
fi

# flutter --version
if [ $1 == 'f_v' ]; then
    fvm flutter --version
fi

# flutter doctor --verbose
if [ $1 == "f_doc-v" ]; then
    fvm flutter doctor --verbose
fi

# flutter build runner
if [ $1 == "f_br" ]; then
    fvm flutter pub run build_runner build --delete-conflicting-outputs
fi

# flutter clean
if [ $1 == "f_c" ]; then
    fvm flutter clean && rm -rf pubspec.lock && fvm flutter pub get
fi

# clear ios
if [ $1 == "rn_cios" ]; then
    rm -rf ~/Library/Caches/CocoaPods && rm -rf ~/Library/Logs/Pods && rm -rf Pods && rm -rf ~/Library/Developer/Xcode/DerivedData/* -y && pod deintegrate && pod setup
fi

# pod deintegrate
if [ $1 == "ios_deintegrate" ]; then
    pod deintegrate && rm -rf Podfile.lock && pod install
fi

# docker-up
if [ $1 == 'docker-up' ]; then
    docker-compose up -d
fi

# docker-down
if [ $1 == 'docker-down' ]; then
    docker rm -f $(docker ps -aq)
fi