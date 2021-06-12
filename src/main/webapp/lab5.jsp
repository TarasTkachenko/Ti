
<%@page import="Tkachenko.IR12.Lab5.Lab5_2"%>
<%@page import="Tkachenko.IR12.Lab5.Lab5_1"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 5</title>
    </head>
    <body>
        <a href="index.jsp">Back to landing page</a>
        <%! Lab5_1 lab5_1 = new Lab5_1("Modernism is both a philosophical movement"
            + " and an art movement that arose from broad transformations"
            + " in Western society during the late 19th and early 20th centuries."
            + " The movement reflected a desire for the creation of new forms "
            + "of art, philosophy, and social organization which reflected "
            + "the newly emerging industrial world, including features such "
            + "as urbanization, new technologies, and war. Artists attempted "
            + "to depart from traditional forms of art, which they considered "
            + "outdated or obsolete. The poet Ezra Pound's 1934 injunction to"
            + " \"Make it New\" was the touchstone of the movement's approach. "
            + "Modernist innovations included abstract art, the stream-of-consciousness"
            + " novel, montage cinema, atonal and twelve-tone music, and divisionist"
            + " painting. Modernism explicitly rejected the ideology of realism"
            + " and made use of the works of the past by the employment of reprise,"
            + " incorporation, rewriting, recapitulation, revision and parody."
            + " Modernism also rejected the certainty of Enlightenment thinking, "
            + "and many modernists also rejected religious belief. A notable"
            + " characteristic of modernism is self-consciousness concerning"
            + " artistic and social traditions, which often led to experimentation"
            + " with form, along with the use of techniques that drew attention"
            + " to the processes and materials used in creating works of art. "
            + "While some scholars see modernism continuing into the 21st century,"
            + " others see it evolving into late modernism or high modernism."
            + " Postmodernism is a departure from modernism and rejects its "
            + "basic assumptions. Some commentators define modernism as a mode"
            + " of thinking—one or more philosophically defined characteristics,"
            + " like self-consciousness or self-reference, that run across all "
            + "the novelties in the arts and the disciplines. More common, "
            + "especially in the West, are those who see it as a socially "
            + "progressive trend of thought that affirms the power of human "
            + "beings to create, improve and reshape their environment with "
            + "the aid of practical experimentation, scientific knowledge, or"
            + " technology. From this perspective, modernism encouraged the "
            + "re-examination of every aspect of existence, from commerce to "
            + "philosophy, with the goal of finding that which was 'holding "
            + "back' progress, and replacing it with new ways of reaching the"
            + " same end. Others focus on modernism as an aesthetic introspection."
            + " This facilitates consideration of specific reactions to the use "
            + "of technology in the First World War, and anti-technological and "
            + "nihilistic aspects of the works of diverse thinkers and artists "
            + "spanning the period from Friedrich Nietzsche to Samuel Beckett. "
            + "According to Roger Griffin, modernism can be defined in a maximalist"
            + " vision as a broad cultural, social, or political initiative, "
            + "sustained by the ethos of \"the temporality of the new\". "
            + "Modernism sought to restore, Griffin writes, a \"sense of "
            + "sublime order and purpose to the contemporary world, thereby"
            + " counteracting the (perceived) erosion of an overarching \"nomos\", "
            + "or \"sacred canopy\", under the fragmenting and secularizing impact"
            + " of modernity. Therefore, phenomena apparently unrelated to each"
            + " other such as \"Expressionism, Futurism, vitalism, Theosophy,"
            + " psychoanalysis, nudism, eugenics, utopian town planning and "
            + "architecture, modern dance, Bolshevism, organic nationalism "
            + "– and even the cult of self-sacrifice that sustained the "
            + "hecatomb of the First World War – disclose a common cause "
            + "and psychological matrix in the fight against (perceived) "
            + "decadence.\" All of them embody bids to access a \"supra-personal"
            + " experience of reality\", in which individuals believed they could"
            + " transcend their own mortality, and eventually that they had ceased"
            + " to be victims of history to become instead its creators.");%>
            <p><b>Text:</b> <%= lab5_1.GetText()%></p>
            <form action="./lab5" method="post" class="form-inline">
                <label for="x"><b>Enter word to search for: </b></label>
                <div class="input-group">
                    <input  class="form-control" id="find" type="text" name="find"/>
                    <input class="btn btn-success" type="submit" value="Submit"/>
                </div>
                <p class="mt-3 mb-0"><b>Word number: </b><%=request.getAttribute("result")%></p>
            </form>
            <p><b>Most popular words:</b> <%= lab5_1.GetMostPopularWords()%></p>
            <p><b>Most popular sequences (4):</b>
                <%= lab5_1.MostPopularSequences(4)%></p>
            <%! Lab5_2 lab5_2 = new Lab5_2(20); %>
            <% lab5_2.InitList(); %>
            <p><b>List: </b><br/> <%= lab5_2.DisplayList()%></p>
            <p><b>Index of element with value </b><%= find %>: <%= lab5_2.IndexOf(find)%></p>
            <%! String find = "model #15"; %>
            <% lab5_2.SortByStringField();%>
            <p><b>Sorted by string field: </b><br/> <%= lab5_2.DisplayList()%></p>
            <p><b>Index of element with value </b><%= find %>: <%= lab5_2.IndexOf(find)%></p>
            <% lab5_2.SortByIntField();%>
            <p><b>Sorted by byte field: </b><br/> <%= lab5_2.DisplayList()%></p>
            <p><b>Index of element with value </b><%= find %>: <%= lab5_2.IndexOf(find)%></p>
    </body>
</html>
