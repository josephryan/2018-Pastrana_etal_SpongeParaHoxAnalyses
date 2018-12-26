#!/usr/bin/perl

# this script requires JFR::Fasta which is available from
#    https://github.com/josephryan/JFR-PerlModules
#
# This script calculates average variability per column by calculating
# the sum of sums of total number of distinct amino acids per column 
# and dividing by 60

use strict;
use warnings;
use JFR::Fasta;
use Data::Dumper;

our @FAS = qw(Fortunato_150.fasta Fortunato_259.fasta Pastrana_375.fasta);

MAIN: {
    foreach my $file (@FAS) {
        my $fp = JFR::Fasta->new($file);
        my @counts = ();
        while (my $rec = $fp->get_record()) {
            my @cols = split /|/, $rec->{'seq'};
            for (my $i = 0; $i < @cols; $i++) {
                $counts[$i]->{$cols[$i]}++;
            }
        }
        my $count = 0;
        foreach my $rh_col (@counts) {
            $count += scalar(keys(%{$rh_col}));
        }
        my $variation = $count / 60;
        print "$file: average variation per column $variation\n";
    }
}
