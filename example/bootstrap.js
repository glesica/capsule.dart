const callbacks = new Map();

const capsule = {};

capsule.send = function(owner, module, message) {
    callbacks[owner + '-' + module](...message);
};

capsule.receive = function(me, module, callback) {
    callbacks[me + '-' + module] = callback;
};

capsule.cancel = function(me, module) {
    callbacks.delete(me + '-' + module);
};








// // xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//
// capsule.call = function(predicate, method, arguments) {
//     for (const module of offeredModules) {
//         if (predicate(module)) {
//             module[method](...arguments);
//             return;
//         }
//     }
//
//     throw new Error('Method not found: ' + method);
// };
//
// capsule.offer = function(module) {
//     offeredModules.push(module);
// };
//
//
//
//
//
//
//
// // xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//
// capsule.accept = function(predicate) {
//     for (const module of offeredModules) {
//         if (predicate(module)) {
//             return module;
//         }
//     }
//     return null;
// };
//
//
//
//
// // xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
//
// capsule.register = function(name, callback) {
//     console.debug('[DEBUG] REGISTER (' + name + ')');
//     modules[name] = callback;
// };
//
// capsule.unregister = function(name) {
//     modules[name] = undefined;
// };
//
// capsule.list = function() {
//     // List all modules
// };
//
// capsule.send = function(name, payload) {
//     // Send to one module
//     modules[name](payload);
// };
//
// capsule.broadcast = function(payload) {
//     // Send to all modules
// };

window.capsule = capsule;

