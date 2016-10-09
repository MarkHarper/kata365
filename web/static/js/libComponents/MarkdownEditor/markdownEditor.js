import React, { PropTypes } from 'react'
import { Editor } from './editor.js'
import { Markdown } from './markdown.js'

MarkdownEditor.propTypes = {
  text: React.PropTypes.string,
}

export default function MarkdownEditor (props) {
  function onEdit (text) {
    // action save text
  }
  return (
    <main>
      <section>
        <label>Markdown</label>
        <hr />
        <Editor onEdit={onEdit} />
      </section>     
      <section>
        <label>Preview</label>
        <hr />
        <Markdown text={props.text} />
      </section>   
    </main>
  );
}
