<%@ Page Language="C#" MasterPageFile="~masterurl/default.master" Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%-- Le balisage et le script de l'élément Content suivant seront placés dans la partie <head> de la page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
    <script type="text/javascript" src="../Scripts/jquery-1.9.1.min.js"></script>
    <SharePoint:ScriptLink Name="sp.js" runat="server" OnDemand="true" LoadAfterUI="true" Localizable="false" />
    <meta name="WebPartPageExpansion" content="full" />

    <!-- Ajoutez vos styles CSS au fichier suivant -->
    <link rel="Stylesheet" type="text/css" href="../Content/App.css" />
    <link rel="Stylesheet" type="text/css" href="../Content/bootstrap.min.css" />
    <link rel="Stylesheet" type="text/css" href="../Content/jquery-ui.css" />

    <!-- Ajoutez votre code JavaScript au fichier suivant -->
    <script type="text/javascript" src="../Scripts/App.js"></script>
    <script type="text/javascript" src="../Scripts/bootstrap.min.js"></script>
    <script type="text/javascript" src="../Scripts/jquery-ui.min.js"></script>

</asp:Content>

<%-- Le balisage de l'élément Content suivant sera placé dans la partie TitleArea de la page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
    New Timesheet
</asp:Content>

<%-- Le balisage et le script de l'élément Content suivant seront placés dans la partie <body> de la page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server">
    <br />
    <br />

    <a href="#" class="btn btn-primary " role="button">BACK</a>

    <br />
    <br />
    <div>  
        <SharePoint:FieldLabel runat="server" FieldName="Project" ControlMode="New" />  
        <SharePoint:FieldDescription runat="server" FieldName="Project" ControlMode="New" />  
        <SharePoint:FormField runat="server" FieldName="Project" ControlMode="New" />  
    </div> 


    <form>
         
         
        <div class="form-group row">
            <div class="col-xs-4">
                <label for="txtMonth">Month</label>
                
                <input type="text" name="txtMonth" id="txtMonth" class="date-picker-month form-control"/>
            </div>
        </div>
         <div class="form-group row">
            <div class="col-xs-4">
                <label for="txtYear">Year</label>
                <input type="text" name="txtFromYear" id="txtYear" class="date-picker-year form-control"/>
            </div>
        </div>

        <div class="form-group row">
            <div class="col-xs-4">
                <label for="SdfPeoplePicker">User</label>
                <SharePoint:PeopleEditor ID="SdfPeoplePicker" runat="server" SelectionSet='User,SecGroup,SPGroup' />
            </div>
        </div>
        
        <div class="form-group row">
            <div class="col-xs-4">
                <label for="exampleInputFile">File input</label>
                <input type="file" id="exampleInputFile">
                <p class="help-block">Example block-level help text here.</p>
            </div>
        </div>

        <div class="container" id="myclass">
          <table class=" table-bordered table-reflow">
            <thead>
              <tr>
                <th class="col-xs-2">Projet</th>
                <th class="col-xs-2">Task Title</th>
                <th class="">Total</th>
                <th>01</th>
                <th>02</th>
                <th>03</th>
                <th>04</th>
                <th>05</th>
                <th>06</th>
                <th>07</th>
                <th>08</th>
                <th>09</th>
                <th>10</th>
                <th>11</th>
                <th>12</th>
                <th>13</th>
                <th>14</th>
                <th>15</th>
                <th>16</th>
                <th>17</th>
                <th>18</th>
                <th>19</th>
                <th>20</th>
                <th>21</th>
                <th>22</th>
                <th>23</th>
                <th>24</th>
                <th>25</th>
                <th>26</th>
                <th>27</th>
                <th>28</th>
                <th>29</th>
                <th>30</th>
                <th>31</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td><input type="text" name="txtFromYear" id="txtProj1" class="date-picker-year form-control"/></td>
                <td><input type="text" name="txtFromYear" id="txtTaskTitle1" class="date-picker-year form-control "/></td>
                <td><input type="text" name="txtFromYear" id="txtTotal1" class="date-picker-year form-control "/></td>
                <td><input type="text" name="txtFromYear" id="day1" class="date-picker-year form-control"/></td>
                
                  <td><input type="text" name="txtFromYear" id="day2" class="date-picker-year form-control"/></td>
                  <td><input type="text" name="txtFromYear" id="day3" class="date-picker-year form-control"/></td>
                  <td><input type="text" name="txtFromYear" id="day4" class="date-picker-year form-control"/></td>
                  <td><input type="text" name="txtFromYear" id="day5" class="date-picker-year form-control"/></td>
                  <td><input type="text" name="txtFromYear" id="day6" class="date-picker-year form-control"/></td>
                  <td><input type="text" name="txtFromYear" id="day7" class="date-picker-year form-control"/></td>
                  <td><input type="text" name="txtFromYear" id="day8" class="date-picker-year form-control"/></td>
                  <td><input type="text" name="txtFromYear" id="day9" class="date-picker-year form-control"/></td>
                  <td><input type="text" name="txtFromYear" id="day10" class="date-picker-year form-control"/></td>
                  <td><input type="text" name="txtFromYear" id="day11" class="date-picker-year form-control"/></td>
                  <td><input type="text" name="txtFromYear" id="day12" class="date-picker-year form-control"/></td>
                  <td><input type="text" name="txtFromYear" id="day13" class="date-picker-year form-control"/></td>
                  <td><input type="text" name="txtFromYear" id="day14" class="date-picker-year form-control"/></td>
                  <td><input type="text" name="txtFromYear" id="day15" class="date-picker-year form-control"/></td>
                  <td><input type="text" name="txtFromYear" id="day16" class="date-picker-year form-control"/></td>
                  <td><input type="text" name="txtFromYear" id="day17" class="date-picker-year form-control"/></td>
                  <td><input type="text" name="txtFromYear" id="day18" class="date-picker-year form-control"/></td>
                  <td><input type="text" name="txtFromYear" id="day19" class="date-picker-year form-control"/></td>
                  <td><input type="text" name="txtFromYear" id="day20" class="date-picker-year form-control"/></td>
                  <td><input type="text" name="txtFromYear" id="day21" class="date-picker-year form-control"/></td>
                  <td><input type="text" name="txtFromYear" id="day22" class="date-picker-year form-control"/></td>
                  <td><input type="text" name="txtFromYear" id="day23" class="date-picker-year form-control"/></td>
                  <td><input type="text" name="txtFromYear" id="day24" class="date-picker-year form-control"/></td>
                  <td><input type="text" name="txtFromYear" id="day25" class="date-picker-year form-control"/></td>
                  <td><input type="text" name="txtFromYear" id="day26" class="date-picker-year form-control"/></td>
                  <td><input type="text" name="txtFromYear" id="day27" class="date-picker-year form-control"/></td>
                  <td><input type="text" name="txtFromYear" id="day28" class="date-picker-year form-control"/></td>
                  <td><input type="text" name="txtFromYear" id="day29" class="date-picker-year form-control"/></td>
                  <td><input type="text" name="txtFromYear" id="day30" class="date-picker-year form-control"/></td>
                  <td><input type="text" name="txtFromYear" id="day31" class="date-picker-year form-control"/></td>
              </tr>
              
                
            </tbody>
          </table>
        </div>





        <br />
        <button type="submit" class="btn btn-default">Submit</button>


        
    </form>


  


</asp:Content>

