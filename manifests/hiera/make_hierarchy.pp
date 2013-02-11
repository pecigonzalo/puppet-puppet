define puppet::hiera::make_hierarchy(
	$yaml,
	$json
) {

	if $yaml {
		file{"${puppet::hiera::install::hiera_datadir}/${name}.yaml":
			ensure	=> file,
			replace => false,
		}
	}

	if $json {
		file{"${puppet::hiera::install::hiera_datadir}/${name}.json":
			ensure	=> file,
			replace => false,
			content => "{\n\n}\n",
		}
	}
}