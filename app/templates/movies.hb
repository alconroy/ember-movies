<div class="list">
  <h4 class="text-center">{{title}} (Watched {{seen}} of {{total}})</h4>

  {{view Ember.TextField id="addMovie" placeholder="Add New Movie" valueBinding="newMovie" action="create"}}

  <ul>

    {{#each movies itemController="movie"}}
      <li {{bindAttr class="watched:checked"}}>
        {{#if isEditing}}
          {{view Movies.EditMovieView valueBinding="name"}}
        {{else}}
          <span class='title' {{action "edit" on="doubleClick"}}>{{name}}</span>
          <span class='notes'>{{#linkTo "notes.index" this}}Notes{{/linkTo}}</span>
          {{view Ember.Checkbox checkedBinding="watched" class="toggle"}}
        {{/if}}
      </li>
    {{/each}}

  </ul>

  <div class="count">
    <span><strong>{{remaining}}</strong> {{inflection}} left</span>
  </div>
</div>
