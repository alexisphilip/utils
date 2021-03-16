/**
 * Gets an URL parameter value from the given key.
 * @param {string} key - URL parameter key to find.
 * @returns {string}
 */
 function urlGetParam(key) {
    const url = new URL(window.location.href);
    return url.searchParams.get(key);
}

/**
 * Sets an URL parameter from a given key and value.
 * @param {string} key - URL parameter key to find.
 * @param {string} value - URL parameter value to set.
 */
function urlSetParam(key, value) {
    const url = new URL(window.location.href);
    url.searchParams.set(key, value);
    window.history.replaceState(null, null, url);
}

/**
 * Removes an URL parameter from a given key.
 * @param {string} key - URL parameter key to find.
 */
function urlRemoveParam(key) {
    const url = new URL(window.location.href);
    url.searchParams.delete(key);
    window.history.replaceState(null, null, url);
}