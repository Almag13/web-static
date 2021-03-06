###* @jsx React.DOM ###

window.EntryCommentBox_CommentEditFormManager = React.createClass
  mixins: [RequesterMixin, ComponentManipulationsMixin]

  propTypes:
    comment:   React.PropTypes.object.isRequired
    user:      React.PropTypes.object.isRequired
    onEditEnd: React.PropTypes.func.isRequired
    onCancel:  React.PropTypes.func.isRequired

  getInitialState: ->
    isEditError:   false
    isEditLoading: false

  render: ->
    `<EntryCommentBox_CommentForm ref="commentForm"
                                  text={ this.props.comment.comment_html }
                                  user={ this.props.user }
                                  isLoading={ this.state.isEditLoading }
                                  onSubmit={ this.onSubmit }
                                  onCancel={ this.props.onCancel } />`

  onSubmit: (text) ->
    @setState isEditError: false, isEditLoading: true

    @createRequest
      url: Routes.api.comments_edit_delete_url @props.comment.id
      method: 'PUT'
      data:
        text: text
      success: (comment) =>
        @props.onEditEnd comment
      error: (data) =>
        @safeUpdateState isEditError: true
        TastyNotifyController.errorResponse data
      complete: =>
        @safeUpdateState isEditLoading: false