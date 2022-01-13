module.exports = {
  config: {
    // choose either `'stable'` for receiving highly polished,
    // or `'canary'` for less polished but more frequent updates
    updateChannel: 'stable',

    // fonts
    fontSize: 16,
    fontFamily: "'Fira Code', 'Hack Nerd Font'",
    fontWeight: 'normal',
    fontWeightBold: 'bold',

    // terminal cursor background color and opacity (hex, rgb, hsl, hsv, hwb or cmyk)
    cursorColor: '#50FA7B',

    // terminal text color under BLOCK cursor
    cursorAccentColor: '#000',

    // `'BEAM'` for |, `'UNDERLINE'` for _, `'BLOCK'` for █
    cursorShape: 'BLOCK',

    // set to `true` (without backticks and without quotes) for blinking cursor
    cursorBlink: true,

    // color of the text
    foregroundColor: '#fff',

    // terminal background color
    // opacity is only supported on macOS
    backgroundColor: 'rgb(10,10,10)',

    // terminal selection color
    selectionColor: '#50FA7B',

    // border color (window, tabs)
    borderColor: '#242424',

    // custom CSS to embed in the main window
    css: `
          .hyper_main {
              line-height: 20px;
              background: rgb(10,10,10) !important;
            }
            .tab_tab:not(.tab_active) {
              background: #000;
              color: #777;
            }
          `,

    // custom CSS to embed in the terminal window
    termCSS: ' x-screen a { color: white; }',

    // if you're using a Linux setup which show native menus, set to false
    // default: `true` on Linux, `true` on Windows, ignored on macOS
    showHamburgerMenu: '',

    // set to `false` (without backticks and without quotes) if you want to hide the minimize, maximize and close buttons
    // additionally, set to `'left'` if you want them on the left, like in Ubuntu
    // default: `true` (without backticks and without quotes) on Windows and Linux, ignored on macOS
    showWindowControls: '',

    // custom padding (CSS format, i.e.: `top right bottom left`)
    padding: '14px 16px',

    // the full list. if you're going to provide the full color palette,
    // including the 6 x 6 color cubes and the grayscale map, just provide
    // an array here instead of a color map object
    colors: {
      black: 'rgb(10,10,10)',
      red: '#FF5555',
      green: '#50FA7B',
      yellow: '#F1FA8C',
      blue: '#0066ff',
      magenta: '#BD93F9',
      cyan: '#0ff',
      white: '#C7C7C7',
      lightBlack: '#686868',
      lightRed: '#FD6F6B',
      lightGreen: '#67F86F',
      lightYellow: '#FFB86C',
      lightBlue: '#6A76FB',
      lightMagenta: '#FD7CFC',
      lightCyan: '#8BE9FD',
      lightWhite: '#FFFFFF',
    },

    // the shell to run when spawning a new session (i.e. /usr/local/bin/fish)
    // if left empty, your system's login shell will be used by default
    shell: 'zsh',

    // for setting shell arguments (i.e. for using interactive shellArgs: `['-i']`)
    // by default `['--login']` will be used
    shellArgs: ['--login'],

    // for environment variables
    env: {},

    // set to `false` for no bell
    bell: 'SOUND',

    // if `true` (without backticks and without quotes), selected text will automatically be copied to the clipboard
    copyOnSelect: true,

    // if `true` (without backticks and without quotes), hyper will be set as the default protocol client for SSH
    defaultSSHApp: true,

    // if `true` (without backticks and without quotes), on right click selected text will be copied or pasted if no
    // selection is present (`true` by default on Windows and disables the context menu feature)
    // quickEdit: true,

    // for advanced config flags please refer to https://hyper.is/#cfg
    summon: {
      // hideDock: true,
      // use karabiner to remap caps lock to command+control+option+shift
      hotkey: 'Cmd+Ctrl+Option+Shift+h'
    },
    hyperline: {
      plugins: [
        "network",
        "ip",
        "spotify"
      ]
    },
    hyperTabs: {
      activityColor: 'cyan',
      tabIconsColored: true,
      border: true,
      closeAlign: 'right',
    },
    hyperSearchUI: {
      inputBorderRadius: 0,
      prevButton: '←',
      nextButton: '→',
      buttonBorderRadius: 0,
    },
    hyperBorder: {
      borderColors: ['#50FA7B', '#8BE9FD'],
      borderWidth: '4px'
    }
  },

  plugins: [
    'hypercwd',
    'hyper-autohide-tabs',
    'hyper-search',
    'hyperterm-summon',
    'hyperborder',
    'hyper-tabs-enhanced',
    'hyper-final-say',
  ],

  // in development, you can create a directory under
  // `~/.hyper_plugins/local/` and include it here
  // to load it and avoid it being `npm install`ed
  localPlugins: [
    // 'hyperline',
  ],

  keymaps: {
    // Example
    // 'window:devtools': 'cmd+alt+o',
  },
};
