class Question extends React.Component {
  render() {

    let { content, title } = this.props.data;

    return (
      <div>
      <h3> {title} </h3>
      <p> {content} </p>
      </div>
    )
  }
}
