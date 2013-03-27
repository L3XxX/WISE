package WISE;
use Mojo::Base 'Mojolicious';

# Web Interface for Segfault Enthusiasts

# This method will run once at server start
sub startup {
  my $self = shift;

  # Documentation browser under "/perldoc"
  $self->plugin('PODRenderer');
  #$self->plugin('DefaultHelpers');
  $self->secret('booh');

  # Router
  my $r = $self->routes;

  # Normal route to controller
  $r->get('/')->to('static#home');
  $r->get('/home')->to('static#home');
  $r->get('/activities')->to('static#activities');
  $r->get('/findings')->to('static#findings');
}

1;
