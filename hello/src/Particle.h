#pragma once

//
//  Particle.h
//  hello
//
//  Created by Abel Allison on 6/7/14.
//  Copyright (c) 2014 Abel Allison. All rights reserved.
//

#include "ofMain.h"

class Particle {
public:
	ofPoint pos;
	ofPoint vel;
    ofColor color;
    float radius;

	Particle();

	void update();
	void draw();

	void setPos(ofPoint newPos);
	void setVel(ofPoint newPos);

	void adjustPos(ofPoint dPos);
	void adjustVel(ofPoint dPos);

private:
};
