<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

<link rel="stylesheet" href="allcss.css" />


<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
	

	
<link rel="stylesheet" href="navAndFooter.css" />

<link href="css/bootstrap.min.css" rel="stylesheet" />



<link rel = "stylesheet" type = "text/css" href = "Employee.css" />



<meta charset="UTF-8">
<title>SLIIT OOP Employee Management</title>
</head>
<body class="body" style="background-image: url('img/324554-P9GY6X-129.jpg')"> 



	<jsp:include page="navbar.jsp" />
	<br>
	<div class="container">
        <form class="supplier-form" action="#" method="POST">
            <h1>Edit My Account</h1>
            
           <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGQAAABkCAYAAABw4pVUAAAACXBIWXMAAAsTAAALEwEAmpwYAAASMklEQVR4nO1dB1AVWZd+u/tvqq3anHdrd2urtmr3n5l/nBkdxQCCOqPIgGQQiZKjIFElKAIGjAhGkkgQgd9AEEkGoBvFnHEQRbofofuBgGKA+bZuy2OQ+B68J6j9VX0Fr7vh3T7fO+fee+65/SQSESJEiBAhQoQIESJEiBAhQoQIESJEiBDxKy52sv9At7HfVXNNi+WsaW+aUdvJ/P2gy0SoC9UdjX9bzTOONM/kUDzD0jyLMdhE8Ux2Dcfa3pBK/0JURYWo4aVf0ByTRvNszzgijEiKY9spjtlOtUv/SxRmkiGJ4pkUimP6FDX+nedteNzdgXudHK63t+Dn7nbU8Kzws76rvY992VncC3gAcAbgDyANQFz/a8L/FkUbAXQbY0BxLKesNzzqakfLqxeCKHefc5D2dOOyTCr8JMcJW1+96Ojp6z0F4ASAewBqABzs59yR2vPZAsAfUDwbRXHMLxMJT0N5s6N1QIhbHW0DwjT3dP/S9fZ1Vb8IwVN939MSAP6Q5plkVQgh59X2ZsFbCMnvJHTJXxNKe14UAtCd6nuflqA45sBkBbjfyYN/3aMQybVsTze63765A2AJgMMAsvv5g+RzBsWzfooa/SLzGBUND1HV0jiiR9R1yRTitfYW3HnOoa5T9svtzlZHANoATPv5j5LPFVV801yaY96OJkCltAEHMlLgZbcKBjO/gd43v8OKWd9g+YyvsOoHbUSEr0f2+XOg2pom4V1M5+WOZnGEVd3Y+OcUzz4cyUhV0qc4kJYEc825iLTQQp73ApQFaaM8uJ9B2sj31cRO6/kw+HYGLJZoIzE3a+KicMx5MqiQfM6gOHbDUMPkVpZjrZsTTOZ+jwjzhTgXsPBXEUYhEWqv7Xzofv0lnC3NcOJi6UQ9xVLyWeeieKZTboxLbAOCfT3huFQL2d5aKA8eX4ihLAlYiHDTeVj65W/hbrsKsXt3IiH1CPKo84qKUpcN/JHkcwTNseFyQ1Q8fQQnU0MccF6stAgjscBvIbZZacLnJ024L5sH3a+/QlZZoUKiUHyTueRzQy3wxzTPNMuNEODthiT3RSoRYySGmmohIS1JQUGYMsmnBpJhpduk2hTXZE+GtJSMda+RSfXkqXGKZ3XlBjh29jQCTdUnBqGv3jxklZ1VTBCSO+Oe/bvkU0A1zy6lOOYMxTFvRrnZXyiOuU1xzB35MQ9bK+T7Kd9fKMqyoIUw1piF6tZnynTwLpKPGbSMWUBxzAVlRzUXmcew1lmgVu847qmFsNBgZUdbOZKPERUNDX9G8eyRiY79f09fQqTND8M/1cHaOOmtqRJB4lbrYPfBfUq1i+LYp5KPDbUy2V+RydRExaB5Fqmnc4eNrEqDtBGiNwvRtroIM5iFAj+tSQmS4amDkEA/pdt2qePp30g+FtAc95c0x16bjBg0z2J/ejKS3d7v0GNM56A6NQp9j0rxpOQIwi0WIcxgJn6vhMcQDyvun1Ce9V8Ia71lSretqr3pG8nHAJJeoHkmd7Ji0DyLxJxMJA0S5NQaTWxzXCGIMZj1Zw9ii/1y+P44E9vNZ+O4xwLBk4YKQbwpbpUG/JbPFbxMftzg+++UbhvFM0erOen3kumOd4UGkxeDJkPewlPYZaczYLhoMw2wlVnDBJHzzf0iVB4Ow15XIwToz4ev7vfw+XEmfJfOEkTYaLUUhXuC8ebhOWy0WIzyoHdeovf1F2SEN9F21tIy6XLJtA1VgyZ0k2XhrVoEGf3aR0SuWjqqGMoye5M7Mt3ejeAMv/tqMoL0k8m93t7w15LpBJpn/VUlBk3CQtsz2OhoCEY7vUYLSSGrBwzaWpOD22cO4WpOPO7kHwZfe3KY0V/dO4v60qO4lpuA63kJaKhIx+v7xcK5B2f2I85aQ+hPTObPUVWb66pk7H9Kpk/fwdapUhCaZ+FqZoCSQG0csZ+Lq9l7BGNmxARi5YI58DfXR6TzSoTamsLf7Ce8fXhuQIyO66dhoz0fLrqLEO5gJlznY7QMZYlbhPMvbxdik+EsFAdow9nCRHVt5piGmpaWf55qPSRk1KFqMWiexY64nTjhpYWt5nPQdjlPZSGLcIP+98j21sbGyHDVtptjK0kNwJQKQvFMkDoEKbhciViHH7HBYDZ660oGjNn7sAR7/Z0RH+Ty3vGhJOeSwn2QHLFm2Ln1BnOw2VIb6UVnVN5ummedP7gIZNhHc0yCEKo4pleVN1TV3Ihofw8EWa2Au95ihBhpDjNo6ZEY/PjF/+F+YdKYnlCTuUdYA3l+/fR7x4P0NbDJwQxRnvbY4GaHi0/rVNZ+UjdW87zp7z6IEJTs2e9onqmQvzmp/iOVgFdkUpXdUFJmCvITNr3rgM8mIcrBaFiHvdl55TtBikYX5EJqLFZpaWDFdzMGOnQ5A42XCP+b/F58cDMSkxJU6iWUjFF/TRdxRZpjXw2tCHzV1ysUmanqZhJzs1CYshPPb+bjXOJWxAe6DjN2zo71OBblP6Z3EOHINVey44ad2+Roifz9kWihc5EfvwmHMlJUKwjP3FWrGGTdgrwRKb98OELpDKkEVNXNnL1zDXERAZBSOahIjcUePyeVduiExMPOp8aCv3oKUT5OyL9Ro1JBhOjR3jRDLWJcbmNnydcxbnS0jlhcRqr9VHkzQc42eH2vGEUHo7Hbz1HlgkS7WqMseRv66krhbKyvgsmhGjt3AF8Oqvp2edL9vHFwmeVgDi7DJL/XDzo3kX6louEhjhWdgquZoTCfuHXmkFoE2eJuI/QhbVdOwnu1nTrEAMWzu1QliK686vtl75sieVHySLw9qFCZFC03DzpHKgAVbXx5/X0Er10D3RlfQX/mNzCZNwfHogMEoykiCBltkcnh6wfFuJt/ZNzrt3vZCf+7IGmH0msiCpNjilQiyCBhjNmXXTdIrSsp4W/o94LGF50KkVyrkBiPH8Dyh0VwNNBDTUUhel40o/s5A0/TFYhwXKmQIJ03z6DkcLTArpv5416/w9sB6+0t4GSyAhef/awuDylVtSDmbE93971+QZ6+eC4YuellF5iesUmuUUQQErs97W2wzmU1Xve0oq+3fYDdnSzys5IR7emg8pC11c8F+5IP4WJTvXq849295atUEJKXGfomgzt14jmTbXTGuQKYzNPA8/Zn74khZ+8bHr6WJsMM+qgkFXXFKWManYSv6oxdYKuODzsX7Gw3yZrfKVh/r2pj/nfomwwe9ioaksZiRMQG7I0MHVEMOSPXuOPa6eETQGlVNi6l7RCShmRydyFlO8qTtiJ/30YUxG8SwtfQGTrh1dwErFvro2YxhLxWjBpm5aptZP51GpFREVjr5YbobdFwtbIQwlLfGII8eXQDLvq6kF0bbtzBeSsyKiN9yVheQ66xXrIQhbdr1S4IxbHGqhWkufmfVNnAw1lpMJ6ngfiYjcg6HIe1tlZC+mM8Qfp621GefwLrnWzw+sGvaXZlSULYejtzHM48+gHEYN6ovBiif418oOh5Mjz34CYsdbTQ3PTwPUOXnspC4883B16/ec3hRZd0RFFykhIQ5mqPVw+GZ3jrS1JRmbpdYPet4aMskssKc7RE3P7d6g9VQrhijkvUAYpniyfaKLKhJikvC1ExkfB0sEH6gd2jekBnxzMk79mKo/ticeXS2VGvKzieAj8rU9SXZ7xncNJXsJXHBZJ186FhKtzJCknpitXwqoZq2r5Ac4znRBqUfPIETLUWwGbpYkT6+yBijQca62+NauijcbF42d08bugivHutEjaLdXAo1EsIQ2OFKdLRuxsuw5nLlR9QDIGMWh5I8K7ojZUp05ij+Xkw0piN84W56H0rG7OzJiHr1pULuFCYq5AYcuamHIC/hQHclmkib8e690ZTZI2djLS8DZbAy2gZAny9PrQYcl5Vy+ohzTOBijaCbDezXKyNa9WlYxq07PRxZB/Zh5uXzyMucgMeP7ymlCDZifE4sTMEbF4wUgPNsNZQG4EmS+BruAhr9HWQGmQBJjcI61bqYq23+1QJAvJMFZULUgH8RtGCaVJPFexsP6pH7Nscir0b1yF9/+j9SZ8CPBwbhaJDG/GmYtOYjLTTg/NK8ykThOaZexK1PV+EY6+P14Cd8buQeWjvMANyzfVI3BmNVy9bJiVEX2872tsaELzaFnRGzLiCHNtgC2PNecIaiyIGJLN3UuidcDRRSK2crq2etChq28VLisHIcG6sN9+VsAdZIwhSnHtMyE1NVITOjmcozktHiKMNDGfPxA5/F7wojxxXEFlhGPysjYQsspOFKeISDwjJzNEmrWT7HBmIbA3xR6Sfl5DWCfTxEPY5TlQQUtEpUSfILicSwkZ67siJCyVCnmioQYcmDhXhiy6pMCEM93SG4dw5CIoMg09kGIL8XbHF3w5Hw2xA73fDgzQ/oS/pOheO1+UbISvYAFlhqCDItcwN2B/jg/SKbEScyoZbcACWz/wW3s4OOHIiQ+jzSLtLH92BubYm8o4eem8gQjLPMYE+8HV2mPAiFsWxoZIPAZJ8rOalZjTH+tIcs45uk3rQHFPgYWmGGzXlE/aGuruXsdHbFYYL5sLd2xMRxzPgELcfTuXVsE87Dlf6hkDn8iq4pqXDMyEeXttj4B0eAq/QILiGr4fTtq3wqb4Cp3MXhL+T/w0hOb4uLwc2np4wXqSNzTGRCAnwQ0JMxIjtIR8mLwtjHM5OR+TmCFgvXQK9b7+GvYEe9iUdUESo3ZKpAsWxRkW3amG/fCkqz51SSojeN7wwMVxlZgavLdFwu0DBNikNdseOC4a1jjv4nmFVQTfqOryzc6Cvq4cwd8dRswTnC3KENM/W4LVoeHhd8Jz7t6oR5umMEF/vMUVR2crhRLewkUacvXMVa50cYKWjhRBHW0T6eoxLu2VLsDrAHw7JaXAquSgI4FRyCbbJ6bDPzINTURlWnylWuSgDwsRuh98qc8HYQwUhk1YSPkcSK9zLVchIjOohHBs2ZYLUypj/GNyYkrrbyCgpEPZ7jMWIiFA4rPGGS2m/ANmn4Jh/Dqv2JsC5goJN4tEBUdQhiJwekZuQtCtGuRB7pwaBHi6jC9LGWkumEjTPtCjV6bU9g5WeLtZW18A6bj9cLl6GzeEUob8gAgjHLtQI4UudYhB6V9fCaJE2pM8eKCxIz8sWWC7SEkZp03LHFVm6VEYQ8iQF39htAx5AQpVzeSXsko7BPjNX8BTr+INwKq+Cy6XLahfFLz4OmQeHD91H4oWiPCELHbvOH2Za8xGfeGBIuGJuTakYgiAy1k0ZQciCVejJXNgSAbJPYfXJIqzaHQ+X8zRsj6QOHLOOO6B2MQiDS0oQaL9qXDFa2Uc4m3Ns4HVXRxPczQyRc6lseu1rJ8NhZZ4YusbVCa579gqffttDKYKnOBaWwXrfQbheugKbg4kfpP+Q0526BusfF09oyH6dLkNogK98dFVKHhUimQ5QJmxt2xMLCwN9WKzQh5WZMVaaGGGlqTEsDPVh/pMerMxMYLZ8mfBTWVoaGcJwyWLYm5sqTBsTI0QF+ExIEFK+5GZhIuxnJyuukumCahmrNdFUA61CkpSH/sxv0c49mfBEVRmSuYmXteUbqvXZ/0imGyiOvTjVgtA8i7ANIdi4xkOYeKpTDLL87Gdr1Wv1g856yXSEULUyxjMTPxQrpQ1Y47wa7qaGSNm7TSiqGI8kO93CPEQH/xRcSz0e3KYGMtXE8GTuQY4R3r9ZjZKTmXDSX/7ScPbMci0trd9Ipisojt061YLQg4ryoqI3Inxd4LgsuU4jalMYktKTsWdPbK/ZgvlPE3dt8X77tmPx79MOO5ppzntipjmv0Wz+3CcmGrN/Np2rcX7Zl7+1NzWVTO+nzpFRxtSFLmbS++aFjDbHrJZ8Sqhtbf0XimPqP6QYFMdsJ19jQXFs9YT/D8f0kjmV5FME2VRPcczjDyIIx26RP9a1EHV/SvPsXmXmRe8EZRvpNqmO5FMGeTwezTO0GoV4Ndonun/XcIECD/MnX/gS9Nl82Qv5xFI8s09V33JAyz/RPHO3po2dOd77V3ON/0b6BLJoRL5ph5Dm2EPCo0G45jlTvul/qkDJmPmkbkkFXiGjOSbkDu78yVTf00cPoXaYfEELzxYrG+P7n63iP+2ewvOpoLLt6b/SXJND//eE1FI8I5U/IYLimA4SksgGGJqXBpAJ51S3V4QIESJEiBAhQoQIESJEiBAhQoQIESJEiBAhQoREafw/KsK1IuuV3YAAAAAASUVORK5CYII=">
           <label for="shopName">Shop Name</label>
            <input type="text" id="shopName" name="shopName" required>

            <label for="shopAddress">Shop Address</label>
            <input type="text" id="shopAddress" name="shopAddress" required>

            <label for="shopOwner">Shop Owner</label>
            <input type="text" id="shopOwner" name="shopOwner" required>

            <label for="phone">Phone</label>
            <input type="tel" id="phone" name="phone" required>

            <label for="email">Email</label>
            <input type="email" id="email" name="email" required>

            <label for="username">Username</label>
            <input type="text" id="username" name="username" required>

            <label for="password">Password</label>
            <input type="password" id="password" name="password" required>
<br><br>
            
             <input type="submit" name="submit" value="Add Shop" class="btn btn-primary"/>
            
        </form>
    </div>
	<jsp:include page="footer.jsp" />
	
	
	
	<!-- ... (previous HTML code) ... -->



<script>
    // JavaScript to clear form inputs after submission
    document.querySelector(".supplier-form").addEventListener("submit", function () {
        // Reset all input fields in the form
        this.reset();
    });
</script>

<!-- ... (rest of the HTML code) ... -->
	
	


</body>
</html>