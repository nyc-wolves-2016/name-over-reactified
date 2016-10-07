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

  componentDidMount() {

    $.ajax({
      url: '/questions',
      method: 'GET'
    })
    .done(function(response) {
      this.setState({questions: response})
    }.bind(this))
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
