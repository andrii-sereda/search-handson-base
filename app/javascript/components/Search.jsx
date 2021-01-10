// As primitive as it could be

import React from "react";

class Search extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      instanceTypes: [],
      searchValue: '',
      memoryValue: 2
    };

    this.onSearch = this.onSearch.bind(this);
    this.onSearchChange = this.onSearchChange.bind(this);
    this.onMemoryChange = this.onMemoryChange.bind(this);
  }

  onSearchChange(event) {
    this.setState({ searchValue: event.target.value });
  }

  onMemoryChange(event) {
    this.setState({ memoryValue: event.target.value });
  }

  onSearch(event) {
    const { searchValue, memoryValue } = this.state;
    const url = `/instance_types/search?q=${searchValue}&mem=${memoryValue}`;

    if (!searchValue.trim().length)
      return;

    fetch(url, {
      method: "GET",
      headers: {
        "Content-Type": "application/json"
      }
    })
    .then(response => {
      if (response.ok) {
        return response.json();
      }
      throw new Error("There was an error processing your request");
    })
    .then(response => this.setState({ instanceTypes: response }))
    .catch(error => console.log(error.message));
  }


  render() {
    const { instanceTypes } = this.state;

    return (
      <>
        <div className="d-flex align-items-center justify-content-center">
          <h1 className="display-4">Instance Types</h1>
        </div>

        <div className='row'>
          <div className='col-2'>
            <label htmlFor="memField">
              Expected memory in GB
            </label>
          </div>

          <div className='col-1'>
            <input
              type="text"
              name="mem"
              id="memField"
              className="form-control"
              required
              onChange={this.onMemoryChange}
            />
          </div>
        </div>

        <div className="d-flex align-items-center">
          <input
            type="text"
            name="search"
            id="searchField"
            className="form-control"
            placeholder="type your search here.."
            required
            onChange={this.onSearchChange}
          />
          <button
            onClick={this.onSearch}
            className="form-control"
          >
            Search
          </button>
        </div>

        <hr/>

        <table className="table table-bordered">
          <thead>
          <tr>
            <th scope="col">Name</th>
            <th scope="col">Resource</th>
            <th scope="col">Description</th>
            <th scope="col">CPU</th>
            <th scope="col">CPU Cores</th>
            <th scope="col">Memory, MB</th>
            <th scope="col">Storage, GB</th>
            <th scope="col">SSD</th>
            <th scope="col">Price</th>
          </tr>
          </thead>
          <tbody>
          {
            instanceTypes.map((instanceType, index) => (
              <tr key={index}>
                <td>{instanceType.name}</td>
                <td>{instanceType.resource}</td>
                <td>{instanceType.description}</td>
                <td>{instanceType.cpus}</td>
                <td>{instanceType.cpu_cores}</td>
                <td>{instanceType.memory_mb}</td>
                <td>{instanceType.storage_gb}</td>
                <td>{instanceType.ssd ? 'Yes' : 'No'}</td>
                <td>{instanceType.price}</td>
              </tr>
            ))
          }
          </tbody>
        </table>
      </>
    )
  }
}

export default Search;


