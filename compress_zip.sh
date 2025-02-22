#! /bin/bash

# Baca kata sandi dari file password.txt
PASSWORD=$(cat password.txt)

# Baca komentar dari file comment.txt
COMMENT=$(cat comment.txt)

# Mendapatkan informasi perangkat
GET_DEVICE="$(uname -a)"

# Nama file atau direktori yang akan dikompres

# Rename Test With Your Files / Your Folders
FILES="test"

# Nama arsip output
ARCHIVE="$FILES.done.zip"

# Perintah untuk mengompres file dengan kata sandi dan menambahkan komentar
zip -P "$PASSWORD" -z "$ARCHIVE" $FILES <<EOF
$COMMENT
$GET_DEVICE
EOF

echo "Kompresi selesai: $ARCHIVE"