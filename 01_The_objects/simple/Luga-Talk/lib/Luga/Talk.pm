package Luga::Talk;
# ABSTRACT: Class which represents a LUGA talk

use strictures 1;
use Moo;

has raum => (
  is => 'ro',
);

has speaker => (
  is       => 'ro',
  required => 1,
);

has duration => (
  is => 'ro',
);

has title => (
  is       => 'ro',
  required => 1,
);

has abstract => (
  is => 'ro',
);

sub start {
 my $self = shift;
 return "The talk of " . $self->speaker . " has been started";
}
        
sub finish {
 my $self = shift;
 return "The talk of " . $self->speaker . " has been finished";
}

1;
