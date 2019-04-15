extends Spatial

var dstat=0
var dtime=0.2

var curve_tick_dn={0: 100, 1: 94, 2: 89, 3: 84, 4: 79, 5: 75, 6: 71, 7: 67, 8: 64, 9: 60, 10: 57, 11: 54, 12: 51, 13: 48, 14: 46, 15: 43, 16: 41, 17: 39, 18: 37, 19: 35, 20: 33, 21: 31, 22: 29, 23: 28, 24: 26, 25: 25, 26: 24, 27: 22, 28: 21, 29: 20, 30: 19, 31: 18, 32: 17, 33: 16, 34: 15, 35: 15, 36: 14, 37: 13, 38: 12, 39: 12, 40: 11, 41: 11, 42: 10, 43: 10, 44: 9, 45: 9, 46: 8, 47: 8, 48: 7, 49: 7, 50: 7, 51: 6, 52: 6, 53: 6, 54: 5, 55: 5, 56: 5, 57: 5, 58: 4, 59: 4, 60: 4, 61: 4, 62: 3, 63: 3, 64: 3, 65: 3, 66: 3, 67: 3, 68: 3, 69: 2, 70: 2, 71: 2, 72: 2, 73: 2, 74: 2, 75: 2, 76: 2, 77: 2, 78: 1, 79: 1, 80: 1, 81: 1, 82: 1, 83: 1, 84: 1, 85: 1, 86: 1, 87: 1, 88: 1, 89: 1, 90: 1, 91: 1, 92: 1, 93: 1, 94: 1, 95: 1, 96: 1, 97: 1, 98: 1, 99: 1, 100: 1}
var curve_tick_up={0: 1, 1: 1, 2: 1, 3: 1, 4: 1, 5: 1, 6: 1, 7: 1, 8: 1, 9: 1, 10: 1, 11: 1, 12: 1, 13: 1, 14: 1, 15: 1, 16: 1, 17: 1, 18: 1, 19: 1, 20: 1, 21: 1, 22: 1, 23: 2, 24: 2, 25: 2, 26: 2, 27: 2, 28: 2, 29: 2, 30: 2, 31: 2, 32: 3, 33: 3, 34: 3, 35: 3, 36: 3, 37: 3, 38: 3, 39: 4, 40: 4, 41: 4, 42: 4, 43: 5, 44: 5, 45: 5, 46: 5, 47: 6, 48: 6, 49: 6, 50: 7, 51: 7, 52: 7, 53: 8, 54: 8, 55: 9, 56: 9, 57: 10, 58: 10, 59: 11, 60: 11, 61: 12, 62: 12, 63: 13, 64: 14, 65: 15, 66: 15, 67: 16, 68: 17, 69: 18, 70: 19, 71: 20, 72: 21, 73: 22, 74: 24, 75: 25, 76: 26, 77: 28, 78: 29, 79: 31, 80: 33, 81: 35, 82: 37, 83: 39, 84: 41, 85: 43, 86: 46, 87: 48, 88: 51, 89: 54, 90: 57, 91: 60, 92: 64, 93: 67, 94: 71, 95: 75, 96: 79, 97: 84, 98: 89, 99: 94, 100: 100}
var curve_slope_dn={0: 100, 1: 97, 2: 94, 3: 91, 4: 89, 5: 86, 6: 84, 7: 82, 8: 80, 9: 77, 10: 75, 11: 73, 12: 71, 13: 69, 14: 67, 15: 66, 16: 64, 17: 62, 18: 60, 19: 59, 20: 57, 21: 56, 22: 54, 23: 53, 24: 51, 25: 50, 26: 49, 27: 47, 28: 46, 29: 45, 30: 44, 31: 43, 32: 41, 33: 40, 34: 39, 35: 38, 36: 37, 37: 36, 38: 35, 39: 35, 40: 34, 41: 33, 42: 32, 43: 31, 44: 30, 45: 30, 46: 29, 47: 28, 48: 27, 49: 27, 50: 26, 51: 25, 52: 25, 53: 24, 54: 24, 55: 23, 56: 22, 57: 22, 58: 21, 59: 21, 60: 20, 61: 20, 62: 19, 63: 19, 64: 19, 65: 18, 66: 18, 67: 17, 68: 17, 69: 17, 70: 16, 71: 16, 72: 15, 73: 15, 74: 15, 75: 14, 76: 14, 77: 14, 78: 14, 79: 13, 80: 13, 81: 13, 82: 12, 83: 12, 84: 12, 85: 12, 86: 12, 87: 11, 88: 11, 89: 11, 90: 11, 91: 11, 92: 10, 93: 10, 94: 10, 95: 10, 96: 10, 97: 10, 98: 10, 99: 10, 100: 10}
var curve_slope_up={0: 10, 1: 10, 2: 10, 3: 10, 4: 10, 5: 10, 6: 10, 7: 10, 8: 10, 9: 11, 10: 11, 11: 11, 12: 11, 13: 11, 14: 12, 15: 12, 16: 12, 17: 12, 18: 12, 19: 13, 20: 13, 21: 13, 22: 14, 23: 14, 24: 14, 25: 14, 26: 15, 27: 15, 28: 15, 29: 16, 30: 16, 31: 17, 32: 17, 33: 17, 34: 18, 35: 18, 36: 19, 37: 19, 38: 19, 39: 20, 40: 20, 41: 21, 42: 21, 43: 22, 44: 22, 45: 23, 46: 24, 47: 24, 48: 25, 49: 25, 50: 26, 51: 27, 52: 27, 53: 28, 54: 29, 55: 30, 56: 30, 57: 31, 58: 32, 59: 33, 60: 34, 61: 35, 62: 35, 63: 36, 64: 37, 65: 38, 66: 39, 67: 40, 68: 41, 69: 43, 70: 44, 71: 45, 72: 46, 73: 47, 74: 49, 75: 50, 76: 51, 77: 53, 78: 54, 79: 56, 80: 57, 81: 59, 82: 60, 83: 62, 84: 64, 85: 66, 86: 67, 87: 69, 88: 71, 89: 73, 90: 75, 91: 77, 92: 80, 93: 82, 94: 84, 95: 86, 96: 89, 97: 91, 98: 94, 99: 97, 100: 100}
var curve_none={0: 0, 1: 0, 2: 0, 3: 0, 4: 0, 5: 0, 6: 0, 7: 0, 8: 0, 9: 0, 10: 0, 11: 0, 12: 0, 13: 0, 14: 0, 15: 0, 16: 0, 17: 0, 18: 0, 19: 0, 20: 0, 21: 0, 22: 0, 23: 0, 24: 0, 25: 0, 26: 0, 27: 0, 28: 0, 29: 0, 30: 0, 31: 0, 32: 0, 33: 0, 34: 0, 35: 0, 36: 0, 37: 0, 38: 0, 39: 0, 40: 0, 41: 0, 42: 0, 43: 0, 44: 0, 45: 0, 46: 0, 47: 0, 48: 0, 49: 0, 50: 0, 51: 0, 52: 0, 53: 0, 54: 0, 55: 0, 56: 0, 57: 0, 58: 0, 59: 0, 60: 0, 61: 0, 62: 0, 63: 0, 64: 0, 65: 0, 66: 0, 67: 0, 68: 0, 69: 0, 70: 0, 71: 0, 72: 0, 73: 0, 74: 0, 75: 0, 76: 0, 77: 0, 78: 0, 79: 0, 80: 0, 81: 0, 82: 0, 83: 0, 84: 0, 85: 0, 86: 0, 87: 0, 88: 0, 89: 0, 90: 0, 91: 0, 92: 0, 93: 0, 94: 0, 95: 0, 96: 0, 97: 0, 98: 0, 99: 0, 100: 0}
var curve_linear={0: 0, 1: 1, 2: 2, 3: 3, 4: 4, 5: 5, 6: 6, 7: 7, 8: 8, 9: 9, 10: 10, 11: 11, 12: 12, 13: 13, 14: 14, 15: 15, 16: 16, 17: 17, 18: 18, 19: 19, 20: 20, 21: 21, 22: 22, 23: 23, 24: 24, 25: 25, 26: 26, 27: 27, 28: 28, 29: 29, 30: 30, 31: 31, 32: 32, 33: 33, 34: 34, 35: 35, 36: 36, 37: 37, 38: 38, 39: 39, 40: 40, 41: 41, 42: 42, 43: 43, 44: 44, 45: 45, 46: 46, 47: 47, 48: 48, 49: 49, 50: 50, 51: 51, 52: 52, 53: 53, 54: 54, 55: 55, 56: 56, 57: 57, 58: 58, 59: 59, 60: 60, 61: 61, 62: 62, 63: 63, 64: 64, 65: 65, 66: 66, 67: 67, 68: 68, 69: 69, 70: 70, 71: 71, 72: 72, 73: 73, 74: 74, 75: 75, 76: 76, 77: 77, 78: 78, 79: 79, 80: 80, 81: 81, 82: 82, 83: 83, 84: 84, 85: 85, 86: 86, 87: 87, 88: 88, 89: 89, 90: 90, 91: 91, 92: 92, 93: 93, 94: 94, 95: 95, 96: 96, 97: 97, 98: 98, 99: 99, 100: 100}
var curve_ilinear={0: 100, 1: 99, 2: 98, 3: 97, 4: 96, 5: 95, 6: 94, 7: 93, 8: 92, 9: 91, 10: 90, 11: 89, 12: 88, 13: 87, 14: 86, 15: 85, 16: 84, 17: 83, 18: 82, 19: 81, 20: 80, 21: 79, 22: 78, 23: 77, 24: 76, 25: 75, 26: 74, 27: 73, 28: 72, 29: 71, 30: 70, 31: 69, 32: 68, 33: 67, 34: 66, 35: 65, 36: 64, 37: 63, 38: 62, 39: 61, 40: 60, 41: 59, 42: 58, 43: 57, 44: 56, 45: 55, 46: 54, 47: 53, 48: 52, 49: 51, 50: 50, 51: 49, 52: 48, 53: 47, 54: 46, 55: 45, 56: 44, 57: 43, 58: 42, 59: 41, 60: 40, 61: 39, 62: 38, 63: 37, 64: 36, 65: 35, 66: 34, 67: 33, 68: 32, 69: 31, 70: 30, 71: 29, 72: 28, 73: 27, 74: 26, 75: 25, 76: 24, 77: 23, 78: 22, 79: 21, 80: 20, 81: 19, 82: 18, 83: 17, 84: 16, 85: 15, 86: 14, 87: 13, 88: 12, 89: 11, 90: 10, 91: 9, 92: 8, 93: 7, 94: 6, 95: 5, 96: 4, 97: 3, 98: 2, 99: 1, 100: 0}

var lblammo
var lblhlth
var lblact

var status={
	"ammo":100,
	"health":100,
	"numenemy":0
}

var vetoes={
	"attack":{"numenemy":1}
}

var actions={
	"attack":{"ammo":curve_slope_up,"health":curve_slope_up,"numenemy":curve_linear},
	"heal":{"ammo":curve_tick_dn,"health":curve_ilinear,"numenemy":curve_ilinear},
	"reload":{"ammo":curve_ilinear,"health":curve_none,"numenemy":curve_slope_dn}
}
var current_action=""
var current_target=null


func _ready():
	lblhlth=get_parent().get_node("Camera/pc/vb/hb1/val")
	lblammo=get_parent().get_node("Camera/pc/vb/hb2/val")
	lblact=get_parent().get_node("Camera/pc/vb/hb3/val")



func _process(delta):
	dstat+=delta
	if dstat>dtime:
		lblhlth.text=str(status["health"])
		lblammo.text=str(status["ammo"])
		status["numenemy"]=get_tree().get_nodes_in_group("red").size()
		dstat=0
		var res=_do_eval()
		#print(status,res)

		var allowed_action=""
		var tryaction
		while res.size()>0:
			tryaction=_find_max(res)
			var actok=_action_ok(tryaction)
			if actok==1:
				allowed_action=tryaction
				break
			else:
				res.erase(tryaction)
			if res.size()==0:
				print("nothing to do!")
				
		if tryaction!="":
			_do_action(tryaction)

func _action_ok(tryaction):
	if tryaction=="attack":
		if status["numenemy"]>0:
			return 1
		else:
			return 0
	elif tryaction=="heal": #for now
		if get_tree().get_nodes_in_group("green").size()<=0:
			return 0
		else:
			return 1
	elif tryaction=="reload": #for now
		if get_tree().get_nodes_in_group("blue").size()<=0:
			return 0
		else:
			return 1
	

func _use_one_item(grp):
	var nearest_ent
	if not current_target:
		var ents=get_tree().get_nodes_in_group(grp)
		var dists={}
		for n in ents:
			dists[n]=global_transform.origin.distance_to(n.global_transform.origin)
		if dists.size()<=0:
			return 0
		nearest_ent=_find_max(dists)
			
		var pt=global_transform
		var ldir=nearest_ent.global_transform.origin-pt.origin
		var trot=pt.looking_at(nearest_ent.global_transform.origin,Vector3(0,1,0))
		global_transform=trot
	else:
		nearest_ent=current_target
	var distto=global_transform.origin.distance_to(nearest_ent.global_transform.origin)
	print("dist to : ",nearest_ent.name," > ",distto)
	if distto>4:
		var dxt=transform.basis.z*-10
		move_and_slide(dxt)
		current_target=nearest_ent
		return 0
	else:
		nearest_ent.apply_impulse(Vector3(0,0,0),Vector3(0,0,1))
		nearest_ent.queue_free()
		current_target=null
		return 1
	
func _do_action(selact):
	if selact=="attack":
		if _use_one_item("red"):
			status["health"]-=5
			status["ammo"]-=15
			current_target=null

	elif selact=="heal":
		if _use_one_item("green"):
			status["health"]+=25


	elif selact=="reload":
		if _use_one_item("blue"):
			status["ammo"]+=25


func _go_to(ent):
	pass
	
	
func _do_eval():
	var aq={}
	for eaction in actions: #eaction will be like attack, heal etc
		var efactors=0 #how many fac do we eval, divide by that many to normalize to 100
		var esum=0
		for erel in actions[eaction]: #erel is like ammo, health etc
			efactors+=1
			if status[erel]<0:
				status[erel]=0
			if status[erel]>100:
				status[erel]=100
			esum+=actions[eaction][erel][int(status[erel])]
			#print(erel," ",esum)
		aq[eaction]=esum/efactors
	return aq

func _find_max(dx):
	var tmp=0
	var tmpk=""
	for n in dx:
		if dx[n]>tmp:
			tmp=dx[n]
			tmpk=n
	return tmpk
	

func _find_min(dx):
	var tmp=101
	var tmpk=""
	for n in dx:
		if dx[n]<tmp:
			tmp=dx[n]
			tmpk=n
	return tmpk


func _input(event):
	if Input.is_action_pressed("ui_cancel"):
		get_tree().quit()
	if Input.is_key_pressed(KEY_D):
		status["health"]-=10
	if Input.is_key_pressed(KEY_M):
		status["health"]+=10
	if Input.is_key_pressed(KEY_F):
		status["ammo"]-=10
	if Input.is_key_pressed(KEY_R):
		status["ammo"]+=10
	if Input.is_key_pressed(KEY_Q):
		get_tree().reload_current_scene()
	
