import React, { PropTypes } from 'react'

Editor.propTypes = {
  onEdit: PropTypes.func.isRequired
}


export default function Editor (props) {
  function handleEdit ({target}) {
    const val = target.value
    props.onEdit(val)
  }
  return (
    <textarea onInput={this.handleEdit}>
    </textarea>
  )
}
