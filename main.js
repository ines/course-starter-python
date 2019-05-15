const { app, BrowserWindow } = require('electron')
const serve = require('electron-serve')

const loadURL = serve({ directory: 'public' })

;(async () => {
    await app.whenReady()
    mainWindow = new BrowserWindow()
    await loadURL(mainWindow)
})()
