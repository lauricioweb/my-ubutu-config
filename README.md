{
    // Workbench
    "workbench.startupEditor": "newUntitledFile",
    "workbench.editor.labelFormat": "short",
    "workbench.iconTheme": "material-icon-theme",
    "workbench.editor.enablePreview": false,
    "workbench.sideBar.location": "left",
    "window.menuBarVisibility": "toggle",
    "workbench.list.smoothScrolling": true,
    "workbench.colorTheme": "OM Theme (Night Owl Italic)",
    "workbench.editorAssociations": [
      {
        "viewType": "jupyter.notebook.ipynb",
        "filenamePattern": "*.ipynb"
      }
    ],
  
    // Explorer
    "explorer.compactFolders": false,
    "explorer.confirmDelete": true,
  
    // Editor and breadcrumbs
    "breadcrumbs.enabled": true,
    "editor.renderControlCharacters": false,
    "editor.tabSize": 2,
    "editor.renderLineHighlight": "gutter",
    "editor.minimap.enabled": false,
    "editor.fontSize": 12 ,
    "editor.detectIndentation": true,
    "editor.snippetSuggestions": "top",
    "editor.wordBasedSuggestions": false,
    "editor.suggest.localityBonus": true,
    "editor.acceptSuggestionOnCommitCharacter": false,
    "editor.formatOnPaste": false,
    "editor.cursorSmoothCaretAnimation": true,
    "editor.mouseWheelScrollSensitivity": 2,
    "editor.smoothScrolling": true,
    "editor.mouseWheelZoom": true,
    "editor.linkedEditing": true,
    "editor.fontFamily": "'BigBlueTerm437 Nerd Font Propo', 'SF Mono', Consolas, 'Source Code Pro', 'Dank Mono', 'Fira Code', Menlo, 'Inconsolata', 'Droid Sans Mono', 'DejaVu Sans Mono', 'Ubuntu Mono', 'Courier New', Courier, Monaco, monospace",
    "editor.glyphMargin": false,
    "editor.fontLigatures": true,
    "editor.defaultFormatter": "esbenp.prettier-vscode",
    "editor.formatOnSave": true,
    "editor.codeActionsOnSave": {
      "source.fixAll.eslint": true,
      "source.fixAll": true
    },
    "editor.suggestSelection": "first",
  
    // Git
    "git.enableSmartCommit": true,
    "diffEditor.ignoreTrimWhitespace": true,
  
    // Debug
    "debug.console.fontSize": 18,
  
    // Files and search
    "files.defaultLanguage": "{activeEditorLanguage}",
    "files.exclude": {
      "USE_GITIGNORE": true
    },
    "search.exclude": {
      "**/node_modules": true,
      "**/bower_components": true,
      "**/coverage": true,
      "**/dist": true,
      "**/build": true,
      "**/.build": true,
      "**/.gh-pages": true
    },
  
    // Terminal
    "terminal.integrated.copyOnSelection": false,
    "terminal.integrated.cursorBlinking": true,
    "terminal.integrated.cursorStyle": "line",
    "terminal.integrated.shell.linux": "zsh",
    "terminal.external.linuxExec": "x-terminal-emulator",
    "terminal.integrated.fontFamily": "BigBlueTerm437 Nerd Font Propo', 'Fira Code', 'SF Mono', Consolas, 'Source Code Pro', 'Dank Mono', Menlo, 'Inconsolata', 'Droid Sans Mono', 'DejaVu Sans Mono', 'Ubuntu Mono', 'Courier New', Courier, Monaco, monospace",
    "terminal.integrated.fontSize": 11,
    "terminal.integrated.drawBoldTextInBrightColors": false,
    "terminal.integrated.enableFileLinks": false,
    "terminal.integrated.env.linux": {
      // "PORT": "4000"
    },
  
    // Javascript & TypeScript
    "javascript.preferences.quoteStyle": "single",
    "typescript.preferences.quoteStyle": "single",
    "javascript.validate.enable": false,
    "javascript.updateImportsOnFileMove.enabled": "always",
    "typescript.updateImportsOnFileMove.enabled": "always",
    "javascript.suggest.autoImports": true,
    "typescript.suggest.autoImports": true,
    "[javascript]": {
      "editor.suggestSelection": "recentlyUsed",
      "editor.suggest.showKeywords": false
    },
  
  
    // Emmet
    "emmet.syntaxProfiles": {
      "javascript": "jsx"
    },
    "emmet.includeLanguages": {
      "django-html": "html",
      "javascript": "javascriptreact",
      "typescript": "typescriptreact"
    },
 
  
    // Code runner
    "code-runner.clearPreviousOutput": true,
    "code-runner.ignoreSelection": true,
    "code-runner.saveFileBeforeRun": true,
    "code-runner.runInTerminal": true,
    "code-runner.preserveFocus": false,
    "code-runner.executorMap": {
      "python": "python3 -u",
      "typescript": "npx ts-node --files --transpile-only"
    },
  
    // Material icon theme extension
    "material-icon-theme.hidesExplorerArrows": true,
    "material-icon-theme.folders.theme": "specific",
    "material-icon-theme.folders.color": "#6273a6",
  
  
    // CSpell checker extension
    "cSpell.enabled": true,
    "cSpell.language": "en,pt,pt_BR",
    "cSpell.enableFiletypes": ["shellscript"],
    "cSpell.customUserDictionaries": [
      {
        "name": "Custom",
        "description": "Custom CSpell Dict",
        "path": "~/Development/custom-cspell-dictionary.txt",
        "addWords": false
      }
    ],
  
    // XML Language Support by Red Hat
    "redhat.telemetry.enabled": true,
  
    // VsCode Action Buttons
    "actionButtons": {
      "defaultColor": "#8be9fd", // Can also use string color names.
      "loadNpmCommands": false, // Disables automatic generation of actions for npm commands.
      "reloadButton": "🗘", // Custom reload button text or icon (default ↻). null value enables automatic reload on configuration change
      "commands": [
        {
          "cwd": "./", // Terminal initial folder ${workspaceFolder} and os user home as defaults
          "name": "Open dictionary",
          "color": "#8be9fd",
          "singleInstance": true,
          "command": "code -r ~/Development/custom-cspell-dictionary.txt; exit" // This is executed in the terminal.
        }
      ]
    },
    "editor.wordWrap": "on"
  }
