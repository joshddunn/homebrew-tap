curl -sL https://github.com/joshddunn/$1/archive/refs/tags/$2.tar.gz | shasum --algorithm 256 | cut -d " " -f 1
