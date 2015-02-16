React = require 'react'
Banner = require './components/banner'
ReactBootstrap = require 'react-bootstrap'
Modal = ReactBootstrap.Modal
ModalTrigger = ReactBootstrap.ModalTrigger
DetailModal = React.createClass
  displayName:'DetailModal'
  render: ->
    <Modal title='Modal' animation>
    <div className="modal-body">
      Elit est explicabo ipsum eaque dolorem blanditiis doloribus sed id ipsam, beatae, rem fuga id earum? Inventore et facilis obcaecati.
    </div>
    <div className="modal-footer">
       <button className="button small" onClick={this.props.onRequestHide}>close</button>
    </div>
    </Modal>
Index = React.createClass
  displayName:'INDEX'
  render: ->
    <div>
    <Banner bannerStyle='welcome'/>
    <section id="latestNews" className="wrapper style2 align-center">
      <div className="container">
        <header>
          <h2>最新消息</h2>
          <p>Latest News</p>
        </header>
        <div className="row">
          <section id="post_1" className="feature 4u 12u$(small)">
            <img className="image fit" src="images/pic01.jpg" alt="" />
            <h3 className="title">所上公告 ＆ 其他公告</h3>
             <div className="list" >
               <ModalTrigger modal={<DetailModal onRequestHide container={this} />} >
                  <a href="#post_1"><i className="fa fa-thumb-tack"></i> TBI2014 臺灣商管與資訊研討會</a>
               </ModalTrigger>
               <p><i className="fa fa-thumb-tack"></i> 恭禧汪志堅老師、陳宗天老師、溫演老師及何政勳老師獲得獲得103年度學術研究獎助</p>
               <p><i className="fa fa-thumb-tack"></i> 本所一貫修讀學、碩士學位辦法</p>
            </div>
            <a href="#" className="button alt small">了解更多</a>
          </section>
          <section className="feature 4u 12u$(small)">
            <img className="image fit" src="images/pic02.jpg" alt="" />
            <h3 className="title">學術公告</h3>
            <div className="list" >
               <p><i className="fa fa-thumb-tack"></i> TBI2014 臺灣商管與資訊研討會</p>
               <p><i className="fa fa-thumb-tack"></i> 恭禧汪志堅老師、陳宗天老師、溫演老師及何政勳老師獲得獲得103年度學術研究獎助</p>
               <p><i className="fa fa-thumb-tack"></i> 本所一貫修讀學、碩士學位辦法</p>
            </div>
            <a href="#" className="button alt small">了解更多</a>
          </section>
          <section className="feature 4u$ 12u$(small)">
            <img className="image fit" src="images/pic03.jpg" alt="" />
            <h3 className="title">所上活動 ＆ 專題演講 </h3>
            <div className="list" >
               <p><i className="fa fa-thumb-tack"></i> TBI2014 臺灣商管與資訊研討會</p>
               <p><i className="fa fa-thumb-tack"></i> 恭禧汪志堅老師、陳宗天老師、溫演老師及何政勳老師獲得獲得103年度學術研究獎助</p>
               <p><i className="fa fa-thumb-tack"></i> 本所一貫修讀學、碩士學位辦法</p>
            </div>
            <a href="./news.html#event" className="button alt small">了解更多</a>
          </section>
        </div>
      </div>
    </section>
    </div>
module.exports = Index
