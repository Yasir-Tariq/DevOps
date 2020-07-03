const NODE_MAJOR_VERSION = process.versions.node.split('.')[0];
console.log(NODE_MAJOR_VERSION);
console.log(process.versions);
// const NODE_MAJOR_VERSION = process.versions.node.split('.')[0];
var assert = require('assert');
it('should throw error when the version is not valid', function() {
    if (NODE_MAJOR_VERSION >= 13)
        assert.ok(true, "Node version is compatible");
    else
        assert.ok(false, "Node version is not compatible");
});