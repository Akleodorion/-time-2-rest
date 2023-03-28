import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="show-modal"
export default class extends Controller {
  static targets = ['modalContent', 'modal']
  connect() {
  }

  show_modal() {
    event.preventDefault();
    let url = event.currentTarget.href ;
    let offer_id = (event.currentTarget.dataset.id);
    let params = new URLSearchParams();
    params.append("id", offer_id);
    fetch(`/modal?${params.toString()}`)
      .then(response => response.text())
      .then(html => {
        this.modalContentTarget.insertAdjacentHTML('afterend', html)
      })
  }

  close_modal() {
    event.preventDefault();
    this.modalTarget.remove();
  }

}
