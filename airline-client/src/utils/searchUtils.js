/* searchUtils.js */

/*
Functions related to flight searching that by design should not be restricted
(declared) in a component.
*/

export function constructSearchRequestString(baseString, searchParameterObject) {

    let keys = Object.keys(searchParameterObject);

    if (keys === undefined || keys.length == 0) return baseString;

    keys.forEach((k) => {
        if (searchParameterObject[k] === "") {
            delete searchParameterObject[k]
        }
    });

    console.debug(JSON.stringify(searchParameterObject));

    const pairValueStrings = [];

    keys = Object.keys(searchParameterObject);

    keys.forEach((val) => {
        let pair = `${val}=${searchParameterObject[val]}`;
        pairValueStrings.push(pair)
    })

    let modifiedString = `${baseString}?`

    while (pairValueStrings.length > 1) {
        const pair = pairValueStrings.pop();
        modifiedString += `${pair}&`
    }

    return modifiedString + pairValueStrings.pop();
};
