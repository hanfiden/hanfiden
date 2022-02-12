import React from "react"

class ScrollUp extends React.Component {
  render () {
    return (
      <a href="#" className="scrollup" id="scroll-up">
        <i className="fas fa-arrow-up scrollup__icon"></i>
      </a>
    );
  }
}

function scrollUp() {
  const scrollUp = document.getElementById('scroll-up');
  if (this.scrollY >= 160) scrollUp.classList.add('show-scroll'); else scrollUp.classList.remove('show-scroll')
}
window.addEventListener('scroll', scrollUp)

export default ScrollUp
