package Luga::App::Command::Start;
use Luga::App -command;

use 5.10.1;

sub validate_args {
  my ($self, $opt, $args) = @_;
  $self->usage_error("no args expected") if @$args;
}

sub abstract {
  return "Start the LUGA workshop";
}

sub execute {
  say "LUGA workshop has been started";
}

1;
