/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.55
 * Generated at: 2020-09-23 09:53:29 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;

public final class NewFile15_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("java.util");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<title>jsp를 이용한 달력</title>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("function selectCheck(form){\r\n");
      out.write("\tform.submit();\r\n");
      out.write("}\r\n");
      out.write("function monthDown(form){\r\n");
      out.write(" if(form.month.value>1){\r\n");
      out.write("\t form.month.value--;\r\n");
      out.write(" }else {\r\n");
      out.write("\t form.month.value=12;\r\n");
      out.write("\t form.year.value--;\r\n");
      out.write(" }\r\n");
      out.write(" form.submit();\r\n");
      out.write("}\r\n");
      out.write("function monthUp(form){\r\n");
      out.write(" if(form.month.value<12){\r\n");
      out.write("\t form.month.value++;\r\n");
      out.write(" }else {\r\n");
      out.write("\t form.month.value=1;\r\n");
      out.write("\t form.year.value++;\r\n");
      out.write(" }\r\n");
      out.write(" form.submit();\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");

//현재 날짜 정보 
Calendar cr = Calendar.getInstance();
int year = cr.get(Calendar.YEAR);
int month = cr.get(Calendar.MONTH);
int date = cr.get(Calendar.DATE);
 
//오늘 날짜
String today = year + ":" +(month+1)+ ":"+date; 
 
//선택한 연도 / 월
String input_year = request.getParameter("year");
String input_month = request.getParameter("month");
 
if(input_month != null){
 month = Integer.parseInt(input_month)-1;
}
if(input_year != null){
 year = Integer.parseInt(input_year);
}
// 1일부터 시작하는 달력을 만들기 위해 오늘의 연도,월을 셋팅하고 일부분은 1을 셋팅한다.
cr.set(year, month, 1);
 
// 셋팅한 날짜로 부터 아래 내용을 구함
 
// 해당 월의 첫날를 구함
int startDate = cr.getMinimum(Calendar.DATE);
 
// 해당 월의 마지막 날을 구함
int endDate = cr.getActualMaximum(Calendar.DATE);
 
// 1일의 요일을 구함
int startDay = cr.get(Calendar.DAY_OF_WEEK);
 
int count = 0;

      out.write("\r\n");
      out.write("<form method=\"post\" action=\"#\" name=\"change\">\r\n");
      out.write("<table width=\"600\" cellpadding=\"0\" cellspacing=\"0\" border=\"0\" align=\"center\">\r\n");
      out.write(" <tr>\r\n");
      out.write("   <td width=\"140\" align=\"right\"><input type=\"button\" value=\"◁\" onClick=\"monthDown(this.form)\"></td>\r\n");
      out.write("      <td width=\"120\" align=\"center\">\r\n");
      out.write("      <select name=\"year\" onchange=\"selectCheck(this.form)\">\r\n");
      out.write("      ");

      for(int i=year-10;i<year+10;i++){
       String selected = (i == year)?"selected":"";
       String color = (i == year)?"#CCCCCC":"#FFFFFF";
         out.print("<option value="+i+" "+selected+" style=background:"+color+">"+i+"</option>");       
      }
      
      out.write("\r\n");
      out.write("      </select>\r\n");
      out.write("      <select name=\"month\" onchange=\"selectCheck(this.form)\">\r\n");
      out.write("      ");

      for(int i=1;i<=12;i++){
       String selected = (i == month+1)?"selected":"";
       String color = (i == month+1)?"#CCCCCC":"#FFFFFF";
         out.print("<option value="+i+" "+selected+" style=background:"+color+">"+i+"</option>");       
      }
      
      out.write("\r\n");
      out.write("      </select></td>\r\n");
      out.write("      <td width=\"140\"><input type=\"button\" value=\"▷\" onClick=\"monthUp(this.form)\"></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("    <tr>\r\n");
      out.write("      <td align=\"right\" colspan=\"3\"><a href=\"calendar.jsp\"><font size=\"2\">오늘 :  ");
      out.print(today );
      out.write("</font></a></td>\r\n");
      out.write("    </tr>\r\n");
      out.write("</table> \r\n");
      out.write("</form>        \r\n");
      out.write("<table width=\"800\" height=\"500\"  cellpadding=\"0\" cellspacing=\"0\" border=\"1\" align=\"center\">\r\n");
      out.write(" <tr height=\"30\">\r\n");
      out.write("  <td><font size=\"2\">일</font></td>\r\n");
      out.write("  <td><font size=\"2\">월</font></td>\r\n");
      out.write("  <td><font size=\"2\">화</font></td>\r\n");
      out.write("  <td><font size=\"2\">수</font></td>\r\n");
      out.write("  <td><font size=\"2\">목</font></td>\r\n");
      out.write("  <td><font size=\"2\">금</font></td>\r\n");
      out.write("  <td><font size=\"2\">토</font></td>\r\n");
      out.write(" </tr>\r\n");
      out.write(" <tr height=\"30\">\r\n");

for (int i=1;i<startDay;i++){
 count++;

      out.write("\r\n");
      out.write("        <td>&nbsp;</td>\r\n");
 
}
for (int i=startDate;i<=endDate;i++){
 String bgcolor = (today.equals(year+":"+(month+1)+":"+i))? "#CCCCCC" : "#FFFFFF";
 String color = (count%7 == 0 || count%7 == 6)? "red" : "black";
 count++;

      out.write(" \r\n");
      out.write("  <td bgcolor=\"");
      out.print(bgcolor );
      out.write("\"><font size=\"2\" color=");
      out.print(color );
      out.write('>');
      out.print(i );
      out.write("</font></td>\r\n");

  if(count%7 == 0 && i < endDate){

      out.write(" \r\n");
      out.write(" </tr>\r\n");
      out.write(" <tr height=\"30\">\r\n");

  }
}
while(count%7 != 0){

      out.write("\r\n");
      out.write("       <td>&nbsp;</td>\r\n");
 
count++;
 }

      out.write("\r\n");
      out.write("</tr>  \r\n");
      out.write("</table>\r\n");
      out.write("</body>\r\n");
      out.write("</html> \r\n");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
