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

**location dependency**
-  nearest-room recommendation depends on the user granting location access
-  location services disabled = permission denied
-  location reading inaccurate = system not able to reliably determine the nearest available room
-  **user manually selects their current building or campus area**

## questions

1.  should we do the feature where user manually selects their current building or campus area if location is unavailable? or should we just scrap the current location all together and just have manual interface input?
2.  should users use building codes (eg. FTG for Polaris, SA for Stokes)
3.  should we ask the user what they're looking for before trying to input any data (view timetable, find free room or find lecturer)

# proposed system architecture

1. If it needs external or domain-specific information, show how it will access and use that information (e.g., RAG). 
2.  If it needs to perform actions or access external systems, show how this will be done (e.g., tools, APIs, MCP).
3.  If it needs to retain information during or across interactions, show how this will be handled (e.g., memory). = cookies - local cache (user most commonly makes requests to specific course)
4.  If you propose multiple agents, show what each agent is responsible for and how they interact (e.g., coordinator/supervisor and specialised agents).
5.  If human involvement is required, show where the person is involved and what they do (e.g., user approval before an action is executed).

A clear architecture diagram is provided and is consistent with what the agent should do. Relevant components (e.g., RAG, tools/APIs/MCP, memory, multiple agents, human involvement) and their interactions are clearly shown and explained.

-  redbrick API = LLM gets query from the user - calling a tool that gets information from the API (function we can define that identifies - tool)
-  information is provided by the user
-  LLM takes the prompt and identifies which tools it can use
-  RAG for professor mappings