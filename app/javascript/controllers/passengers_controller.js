import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "template", "form" ]
  static values = { number: Number }

  connect() {
    console.log("Passengers controller connected")
  }

  append(e) {
    e.preventDefault();
    const clone = this.templateTarget.content.cloneNode(true)
    const passengerDiv = clone.querySelector(".passenger")

    passengerDiv.innerHTML = passengerDiv.innerHTML.replace(/__count__/g, this.numberValue)
    console.log(passengerDiv.innerHTML)
    this.formTarget.appendChild(clone)
    this.numberValue++
  }

  numberValueChanged() {
    console.log({numberValue: this.numberValue})
  }

  templateTargetConnected() {
    console.log("Have template target")
  }

  remove(e) {
    e.preventDefault();
    const passengerFields = Array.from(this.formTarget.querySelectorAll('.passenger'))
    if(passengerFields.length > 1) {
      passengerFields.at(-1)?.remove();
    }
  }
}
