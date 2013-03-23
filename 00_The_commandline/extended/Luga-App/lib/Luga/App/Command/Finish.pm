package Luga::App::Command::Finish;
use Luga::App -command;

use 5.10.1;

sub opt_spec {
  return (["time|t=i", "Wait seconds before finishing", {required => 1},],);
}

sub validate_args {
  my ($self, $opt, $args) = @_;
  $self->usage_error("no args expected") if @$args;
}

sub abstract {
  return "Finishes the LUGA workshop";

}

sub execute {
  my ($self, $opt) = @_;
  say "I will finish the workshop in " . $opt->time . " seconds";
  sleep $opt->time;
  say "LUGA workshop has been finished";
}

1;
