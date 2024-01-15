<?php
$con = mysqli_connect("localhost", "root", "", "bd21") or die("erreur de connexion");
$idstation=(int)$_POST["idstation"];
$saison=$_POST["saison"];
$annee=(int)$_POST["annee"];
$tempurateur=(float)$_POST["temp"];
$pluie=(int)$_POST["pel"];
$req="SELECT IdStation,Annee,Saison FROM mesure where IdStation=$idstation and Annee=$annee and Saison=$saison ";
$res=mysqli_query($con,$req);
echo $res;
if($res){
    echo "Mesure deja enregistrer";
}else{
    $req1="INSERT INTO mesure VALUES('$idstation','$annee','$saison','$tempurateur','$pluie')" or die ("erreur ligne 13 vscode");
    if(mysqli_query($con,$req1)){
        echo "Ajout efféctue avec succés";
    }else{
        echo "l'insertion est echoué";
    }
}
mysqli_close($con);

?>