import React from 'react'
import ReactDOM from 'react-dom'
import ScrollUp from '../components/ScrollUp'
import BackgroundHeader from '../components/BackgroundHeader'

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <ScrollUp/>,
    document.body.appendChild(document.createElement('div')),
  )
})
