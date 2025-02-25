

function normaliseangle(angle) {
	angle*=-1
	angle+=90
	if (angle > 360) angle-=360
	if (angle < 0) angle+=360
	if (angle > 360) angle-=360
	if (angle < 0) angle+=360
	if (angle > 360) angle-=360
	if (angle < 0) angle+=360
	
	return angle
}