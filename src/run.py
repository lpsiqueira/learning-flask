import sys
import os
from market import app

@app.shell_context_processor
def make_shell_context():
	print("Shell context processor called")
	parent_dir = os.path.abspath(os.path.join(__file__, '../..'))
	sys.path.append(f'{parent_dir}\\other')
	
	return {'app': app}

if __name__ == '__main__':
	app.run(debug=True)