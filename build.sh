#/bin/sh
THRIFT_BINARY="docker run -v "$PWD:/data" thrift thrift -o /data --gen go:package_prefix=github.com/hairqles/evernote-sdk-go/"
PARAMS="-gen go:package_prefix=github.com/hairqles/evernote-sdk-go/"
THRIFT_FILES_DIR="/data/src"

$THRIFT_BINARY $PARAMS $THRIFT_FILES_DIR/Errors.thrift
$THRIFT_BINARY $PARAMS $THRIFT_FILES_DIR/Limits.thrift
$THRIFT_BINARY $PARAMS $THRIFT_FILES_DIR/NoteStore.thrift
$THRIFT_BINARY $PARAMS $THRIFT_FILES_DIR/Types.thrift
$THRIFT_BINARY $PARAMS $THRIFT_FILES_DIR/UserStore.thrift