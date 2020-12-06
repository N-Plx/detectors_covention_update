use strict;
use warnings;

our %configuration;

# Variable Type is two chars.
# The first char:
#  R for raw integrated variables
#  D for dgt integrated variables
#  S for raw step by step variables
#  M for digitized multi-hit variables
#  V for voltage(time) variables
#
# The second char:
# i for integers
# d for doubles

my $bankId   = 400;
my $bankname = "ctof";

sub define_bank
{
	
	# uploading the hit definition
	insert_bank_variable(\%configuration, $bankname, "bankid", $bankId, "Di", "$bankname bank ID");
	insert_bank_variable(\%configuration, $bankname, "sector",       1, "Di", "Always 1");
	insert_bank_variable(\%configuration, $bankname, "layer",        2, "Di", "Always 1");
	insert_bank_variable(\%configuration, $bankname, "component",    3, "Di", "paddle number");
	insert_bank_variable(\%configuration, $bankname, "ADC_order",    4, "Di", "side of PMT");
	insert_bank_variable(\%configuration, $bankname, "ADC_ADC",      5, "Di", "ADC");
	insert_bank_variable(\%configuration, $bankname, "ADC_time" ,    6, "Dd", "tdc*24.0/1000");
	insert_bank_variable(\%configuration, $bankname, "ADC_ped" ,     6, "Di", "pedestal");
	insert_bank_variable(\%configuration, $bankname, "TDC_order",    7, "Di", "side of PMT + 2");
	insert_bank_variable(\%configuration, $bankname, "TDC_TDC",      8, "Di", "TDC");
	insert_bank_variable(\%configuration, $bankname, "hitn",        99, "Di", "hit number");
}
