function getVisibleWindow(name) {
	const app = App.find(name);

	if (app) {
		return app.windows({ visible: true })[0];
	}
}

function position(name, x, y, width, height) {
	const win = typeof name === 'string' ? getVisibleWindow(name) : name;

	if (win) {
		win.setFrame({ x, y, width, height });
	}
}

function focus(name) {
	const app = App.find(name);

	if (app) {
		app.focus();
	}
}

function moveToSpace(win, space) {
	if (win) {
		Space.active().removeWindows([win]);
		Space.all()[space - 1].addWindows([win]);
	}
}

Bind.on('a', ['alt', 'cmd'], () => {
	const screen = Screen.focused().frameWithoutDockOrMenu;

	const x = 15;
	const y = screen.y + x;
	const width = screen.width - (x * 2);
	const height = screen.height - (x * 2);

	position('iTerm2', x, y, width, height);
	position('Code', x, y, width, height);
	position('Google Chrome', x, y, width, height);
	position('Safari', x, y, width, height);

	setTimeout(() => focus('Google Chrome'), 5);
	setTimeout(() => focus('iTerm2'), 5);
	setTimeout(() => focus('Code'), 5);
});

[1, 2, 3, 4, 5, 6].forEach(index => {
	Bind.on(`${index}`, ['ctrl', 'alt'], () => {
		const win = Window.focused();

		if (win) {
			Space.active().removeWindows([win]);
			Space.all()[index - 1].addWindows([win]);
			win.focus();
		}
	});
});
