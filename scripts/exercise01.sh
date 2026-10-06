# Written by Neil McAdams
# 2026/10/05

# Exercise 1.a: Select a set of reference sequences from the ref_sequences/
# directory. Use muscle to create a multiple sequence alignment. Show the
# command and briefly describe the output format.

# Notes: muscle usage is muscle -align <fasta file> -output <output file>
# Notes: muscle appears to only accept a single fasta file. From looking
#	 at examples I will need to concatenate all sequences for a specific
#	 gene in data/ into a single file and supply that as input.

# For ease of calling muscle
muscle=/home/neilm/ICB2026/software/muscle/muscle-v5.3

# hsp70 multiple sequence alignment
echo "[$(date)]:Beginning HSP70 multiple sequence alignment..."
$muscle -align /home/neilm/ICB2026/midterm/data/concatenated_hsp70.fasta \
	-output /home/neilm/ICB2026/midterm/outputs/exercise01/hsp70_msa.afa
echo "[$(date)]:Finished HSP70 multiple sequence alignment!"

# mcrA multiple sequence alignment
echo "[$(date)]:Beginning mcrA multiple sequence alignment..."
$muscle -align /home/neilm/ICB2026/midterm/data/concatenated_mcrA.fasta \
        -output /home/neilm/ICB2026/midterm/outputs/exercise01/mcrA_msa.afa
echo "[$(date)]:Finished mcrA multiple sequence alignment!"

# Exercise 1.b: Use hmmbuild to build an HMM profile from your alignment.
# Report the command and the name of your profile.

# Notes: hmmbuild usage is hmmbuild [-options] <hmm output> <msa input>
# Notes: hmmer was installed to /usr/local/bin and added to PATH so I can call it
#	 by invoking whatever command I need.

hmmbuild ./outputs/exercise01/hsp70_hmm /home/neilm/ICB2026/midterm/outputs/exercise01/hsp70_msa.afa
