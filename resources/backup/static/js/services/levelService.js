import { API_URL } from "../constants/api.js";
const FIELD = 'levels';

export const getById = async (id) => {
    let url = API_URL + `/${FIELD}`;
    if(id !== '')
        url += `/${id}`;

    const response = await fetch(url);
    const json = await response.json();
    return json;
}