package Luga::Talk;
# ABSTRACT: Class for Luga::Talks with role usage

use strictures 1;
use Moo;
with('Luga::Orga::Role');

sub start {
  my $self = shift;
  return "The talk " . $self->title . " will start now";
}

before 'start' => sub {
    print "Hej, expect something before start!\n";
};

1;

=head1 SYNOPSIS

    my $talk = Luga::Talk->new( speaker => 'rhaen',
                                title => 'Perl 2013');
    $talk->start;
    $talk->feedback;

This class is composed with a role which imports the
attributes. Please see L<Luga::Orga::Role>.

=method start

This method starts the talk.

=head1 SEE ALSO

=for :list
* L<Luga::Orga::Role>
* L<Moo>
* L<Moo::Role>
* L<Class::Method::Modifiers>