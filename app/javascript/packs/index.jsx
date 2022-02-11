import React from 'react'
import ReactDOM from 'react-dom'
import ScrollUp from '../components/ScrollUp'

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <ScrollUp/>,
    document.body.appendChild(document.createElement('div')),
  )
})

function scrollUp() {
  const scrollUp = document.getElementById('scroll-up');
  if (this.scrollY >= 160) scrollUp.classList.add('show-scroll'); else scrollUp.classList.remove('show-scroll')
}
window.addEventListener('scroll', scrollUp)
