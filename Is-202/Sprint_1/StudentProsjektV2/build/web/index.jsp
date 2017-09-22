<%-- 
    Document   : newjsp
    Created on : 20.sep.2017, 14:25:00
    Author     : hytta
--%>
<%@page import="java.io.*" %>"
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Uploading files</title>
    </head>
    <body>
    
        <h1>Uploading files</h1>
        <form name="uploadForm" action="index.jsp" method="POST" enctype="multipart/form-data">
            <%
                String saveFile = new String();
                String contentType = request.getContentType();
                
                if ((contentType != null) &&(contentType.indexOf("multipart/form-data") >= 0)) {
                    
                   DataInputStream in = new DataInputStream(request.getInputStream());
                   
                   int formDataLenght = request.getContentLength();
                   byte dataBytes[] = new byte[formDataLenght];
                   int byteRead = 0;
                   int totalBytesRead = 0;
                   
                   while (totalBytesRead < formDataLenght) {
                       byteRead = in.read(dataBytes, totalBytesRead, formDataLenght);
                       totalBytesRead += byteRead; 
                       
                   }
                   
                   String file = new String (dataBytes);
                   
                   saveFile = file.substring(file.indexOf ("filename=\"") + 10);
                   saveFile = saveFile.substring(0, saveFile.indexOf("\n"));
                   saveFile = saveFile.substring(saveFile.lastIndexOf("\\") + 1, saveFile.indexOf("\""));
                   
                   int lastIndex = contentType.lastIndexOf("=");
                   
                   String boundary = contentType.substring(lastIndex + 1, contentType.length());
                   
                   int pos;
                   
                   pos = file.indexOf("filename=\"");
                   pos = file.indexOf("\n", pos) + 1; 
                   pos = file.indexOf("\n", pos) + 1; 
                   pos = file.indexOf("\n", pos) + 1; 
                   
                   int boundaryLocation = file.indexOf(boundary, pos) - 4;
                   
                   int startPos = ((file.substring(0, pos)).getBytes()).length;
                   int endPos = ((file.substring(0, boundaryLocation)).getBytes()) .length; 
                   
                   saveFile = "C:/FileUploader/" + saveFile;
                   
                   File ff = new File (saveFile);
                   
                   try{
                       FileOutputStream fileOut = new FileOutputStream(ff);
                       fileOut.write(dataBytes, startPos, (endPos - startPos));
                       fileOut.flush();
                       fileOut.close();
                   } catch (Exception e) {
                       out.println(e);
                   }
                }
                %>
            <input type="file" name="file" value="" width="100" /> 
            <input type="submit" value="Submit" name="submit" />
        </form>
    </body>
</html>
