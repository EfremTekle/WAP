 function max(a,b){
    // var a=prompt("enter a number");
    // var b=prompt("enter a number");
    if(a>b){
      console.log(a);
    }
    else {
        console.log(b);
        //return b;
       // alert(b);
    }
}
    function maxOfthree(a,b,c){
        // var a=prompt("enter first number");
        // var b=prompt(" enter second number");
            //var c=prompt("enter third number");
            if(a>b&&c<b){
            console.log(a);
        }
        else if(b>c&&a<b){
            console.log(b);
        }
        else{
            console.log(c);
        }
    }

     function isvowel(k){
         // if(k=="e"||k=="u"||k=="o"||k=="i"||k=="a"){
         //     console.log("true");
         // }

         console.log(k=="e"||k=="u"||k=="o"||k=="i"||k=="a");

         return (k=="e"||k=="u"||k=="o"||k=="i"||k=="a");
     }
 function sum(k){
    var sum1=0;
    for(var i=0;i<k.length;i++){
        sum1+=k[i];
    }
    console.log("Sum of itmes of "+k+" = "+ sum1);
    //  var t = k.split(",").map(Number);
    // s= t.reduce(function (p,v) {return p+v;});
    //
    //  console.log(s)
 }
 function multiply(s){
    if(s.length>0) {
        var res = s[0];
        for (var i = 1; i < s.length; i++) {
            res=res*s[i];
        }
        console.log("the vale is:"+res)
        return res;
    }else return null;
 }


   function filterLongWords(s,w){
    var ret = s.filter(function (elem) {return elem.length>w;});
      console.log(ret);
      alert(ret);
    return ret;
       //console.log(ret);
   }
   function reverse(f){
    var s="";
    for(var i=0;i<f.length;i++){
        s=f[i]+s;
    }
    console.log(s);
   }
 function findLongestWord(h){
    var longest=h[0];
    for(var i=1;i<h.length;i++){
        if(h[i]>longest) {
            longest = h[i];
        }

    }
     console.log(longest);
 }