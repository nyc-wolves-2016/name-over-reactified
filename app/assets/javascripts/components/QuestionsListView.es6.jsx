class QuestionsListView extends React.Component {
  constructor() {
    super();
    this.handleClick = this.handleClick.bind(this);
  }

  handleClick(data) {
    this.setState({
      questions: data,
      answers: data2
    })
  }

  render() {
    let questions = this.props.data;

    var loginButton;
      if (loggedIn) {
        loginButton = <LogoutButton />;
      } else {
        loginButton = <LoginButton />;
      }

    return (
      <ul className="questionsList">
        <li>
        {questions.map((question, i) =>
          <Question onClick={this.handleClick} key={i} data={question} />
        )}

        {loginButton}
        </li>
      </ul>
    )
  }

}
