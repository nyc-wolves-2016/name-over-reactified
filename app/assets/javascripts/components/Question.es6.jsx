class Question extends React.Component {
  constructor() {
    super();
    this.handleClick = this.handleClick.bind(this);
  }

  handleClick() {

  }
  // onClick() {
  //   // AJAX
  //   $.ajax({
  //
  //   })
  //   .done(function(response) {
  //
  //   }.bind(this))
  // }

  render() {

    let { content, title, id } = this.props.data;

    return (
      <div>
        <h3> <a onClick={this.handleClick} href={"/questions/"+ id}>{title}</a></h3>
        <p> {content} </p>

        <AnswerListView showWhenReady={this.handle} />

      </div>
    )
  }
}
