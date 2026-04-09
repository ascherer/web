#!/bin/sh -e

# Add /ActualText attribute in PDF stream for C/WEB identifiers that contain up
# to four underline characters in input like
#
# @d _ gettext
# @d max_file_name_length 60
# @c
# size_t common_init(void);@/
# static void bignum_times_ten(bignum*);
#
sed \
-e 's/\\|\\_/\\pdfliteral direct {%\
\/Span << \/ActualText (_) >> BDC}%\
&%\
\\pdfliteral direct {EMC}/g' \
-e 's/\\[\&]{\([A-Za-z0-9]*\)\\_\([A-Za-z0-9]*\)}/\\pdfliteral direct {%\
\/Span << \/ActualText (\1_\2) >> BDC}%\
&%\
\\pdfliteral direct {EMC}/g' \
-e 's/\\[\&]{\([A-Za-z0-9]*\)\\_\([A-Za-z0-9]*\)\\_\([A-Za-z0-9]*\)}/\\pdfliteral direct {%\
\/Span << \/ActualText (\1_\2_\3) >> BDC}%\
&%\
\\pdfliteral direct {EMC}/g' \
-e 's/\\[\&]{\([A-Za-z0-9]*\)\\_\([A-Za-z0-9]*\)\\_\([A-Za-z0-9]*\)\\_\([A-Za-z0-9]*\)}/\\pdfliteral direct {%\
\/Span << \/ActualText (\1_\2_\3_\4) >> BDC}%\
&%\
\\pdfliteral direct {EMC}/g' \
-e 's/\\[\&]{\([A-Za-z0-9]*\)\\_\([A-Za-z0-9]*\)\\_\([A-Za-z0-9]*\)\\_\([A-Za-z0-9]*\)\\_\([A-Za-z0-9]*\)}/\\pdfliteral direct {%\
\/Span << \/ActualText (\1_\2_\3_\4_\5) >> BDC}%\
&%\
\\pdfliteral direct {EMC}/g'
