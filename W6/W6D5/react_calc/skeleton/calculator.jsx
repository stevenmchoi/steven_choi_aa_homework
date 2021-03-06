import React from 'react';

class Calculator extends React.Component {
	constructor() {
		super();
		this.state = {
			result: 0,
			num1: '',
			num2: ''
		};

		this.setNum1 = this.setNum1.bind(this);
		this.setNum2 = this.setNum2.bind(this);
	}

	setNum1(e) {
		e.preventDefault();
		const num1 = e.target.value ? parseInt(e.target.value) : '';
		this.setState({ num1 });
	}

	setNum2(e) {
		e.preventDefault();
		const num2 = e.target.value ? parseInt(e.target.value) : '';
		this.setState({ num2 });
	}

	render() {
		return (
			<div>
				<h1>{this.state.result}</h1>
				<input onChange={this.setNum1} value={this.state.num1} />
				<input onChange={this.setNum2} value={this.state.num2} />
			</div>
		);
	}
}

export default Calculator;
