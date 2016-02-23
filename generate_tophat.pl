use strict;
use warnings;

open(FILE,"/home3/rnaseq-shared/Gonzalo/file.list.txt") or die;
while(<FILE>){
	chomp;
	my $name = $_;
	$name =~ s/\.Q30L50\.fq\.gz//;
	open(OUT,">$name.sh") or die;
	print OUT "#!/bin/bash\n";
	print OUT "tophat2 -G /home3/genes_gtf/Arabidopsis_thaliana.TAIR10.26.gtf_final -I 2000 -o /home3/Gonzalo/01_tophat/test_perl/tophat_$name --library-type=fr-firststrand /home3/rnaseq-shared/Gonzalo/indexed_genome/genome /home3/rnaseq-shared/Gonzalo/00_cleaned_reads/$name.Q30L50.fq.gz";
	print $name;
	close OUT;
}
close FILE;


	
