                    ResultSet rs= stmt.executeQuery("select typescript_tasks from tasks where typescript_tasks is not null");

                        <option value=<%=rs.getString("typescript_tasks")%>><%=rs.getString("typescript_tasks")%></option>

