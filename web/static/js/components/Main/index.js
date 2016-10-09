import React from "react"
import { connect } from "react-redux"

class Main extends React.Component {
  render() {
    const { visitors } = this.props
    return <main>
      <span>{'Rewrite'}</span>
    </main>
  }
}

const mapStateToProps = (state) => {
  return {
    visitors: state.visitors
  }
}

export default connect(mapStateToProps)(Main)
