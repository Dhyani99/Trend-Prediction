const ajaxAPILink = 'http://localhost:8085/api/';

async function toggleUser(id, enabled) {
    fetch(ajaxAPILink + 'toggleUser/' + id + '/' + enabled);
}