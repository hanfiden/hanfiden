import React from "react"
import PropTypes from "prop-types"
class ServicesModal extends React.Component {
  render () {
  }
}

const modalViews = document.querySelectorAll('.services__modal'),
  modalBtns = document.querySelectorAll('.services__button'),
  modalClosses = document.querySelectorAll('.services__modal-close')

let modal = function (modalClick) {
  modalViews[modalClick].classList.add('active-modal')
}

modalBtns.forEach((modalBtn, x) => {
  modalBtn.addEventListener('click', () => {
    modal(x)
  })
})

modalClosses.forEach((modalClose) => {
  modalClose.addEventListener('click', () => {
    modalViews.forEach((modalView) => {
      modalView.classList.remove('active-modal')
    })
  })
})

export default ServicesModal
