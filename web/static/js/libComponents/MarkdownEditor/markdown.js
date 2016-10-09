import React, { PropTypes } from 'react'

Markdown.propTypes = {
  text: PropTypes.string,
}

export default function Markdown (props) {
  return ( 
    <div dangerouslySetInnerHTML={{
      __html: marked(props.text)
    }}></div>
  )
}
