###* @jsx React.DOM ###

window.AuthorizationShellBox = React.createClass

  render: ->
    boxStyle = 'background-image': "url(http://thumbor0.tasty0.ru/unsafe/712x416/smart//images/inviter_bg.jpg)"

    return `<div className="inviter">
              <div className="inviter__box" style={ boxStyle }>
                <div className="inviter__overlay" />
                <div className="grid-full">
                  <div className="grid-full__middle">
                    <div className="inviter__logo">
                      <i className="icon icon--ribbon"></i>
                    </div>
                    <div className="inviter__title">Тейсти – это дневник в который хочется писать каждый день</div>
                    <div className="inviter__actions">
                      { this.props.children }
                    </div>
                    <div className="inviter__spacer" />
                    <div className="inviter__stats">
                      <div className="inviter__stats-item">
                        <strong>14 000 000+</strong>
                        записей
                      </div>
                      <div className="inviter__stats-item">
                        <strong>200 000+</strong>
                        пользователей
                      </div>
                      <div className="inviter__stats-item">
                        <strong><span className="tilde">&#126;</span>30</strong>
                        секунд чтобы начать
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>`