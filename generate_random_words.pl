#!/usr/bin/perl
use strict;
use warnings;

# 生成する単語数
my $wordSize     = int( rand 1000 ) + int( rand 1000 );

# バッファ変数
my @buffer;

# 使用する文字
my @chars   = ( 'a' .. 'z' );

for( my $jobPos = 0 ; $jobPos < $wordSize ; $jobPos++ )
{
    # 各単語を構成する文字数
    my $eachWordLength  = 3;
    
    # 各単語
    my $eachWord        = '';
    
    for( my $i = 0 ; $i < $eachWordLength ; $i++ )
    {
        $eachWord   .= $chars[ int( rand( $#chars + 1 ) ) ];
    }
    
    # バッファに単語を追加する
    push( @buffer , $eachWord );
}

print join( " " , @buffer );
print "\n";

