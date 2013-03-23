package Luga::Workshop;
# ABSTRACT: Class for LUGA workshop with inheritance
use Moo;
extends 'Luga::Talk';

use strictures 1;

has '+title' => (
        default => sub {"Workshop"},
);

1;

=head1 SYNOPSIS

    my $work = Luga::Workshop->new( speaker => 'rhaen',
                                    title => 'Perl 2013');
    $work->start;
    $work->feedback;

This class is composed with a role which imports the
attributes. Please see L<Luga::Orga::Role>.

=method start

This method starts the workshop.

=head1 SEE ALSO

=for :list
* L<Luga::Orga::Role>
* L<Moo>
* L<Moo::Role>
* L<Class::Method::Modifiers>