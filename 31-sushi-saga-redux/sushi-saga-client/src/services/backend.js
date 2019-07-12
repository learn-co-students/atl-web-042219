const API = "http://localhost:3000/sushis"

export function getSushi() {
  return fetch(API).then(res => res.json())
}