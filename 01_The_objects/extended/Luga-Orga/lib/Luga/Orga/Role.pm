package Luga::Orga::Role;
# ABSTRACT: Moo role for common LUGA talks and workshops

use Moo::Role;

use strictures 1;

sub feedback {
  my $self = shift;
  return "The " . $self->speaker . " did a great job";
}

has speaker => (
  is       => 'ro',
  required => 1,
);

has title => (
  is       => 'ro',
  required => 1,
);


1;
