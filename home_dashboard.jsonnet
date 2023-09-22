{
  editable: true,
  panels: [{
    id: 1,
    gridPos: {
      h: 12,
      w: 12,
      x: 6,
      y: 0,
    },
    options: {
      code: {
        language: 'plaintext',
      },
      content: |||
        This showcases a bug in the link interceptor code.

        The following link looks correct in the HTML DOM (and in the
        mouseover text) and when CTRL-clicked, it goes to the expected URL,
        i.e. `http://localhost:3000/grafana-backup`.

        However, when clicked normally, the bug makes it go to
        `http://localhost:3000/grafana/-backup`.

        [The link.](http://localhost:3000/grafana-backup)

        ---

        Note that in either case, youll get to the "Page not found" page, which
        is expected, because this showcase doesn't include a proxy in front of
        Grafana that would handle the `/grafana-backup` case.
      |||,
      mode: 'markdown',
    },
    type: 'text',
  }],
  schemaVersion: 38,
  title: 'bug repro',
  version: 1,
}
