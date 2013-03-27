package WISE::static;
use Mojo::Base 'Mojolicious::Controller';

# This action will render a template
sub home {
  my $self = shift;

  # Render template "example/welcome.html.ep" with message
  $self->render;
}

sub activities {
	shift->render();
}

sub findings {
	shift->render();
}

1;
