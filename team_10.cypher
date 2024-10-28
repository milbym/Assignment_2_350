/* Problem 1   Solution */
MATCH (n:Tournament) RETURN n.name //

/* Problem 2   Solution */
match (n:Person)-[:REPRESENTS]->(:Team {name:"USA"}) RETURN n.name //

/* Problem 3   Solution */
match (n:Person {name:"Lauren Holiday"}) return n.dob //

/* Problem 4   Solution */
match (n:Person) where n.name contains "Hara" return n //

/* Problem 5   Solution */
return count { match (:Person{name:"Kelley O Hara"})-[:IN_SQUAD]->() } //

/* Problem 6   Solution */
match (p:Person)-[:SCORED_GOAL]->(),(p)-[:REPRESENTS]->(:Team{name:"USA"}) return p.name //

/* Problem 7   Solution */
match (p:Person)-[:COACH_FOR]->(:Squad{id:"USA in 2019"}) return p.name //

/* Problem 8   Solution */
match (p:Person{name:"Rose Lavelle"})-[:SCORED_GOAL]->(),(p)-[:PLAYED_IN]->(m:Match) return m //

/* Problem 9   Solution */
match (p:Person)-[:COACH_FOR]->(:Squad{id:"USA in 2019"}) return p.name //
