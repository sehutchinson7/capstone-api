<h1><b>Boston Crime Tracker Application</b></h1>
<p> This is the back-end repo for the Boston Crime Tracker application. View the deployed site here: https://sehutchinson7.github.io/capstone-client/. The app lets users add robbery incidents in Boston to a database. Users can sign in, create reports, and view a visual of Boston data on the map. More information on the client-side application can be found at https://github.com/sehutchinson7/capstone-client. The deployed site is hosted on Heroku. </p>
<h3> Goal: </h3>
<p> The goal of this project is to develop a full-stack application as a capstone project.
</p>
<h3> Technologies Used: </h3>
<ul>
  <li>Atom Editor</li>
  <li>Github</li>
  <li>Heroku</li>
  <li>Ruby with Rails</li>
</ul>

<h3> Planning Process & Development</h3>
<p>The first step in the development process was to establish the Entity Relationship Diagram (ERD).  The developer tested user authentication and user actions with CURL scripts. Two project usees two resources in Rails: users and incidents.  The Entity Relationship Diagram (ERD) shows the relationship, where a user has_many incidents and an incident belongs_to user.</p>
<a href="https://imgur.com/ju99R5Q">View ERD </a>
<h3>API Endpoints </h3>
<table>
  <thead>
    <tr>
      <th align="center">Verb</th>
      <th align="center">URI</th>
      <th align="center">Controller#Action</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td align="center">POST</td>
      <td align="center"><code>/sign-up</code></td>
      <td align="center"><code>users#signup</code></td>
    </tr>
    <tr>
      <td align="center">POST</td>
      <td align="center"><code>/sign-in</code></td>
      <td align="center"><code>users#signin</code></td>
    </tr>
    <tr>
      <td align="center">PATCH</td>
      <td align="center"><code>/change-password</code></td>
      <td align="center"><code>users#changepw</code></td>
    </tr>
    <tr>
      <td align="center">DELETE</td>
      <td align="center"><code>/sign-out</code></td>
      <td align="center"><code>users#signout</code></td>
    </tr>
  </tbody>
</table>
<table>
  <thead>
    <tr>
      <th align="center">Verb</th>
      <th align="center">URI</th>
      <th align="center">Controller#Action</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td align="center">GET</td>
      <td align="center"><code>/incidents</code></td>
      <td align="center"><code>incidents#index</code></td>
    </tr>
    <tr>
      <td align="center">GET</td>
      <td align="center"><code>/users/store.user.id</code></td>
      <td align="center"><code>incidents#index</code></td>
    </tr>
    <tr>
      <td align="center">POST</td>
      <td align="center"><code>/incidents</code></td>
      <td align="center"><code>incidents#create</code></td>
    </tr>
    <tr>
      <td align="center">PATCH</td>
      <td align="center"><code>/incidents/ + data.incident.id</code></td>
      <td align="center"><code>incidents#update</code></td>
    </tr>
    <tr>
      <td align="center">DELETE</td>
      <td align="center"><code>/incidents/ + data</code></td>
      <td align="center"><code>incidents#delete</code></td>
    </tr>
  </tbody>
  </table>

  <h3> Next Steps: </h3>
  <p>Next steps in the Development process will introduce additional resources into the api.
