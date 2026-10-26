# systems limitations and human involvement
**human involvement**
-  what the student has to provide
-  what the agent decides by itself
-  whether the student needs to approve or verify anything before the system acts

human involvement = low
-  the system is primarily information retrieval and recommendation

**expected level of autonomy and human involvement:**
The system will operate with moderate autonomy. The student initiates the interaction by providing a request, such as a course code, lecturer name, preferred time, or location. The agent will then independently interpret the request, determine which timetable or location information is required, retrieve relevant public information, and generate an appropriate response. Human involvement is mainly required at the input and review stages: the student provides the necessary query details and decides how to use the information returned by the system. Since the agent does not make bookings, contact lecturers, or modify university systems, human approval is not required for individual retrieval steps. Users should still verify important information where necessary, as timetable, room, or office-hour information may change.

student provides: course code, lecturer name, desired time, current/preferred campus area, or a natural-language question

agent decides automatically: what the student is asking for, which data source or tool to use, how to search/filter the timetable data and how to present the result

student remains responsible for: choosing which room to go to, whether to approach a lecturer, and whether the retrieved information is suitable for their situation

**human-initiated, agent orchestrated, tool-executed, and human-reviewed**

**system limitations**

-  depends on the **accuracy, availability, and freshness of publicly accessible DCU timetable,** room, lecturer and office-hour information
-  if university data is outdated or changed at short notice, the system may return inaccurate information
-  room appearing free on the timetable does not necessarily guarantee that it is physically available - rooms may be used for unscheduled meetings, maintenance, private events, or other activities not represented in the timetable
-  lecturer info limited to publicly available teaching schedules, office locations and published office hours
-  system cannot determine exact real-time location and should not imply that a lecturer is definitely present in a particular room simply because they are scheduled to teach there
-  constraints: DCU timetable data, website structure, possible rate limits and changes to the university's online systems

# proposed system architecture

1. If it needs external or domain-specific information, show how it will access and use that information (e.g., RAG). 
2.  If it needs to perform actions or access external systems, show how this will be done (e.g., tools, APIs, MCP).
3.  If it needs to retain information during or across interactions, show how this will be handled (e.g., memory). cache (user most commonly makes requests to specific course)
4.  If you propose multiple agents, show what each agent is responsible for and how they interact (e.g., coordinator/supervisor and specialised agents).
5.  If human involvement is required, show where the person is involved and what they do (e.g., user approval before an action is executed).

A clear architecture diagram is provided and is consistent with what the agent should do. Relevant components (e.g., RAG, tools/APIs/MCP, memory, multiple agents, human involvement) and their interactions are clearly shown and explained.

-  redbrick API = LLM gets query from the user - calling a tool that gets information from the API (function we can define that identifies - tool)
-  information is provided by the user
-  LLM takes the prompt and identifies which tools it can use
-  RAG for professor mappings

one:
- Redbrick timetable data may be incomplete or outdated.
    
- A room without a timetable conflict is not guaranteed to be physically vacant or available for student use.
    
- Lecturer results indicate scheduled teaching, not confirmed physical presence.
    
- Human involvement Focus: Students select the correct lecturer when multiple names match. (LLM has to stop here before processing the rest of the workflow so this is a valid human involvement)
    
- Mention briefly the human involvement in features A and B
    
- LLM provides information and recommendations, but the student makes the final decision about what to do with them.


two:
- Explain the overall stack: Python, Streamlit, LLM through Ollama, Redbrick API, SQLite.
    
- Explain that we propose one LLM agent with multiple tools, rather than three independent agents.
    
- Describe how the API provides timetable information and SQLite stores supporting indexed data.
    
- Explain how the application maintains the selected inputs and lecturer choice during interactions.



- Clearly distinguish responsibilities:
    
- Streamlit: Forms, timetable display, room results, lecturer-selection popup.
    
- LLM: Tool selection, search-expansion decisions, clarification, explanations.
    
- Python: Timetable calculations, room-conflict checking, filtering and ranking results.
    
- Redbrick API: Source of timetable events, rooms, and lecturer identifiers.
    
- SQLite: Teaching-room catalog, building relationships/proximity, lecturer-to-module index.
    
- Include a few concrete tool names, such as analyze_free_gaps(), find_rooms_nearby(), and find_next_lecture().