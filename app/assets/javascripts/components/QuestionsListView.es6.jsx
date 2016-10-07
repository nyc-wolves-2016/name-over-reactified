class QuestionsListView extends React.Component {
  render() {
    debugger;
    let questions = this.props.data;

    return (
      <ul className="questionsList">
        <li>

        {questions.map((question, i) =>
          <Question key={i} data={question} />
        )}

        </li>


      </ul>
    )
  }

}
