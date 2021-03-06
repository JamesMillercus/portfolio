import React, { Component } from 'react';
import { connect } from 'react-redux';
import Iframe from 'react-iframe';
import Instructions from './Instructions/Instructions';
import { fetchWebMode } from './../../../actions';
import './assets/scss';

class WebVR extends Component {
  constructor() {
    super();
    this.interval = null;
    this.state = {
      videoIsPlaying: false
    };
  }

  componentDidMount() {
    this.setTimer();
    const { deviceType } = this;
  }

  componentWillUnmount() {
    clearInterval(this.interval);
  }

  setTimer() {
    this.interval = setInterval(() => {
      const iframeHref = document.getElementById('player').contentWindow.location;
      if (Object.keys(iframeHref).length < 8 && ('ontouchstart' in window)) {
        clearInterval(this.interval);
        this.setState({ videoIsPlaying: true });
      } else if (iframeHref.pathname === '/') window.location = '/';
      else if (iframeHref.pathname === '/services') window.location = 'https://jamesmiller.blog';
      else if (iframeHref.pathname === '/webvr') window.location = '/webvr';
      // else if (iframeHref.pathname !== '/webVRbuild/index.html' && this.state.browser !== 'Oculus Browser') {
      //   clearInterval(this.interval);
      //   this.setState({ videoIsPlaying: true });
      //

    }, 250);
  }

  displayButton() {
    if (this.state.videoIsPlaying) return 'block';
    return 'none';
  }

  displayMobileOrientation() {
    if (this.state.mobileOrientationMessage === true) return 'block';
    return 'none';
  }

  exit() {
    this.setState({ videoIsPlaying: false });
    this.setTimer();
    document.getElementById('player').src = window.location.pathname;
  }

  loadExperience() {
    const { vrDisplays, deviceType } = this.props;
    // if (!vrDisplays && deviceType === 'mobile') return 'mobilewebvr' (timer)
    return '/webVRbuild/index.html';
  }



  render() {
    const styles = {
      iframeBtn: {
        position: 'fixed',
        top: 0,
        left: 0,
        backgroundImage: `url(${'/assets/images/exitIcon.png'})`,
        backgroundColor: '#cd0b0b',
        backgroundSize: '60%',
        backgroundRepeat: 'no-repeat',
        backgroundPosition: 'center',
        cursor: 'pointer',
        zIndex: 1,
        display: this.displayButton()
      }
    };

    const click = () => this.exit();

    /** LOGIC FOR DISPLAYING CONTENT CORRECLTY ON DEVICE + BROWSER **/
    return (
      <div>
        <Instructions browserName={this.props.browserName} />
        <div id="iframeButton" className="iframeButton" style={styles.iframeBtn} onClick={click} />
        <Iframe
          url={this.loadExperience()}
          width="100%"
          height="100%"
          id="player"
          className="myClassname"
          display="block"
          position="fixed"
          allowFullScreen
          allowvr
        />
      </div>
    );
  }
}

// map the state of data called from fetchUsers to users[state.users]
function mapStateToProps(state) {
  return {
    vrDisplays: state.vrDisplays,
    deviceType: state.deviceType
  };
}

export default connect(mapStateToProps, { fetchWebMode })(WebVR);
