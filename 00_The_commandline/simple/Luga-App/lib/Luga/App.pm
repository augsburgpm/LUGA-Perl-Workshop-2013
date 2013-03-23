package Luga::App;
use base 'App::Cmd::Simple';

# ABSTRACT: A quick example for easy commandline scripts

use 5.10.1;

sub opt_spec {
  return (
    ['start|s'  => 'start the LUGA workshop'],
    ['finish|f' => 'finish the LUGA workshop'],
  );
}

sub validate_args {
  my ($self, $opt, $args) = @_;
  $self->usage_error("no args expected") if @$args;
}

sub execute {
  my ($self, $opt, $args) = @_;

  # Ternary conditional
  ( $opt->start  ? (say "LUGA Workshop has been started")  : (),
    $opt->finish ? (say "LUGA Workshop has been finished") : ()
  );

}

1;
