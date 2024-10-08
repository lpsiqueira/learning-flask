$env:FLASK_APP=".\src\market.py"
function activateVenv {
    .\venv\Scripts\Activate.ps1
}
function runApp {
	$env:FLASK_DEBUG=1
	flask run
}

function flaskShell {
	flask shell
}


if ($args.Count -eq 0) {
    Write-Host "Please provide an argument."
    exit
}

$arg = $args[0]
switch ($arg.ToLower()) {
    'venv' {
        activateVenv
    }
    
	'run' {
        runApp
    }

    'shell' {
        flaskShell
    }

    default {
        Write-Host "Invalid argument."
    }
}