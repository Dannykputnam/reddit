import React from 'react';

// controller index should match in 
// the Filename, the component name 
// and export name,

// props are propertys pass into the 
// component from the controller
// const Subs = ({props, keys}) => {


const Subs = ({ subs }) => {
  return (
    <>
      <h1 className='my-para'>Subs Page</h1>
      <a href="/subs/new">
        <button className="btn btn-dark">Add New Sub</button>
      </a>
      {/* <button className="btn btn-dark">Click Me!</button> */}
      { subs.map( (sub) => (
        <>
          <h3>{sub.name}</h3>
          <a href={`/subs/${sub.id}`}>Show</a>
          <a href={`/subs/${sub.id}/edit`}>Edit</a>
          <a href={`/subs/${sub.id}`} data-method='delete'>
            Delete
          </a>
        </>
      )) }
    </>
  )
}

export default Subs;