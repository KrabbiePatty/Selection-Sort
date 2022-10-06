const question = "Enter a word or type 'end' to stop";

var answers = [];

function ask() {
    process.stdout.write(question + '\n');
    process.stdout.write('  >  ');
}

process.stdin.on('data', function(data) {
    var response = data.toString().trim();
    if (response == "end") {
	process.stdout.write('\nYour words were: ')
	for (let i = 0; i < answers.length; i++) {
	    process.stdout.write(answers[i])
	    if (i + 1 < answers.length) {
		process.stdout.write(', ')
	    }
	}
	process.stdout.write('\n');
	process.exit();
    } else {
	answers.push(data.toString().trim());
	ask();
    }
    
});

ask();
