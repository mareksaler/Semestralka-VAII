const submitBtn = document.getElementById('create');
const title = document.getElementById('nazov');
const obsah = document.getElementById('obsah');
const file = document.getElementById('formFile');
const dlzka = document.getElementById('dlzka');
const cas = document.getElementById('cas');

function updateSubmitButton() {
    const titleValue = title.value.trim();
    const obsahValue = obsah.value;
    const dlzkaValue = dlzka.value;
    const casValue = cas.value;
    const fileValue = file.value ;
    
    if ((titleValue == "") || titleValue.length < 3) {
        submitBtn.setAttribute('disabled', 'disabled');
        return;
    }

    if ((obsahValue == "") || obsahValue.length < 5) {
        submitBtn.setAttribute('disabled', 'disabled');  
        return;
    }
    
    if (dlzkaValue < 0 || dlzkaValue > 100 || dlzkaValue == "") {
        submitBtn.setAttribute('disabled', 'disabled'); 
        return;
    }

    if (fileValue == "") {
        submitBtn.setAttribute('disabled', 'disabled'); 
        return;
    }

    if (casValue < 0 || casValue > 100 || casValue == "") {
        submitBtn.setAttribute('disabled', 'disabled'); 
        return;
    }

    submitBtn.removeAttribute('disabled');
}

file.onchange = function() {
    if(this.files[0].size > 5048){
       alert("Obrazok je prilis velky! Max 5 MB");
       this.value = "";
    };
};

title.addEventListener('input', updateSubmitButton);
dlzka.addEventListener('input', updateSubmitButton);
cas.addEventListener('input', updateSubmitButton);
file.addEventListener('change', updateSubmitButton);
obsah.addEventListener('input', updateSubmitButton);