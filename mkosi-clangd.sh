#!/usr/bin/env sh
tee mkosi-clangd.build > /dev/null << EOF
#!/usr/bin/env sh
exec clangd \
	--compile-commands-dir=/root/build \
	--path-mappings=\
        "$(pwd)=/root/src,\
        "$(pwd)/mkosi.builddir=/root/build,\
        "$(pwd)/mkosi.includedir=/usr/include,\
        "$(pwd)/mkosi.installdir=/root/dest \
	--header-insertion=never
EOF
chmod +x mkosi-clangd.build
exec sudo mkosi --source-file-transfer=mount --incremental --skip-final-phase --build-script mkosi-clangd.build --force build
