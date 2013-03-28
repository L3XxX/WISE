package WISE::Static;
use Mojo::Base 'Mojolicious::Controller';
use WISE::Toolkit;
use Data::Dumper;

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
	my $t = WISE::Toolkit->new;
	$self->stash("tab" => $t->mddir2tab("../findings"));

	$self->render();
}


1;
