import { Controller } from "@hotwired/stimulus"
import Swiper from 'swiper'


// Connects to data-controller="swiper"
export default class extends Controller {
  connect() {
    console.log(this.element)

    const swiper = new Swiper(this.element, {
      watchSlidesProgress: true,
      slidesPerView: 3,
      // spaceBetween: 30,
      // loop: true,
    })

  }
}
