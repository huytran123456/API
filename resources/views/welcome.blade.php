<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="token" content="{{csrf_token()}}">
        <title>LAB 5</title>

        <!-- Fonts -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">

    </head>
    <body>
        <div class=container-xl>
        <form class="border border-light p-5" >

            <p class="h4 mb-4 text-center"><strong>FORM</strong></p>
            <input  type="text" id='Id' class="form-control mb-4" placeholder="ID" >
            <input  type="text" id='first_name' class="form-control mb-4" placeholder="FIRST NAME" >
            <input  type="text" id='last_name' class="form-control mb-4" placeholder="LAST NAME" >
            <input  type="password" id='password' class="form-control mb-4" placeholder="PASSWORD" >
            <input  type="text" id='email' class="form-control mb-4" placeholder="EMAIL" >
            <input  type="text" id='phone' class="form-control mb-4" placeholder="PHONE" >
            <button class="btn btn-dark-green btn-block my-4" style='background-color:green'  id='create' onclick="Create()" type='click' >Create</button>
            <button class="btn btn-dark-green btn-block my-4" style='background-color:green' id='update' onclick='Update()' type='click'>Update</button>

        </form>
        <p class="h4 mb-4 text-center"><strong>SEARCH ID</strong></p>
        <input  type="text" id='filter' class="form-control mb-4" placeholder=" SEARCH ID" >
        <button class="btn btn-dark-green btn-block my-4" style='background-color:green' onclick="Search()" >Search</button>
        <table class="table">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">First</th>
                <th scope="col">Last</th>
                <th scope="col">Email</th>
              </tr>
            </thead>
            <tbody id='Content_table'>


            </tbody>
          </table>
          <nav aria-label="Page navigation example">
            <ul class="pagination justify-content-center" id='link_pa'>

            </ul>
          </nav>
        </div>

     <script src="js/jquery.min.js"></script>

     <script src="/js/pagination.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
    <script>

  // const axios=require('axios').default
  function wait(ms){
   var start = new Date().getTime();
   var end = start;
   while(end < start + ms) {
     end = new Date().getTime();
  }
}
  window.axios.defaults.headers.common = {
    'X-Requested-With': 'XMLHttpRequest',
    //'X-CSRF-TOKEN' : document.querySelector('meta[name="csrf-token"]').getAttribute('content'),
    'Content-Type': 'application/json',
};
   var first_name=document.getElementById('first_name').value
        var last_name=document.getElementById('last_name').value
        var email=document.getElementById('email').value
        var phone=document.getElementById('phone').value
        var password=document.getElementById('password').value
        var id=document.getElementById('Id').value
        async function Create(){
     event.preventDefault()
          // e.preventDefault()
     res= await axios.post('/api/users',{
     first_name:document.getElementById('first_name').value,
     last_name:document.getElementById('last_name').value,
     email:document.getElementById('email').value,
     phone:document.getElementById('phone').value,
     password:document.getElementById('password').value,
  //   _token: document.querySelector('meta[name="csrf-token"]').getAttribute('content')
   }).then(response => {
                        if (response.status==200) {
                            //return response

                            console.log(response)
                            //wait(10000)
                         //   auth.login(response.data.token.access_token,response.data.user);
                      //      this.$router.push('/index');
                        } else {
                            console.log(response)
                        }
                    })
            return false

        }
        async function Update(){
     event.preventDefault()
     res= await axios.post('/api/users/'+id,{
     first_name:document.getElementById('first_name').value,
     last_name:document.getElementById('last_name').value,
     email:document.getElementById('email').value,
     phone:document.getElementById('phone').value,
    // id:document.getElementById('Id').value,
  //   _token: document.querySelector('meta[name="csrf-token"]').getAttribute('content')
   }).then(response => {
                        if (response.status==200) {
                            //return response

                            console.log(response)
                           // wait(10000)
                         //   auth.login(response.data.token.access_token,response.data.user);
                      //      this.$router.push('/index');
                        } else {
                            console.log(response)
                        }
                    })

        }
         function Search(){
            var fil=document.getElementById('filter').value
            //console.log(fil)
          //  wait(5000)
            makeRe('/'+fil,1)

         // console.log(res)
         // wait(6000)
        }
 async function makeRe(a,cur){
    res= await  axios.get('/api/users'+a)
          .then(response=>{
            if (response.status==200) {
                            //return response

                         //   console.log(response)
                    myObj = response.data.data;
                      txt = "<tr>"
                    for (x in myObj) {
                        txt +=  "<th scope='row'>"+  myObj[x].id + "</th>";
                 txt += "<td>" + myObj[x].first_name + "</td>";
                 txt += "<td>" + myObj[x].last_name + "</td>";
                 txt += "<td>" + myObj[x].email + "</td>";
                 txt+="</tr>"
                      }
                txt += "</table>"
                html = "";
                myObjj = response.data.links;
                curr=parseInt(cur)
                disPrev=""
                disNex=""
             //   console.log(curr)
                idPrev=curr-1
                idNex=curr+1
                sty=""
                if(curr==1)
                {
                    disPrev="disabled"
                }
                if(curr==myObjj.length-2 )
                {
                    disNex="disabled"
                }
                html += "<li class='page-item'><button class='page-link' onclick='Yo(this)' id="+idPrev+" "+disPrev+" >" +  myObjj[0].label + "</button></li>"
               // console.log(myObjj)
                for(x in myObjj){
                    if(x==0 ||x== myObjj.length-1){
                        continue
                    }
                    if(x==curr)
                    {
                        sty="style='background-color:red'"
                    }
                    html += "<li class='page-item'><button class='page-link' onclick='Yo(this)' id="+myObjj[x].label+" "+sty+" >" +  myObjj[x].label + "</button></li>";
                    sty=""
                }
                html += "<li class='page-item'><button class='page-link' onclick='Yo(this)' id="+idNex+" "+disNex+" >" +  myObjj[myObjj.length-1].label + "</button></li>"
               // html += "</ul>";
                disNex=""
                disPrev=""
                document.getElementById("link_pa").innerHTML = html;
                document.getElementById("Content_table").innerHTML = txt;

           //     console.log((response.data))
                            //wait(10000)
                         //   auth.login(response.data.token.access_token,response.data.user);
                      //      this.$router.push('/index');
                        } else {
                            console.log(response)
                        }
          })
  }

       function Yo(ele) {
             event.preventDefault();
             var page = ele.id;
        //     console.log(page)
          //   wait(5000)
             makeRe('?page='+page,ele.id)
       };


    </script>
    </body>
</html>
