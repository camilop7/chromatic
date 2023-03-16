// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"
import { initVideo } from "./main"

const startVideoCallBtn = document.getElementById('join-btn')
console.log({startVideoCallBtn})
if (startVideoCallBtn) {
  initVideo()
}
