var root = document.getElementById("root").value


function TreeNode (number) {
	this.val = number
	this.left = null
	this.right = null
};


function Insert (value) {
	current_node = root
	while (current_node !== null) {
		
	}

};

function SetHTMLNodeLeft (node) {
	if (node.left != null) {
		document.getElementById("left").innerHTML = root_node.left;
	};
};

function SetHTMLNodeRight (node) {
	if (node.right != null) {
		document.getElementById("right").innerHTML = root_node.right;
	};
};



var root_node = new TreeNode(5)





root_node.left = 1
root_node.right = 6

SetHTMLNodeLeft(root_node)
SetHTMLNodeRight(root_node)

var test = root_node.left
var node_left_under_root = new TreeNode(root_node.left)
var node_right_under_root = new TreeNode(root_node.right)




	

console.log(root_node)
console.log(node_left_under_root)
console.log(node_right_under_root)



