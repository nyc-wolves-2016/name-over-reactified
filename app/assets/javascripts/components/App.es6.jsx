class App extends React.Component {
  constructor() {

    super();

    this.state = {
      questions: [
        {
          title: "What is this??",
          content: "What is this I must know omg omg omg what is this?"
        }
      ]
    }

  }



  render() {
    return(
      <div>
        <h1>Questions:</h1>

        <QuestionsListView data={this.state.questions} />


      </div>
    )
  }

}
