/**
 * @file Contains the `clone` function, which clones objects.
 * @author Alexis Philip
 */

/**
 * Clones a class instance (or object|array of class instances)
 * with prototype and without reference, then returns its copy.
 * @param {object|array} elements -
 *      object(instance) - A class instance
 *      object - An object containing class instances.
 *      array - An array containing class instances.
 * @param {string} [type=""] - Precise a 'type' if you need to clone a list of class instances instead of one class instance.
 *      "object" - If you need to clone an object containing class instances.
 *      "array" - If you need to clone an array containing class instances.
 * @returns {object|array} The cloned element(s).
 * @link https://gist.github.com/GeorgeGkas/36f7a7f9a9641c2115a11d58233ebed2
 */
const clone = (elements, type = "") => {
    /* If you want to clone an object containing class instances, this
     is going to clone all of the class instances in the given object. */
    if (type === "object") {
        let object = {};
        for (const [key, value] of Object.entries(elements)) {
            object[parseInt(key)] = clone(value);
        }
        return object;
    } /* If you want to clone an array containing class instances, this
     is going to clone all of the class instances in the given array. */
    else if (type === "array") {
        let array = [];
        for (let i = 0; i < elements.length; i++) {
            array.push(clone(elements[i]));
        }
        return array;
    } // Clones the given class instance.
    else {
        return Object.assign(
            Object.create(
                // Set the prototype of the new object to the prototype of the instance.
                // Used to allow new object behave like class instance.
                Object.getPrototypeOf(elements),
            ),
            // Prevent shallow copies of nested structures like arrays, etc.
            JSON.parse(JSON.stringify(elements)),
        );
    }
}
