function num(ch){
    test=true;
    i=0;
    while (test==true && i<ch.length){
        if((ch.charAt(i)<"0")||(ch.charAt(i)>"9")){
            test=false;
        }i++;
    }
    return (test);
}
function verif()
{
    sat=document.getElementById("sta").selectedIndex;
    sai=document.getElementById("sai").selectedIndex;
    x=document.getElementById("2018").checked;
    y=document.getElementById("2019").checked;
    temp=document.getElementById("temp").value;
    pel=document.getElementById("pel").value;
    if(sat==0){
        alert("chouir une statistique");
    }
    if(sai==0){
        alert("choisir une saison")
    }
    if(x==false && y==false){
        alert("choisir anne")
    }
    if(Number(ple)<-5||Number(ple)>50){
        alert("tempirature entr -5et50")
    }

}
function veif2(){
    sa=document.getElementById("seta").selectedIndex;
    x=document.getElementById("tesm").checked;
    y=document.getElementById("pluie").checked;
    if(x==false && y==false){
        alert("choisir anne")
    }
    if(sa==0){
        alert("choisir")
    }



}