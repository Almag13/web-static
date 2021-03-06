###* @jsx React.DOM ###

module.experts = window.SettingsVkontakteItem = React.createClass
  propTypes:
    user:   React.PropTypes.object.isRequired

  click: ->
    window.location = Routes.api.omniauth_url('vkontakte') + "?attach_to_user_id=" +@props.user.id

  render: ->
    `<div className="settings__item">
        <div className="settings__right">
            <button className="button button--vkontakte" onClick={this.click}>
                <span className="icon icon--vkontakte"></span>
                <span className="button__text">Привязать аккаунт</span>
            </button>
        </div>
        <div className="settings__left">
            <h3 className="settings__title">Вконтакте</h3>
            <p className="settings__desc">Привяжите свой аккаунт Вконтакте, если вы захотите можно будет включить автопубликацию ваших  записей из дневника</p>
        </div>
    </div>`


