#include "ofApp.h"

#define START_PARTICLES 10

BOOL isTouching = false;
ofPoint gravity(0, 0.1);
vector <Particle> particles;

//--------------------------------------------------------------
void ofApp::setup() {
	ofEnableSmoothing();
    ofSetCircleResolution(100);
    
	for (int i = 0; i < START_PARTICLES; i++) {
		particles.push_back(Particle());
	}
}

//--------------------------------------------------------------
void ofApp::update() {
	if (!isTouching) {
		particles.push_back(Particle());

		for(vector<Particle>::iterator it = particles.begin(); it != particles.end();) {
			it->update();
			it->adjustVel(gravity);
            
            if (it->pos.y > ofGetHeight() ||
                it->pos.x < 0 ||
                it->pos.x > ofGetWidth()) {
                particles.erase(it);
            } else {
                it++;
            }
		}
    }
}

//--------------------------------------------------------------
void ofApp::draw() {
	ofClear(255, 255, 255);
	for (int i = 0; i < particles.size(); i++) {
		particles[i].draw();
	}
}

//--------------------------------------------------------------
void ofApp::exit() {
}

//--------------------------------------------------------------
void ofApp::touchDown(ofTouchEventArgs & touch) {
	isTouching = true;
}

//--------------------------------------------------------------
void ofApp::touchMoved(ofTouchEventArgs & touch) {
}

//--------------------------------------------------------------
void ofApp::touchUp(ofTouchEventArgs & touch) {
	isTouching = false;
}

//--------------------------------------------------------------
void ofApp::touchDoubleTap(ofTouchEventArgs & touch) {
}

//--------------------------------------------------------------
void ofApp::touchCancelled(ofTouchEventArgs & touch) {
}

//--------------------------------------------------------------
void ofApp::lostFocus() {
}

//--------------------------------------------------------------
void ofApp::gotFocus() {
}

//--------------------------------------------------------------
void ofApp::gotMemoryWarning() {
}

//--------------------------------------------------------------
void ofApp::deviceOrientationChanged(int newOrientation) {
}
