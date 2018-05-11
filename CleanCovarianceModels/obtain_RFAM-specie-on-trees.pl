#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper;

my $ACC = $ARGV[0];
$ACC =~ s/^(\/.*\/)(.*)$/$2/g;
$ACC =~ s/(RF.*)(\.seed_tree)/$1/g;

my (%test_acc, %true_acc);
open my $IN, "< $ARGV[0]" or die "The file is not working well\n";
open my $IN2, "< query.list" or die;
while(<$IN>){
	chomp;
	my @species = split /\,/, $_;
	&submit_to_test_subset(\@species); #Create hash with test acc to compare
}

while (<$IN2>){
	chomp;
	$true_acc{$_} = 1;
}
my $anworte = &test_acc_query(\%test_acc);
if ($anworte == 0){          
                ;
        } else {
                print "$ACC\n";
        }
close $IN;

##### Subs

sub submit_to_test_subset{
	my $all = shift;
	foreach my $elements (@{$all}){
		$elements =~ s/(.*)(\[\d+\])(.*)/$2/g;
		$elements =~ s/\[|\]//g;
		$test_acc{$elements} = 1;
	}
}
sub test_acc_query{
	my $toTest = shift;
	my @accepted_list;
	my $response;
	foreach my $list_nmb (%{$toTest}){
		if (exists $true_acc{$list_nmb}){
			push @accepted_list, $list_nmb;
		} else {
			next;
		}
	}
	my $number = scalar @accepted_list;
	if ($number > 0){
		$response = 1;
	} else {
		$response = 0;
	}
	return $response;
}
