extends Node2D

# Insert Light

func activate() :
	$Active.visible = true;
	$Inactive.visible = true;
	
func deactivate() :
	$Inactive.visible = true;
	$Active.visible = true;

