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
	my $self = shift;
	# Here will be the party!

	$self->render();
}

1;
