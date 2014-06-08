//
//  Particle.mm
//  hello
//
//  Created by Abel Allison on 6/7/14.
//  Copyright (c) 2014 Abel Allison. All rights reserved.
//

#include "Particle.h"

#define MAX_RADIUS 8
#define MAX_DEFLECTION 1.0

Particle::Particle() {
    float vx = ofRandomf() * MAX_DEFLECTION;
    float vy = sqrt(1.0 - (vx * vx)) * (ofRandomf() > 0.5 ? 1.0 : -1.0);
    
	pos = ofPoint(ofRandomWidth(), -10);
	vel = ofPoint(vx, vy);
    radius = ofRandomf() * MAX_RADIUS;
    color = ofColor(ofRandom(255), ofRandom(255), ofRandom(255));
}

void Particle::update() {
    this->adjustPos(vel);
}

void Particle::draw() {
    ofSetColor(color);
    ofFill();
    ofCircle(pos, radius);
    ofNoFill();
    ofCircle(pos, radius);
}

void Particle::setPos(ofPoint newPos) {
    pos = newPos;
}

void Particle::setVel(ofPoint newVel) {
    vel = newVel;
}

void Particle::adjustPos(ofPoint dPos) {
    pos += dPos;
}

void Particle::adjustVel(ofPoint dVel) {
    vel += dVel;
}
