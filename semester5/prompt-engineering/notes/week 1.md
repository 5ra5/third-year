traditional machine learning models
-  we have a specific task eg. spam detection or image classification)
-  trained using specific data
-  behaviour depends on training

new generation of models (LLM is just one of them):
-  trained of vast amount of data like internet, books etc.
-  not trained to do one specific task, they can do multiple
-  not mastering every single task to perfection, but there are techniques to make them be better at one task than another
-  different specialisations (generating images, text, code etc.)
-  behaviour can be changed by prompts during use time

## LLMs - large language models

-  processes an input data (eg. text prompt) and generates sequences of tokens
-  tokens - small units of words that the prompt is turned ito so that LLM can process it
-  sometimes LLMs need additional information to be useful (external knowledge, up-to-date or private information, specific databases, interaction with specific systems)
-  also need to make sure that LLM updates its memory with new information, doesn't forget the data we already gave it etc.

LLM based agents use LLMs as a core component but also use other components to work properly

## answers to quiz 1

1.  true
2.  false
3.  true
4. true
5.  true
6.  false
7.  true

## answers to quiz 2

1.  prompting
2.  context and RAG
3.  RAG
4.  fine-tunning
5.  planning
6.  memory
7.  tools/actions

## AI coding

AI assistants - the developer is in control and uses prompts to further develop their code or check the quality of it (you can also use an agent for this purpose)
AI agents - they do all cycles of the software development, they do not need a developer to control it in order to do all tasks

LLM - generates responses
AI agent - pursues goals and takes agents

## coding agents

-  coding, debugging, testing, code-review, requirements/design...
-  business-process agents: process modelling, process execution, process monitoring, process adaptation
-  different domains: research, customer-service, data-analysis, personal assistant, healthcare, financial

LLM = the core 
agent harness = software around LLM that provides and manages:
-  instructions and context
-  memory
-  tools/skills
-  orchestration
-  guardrails
-  monitoring and evaluation

needed to keep agents in control - imposing quality control to constrain the agent from breaking policies, rules, generating wrong information etc...

## quiz 3 answers

1.  false
2.  true
3.  true
4.  true
5.  true
6.  false
7.  true

## quiz 4 answers

1.  LLM
2.  agent
3.  agent harness
4.  coding assistant
5.  coding agent
6.  agent

## quiz 5 answers

1.  behaviour is primarily defined through human-written code = software 1.0
2.  behvaiour is learned from training data = software 2.0
3.  natural-language instructions and an LLM play a central role in determining system behaviour = software 3.0
4.  improvement may inovlve changing training data, model features = software 2.0
5.  improvement may involve changing prompts, models, tools, retreival, orchestration or guardrails = software 3.0
6.  quality is often evaluated using conventional test with largely known expected results = software 1.0
7.  evalutating a system may require assessing task success, tool use, safety and efficiency separately = software 3.0

## vibe coding

-  used to produce prototypes - producing code very quickly
-  we need to be able to check whether we're producing correct code, as well if the agent is selecting right tools at every step in the cycle
-  we need to ask the agent to read policies before generating code (sometimes even this is not safe, you need to verify)
-  move from intuitive vibe coding to systematic evaluation

## multi-dimensional agent evaluation

-  task success: checking if the agent achieved the goal we requested? are we satisfied with the result?
-  reasoning/planning: did the agent do everything in the correct order?
-  tools: did the agent choose appropriate tools at an appropriate time?
-  efficiency: being careful how many tokens are given to the agent for a specific task

## evals as a driver of progress

-  change
-  evaluate
-  compare
-  analyse
-  refine
-  repeat

## quiz 6

1.  Inspecting a few good outputs is sufficient evidence that an LLM application is ready for production. = false
2.  The same agent given the same task can behave differently across different runs. = true
3.  Evaluating an agent only on whether it eventually completes the task can miss problems in areas such as tool use, safety and efficiency. = true
4.  Agent evaluations must always be performed by a human evaluator. = false (we can use LLM to evaluate another LLM)
5.  After changing an agent, running the same evaluation suite can help determine whether the change improved performance or introduced regressions. = true

## quiz 7

1.  define that cancellation is allowed only up to 24 hours before departure = specifying
2.  ask one agent to implement the feature and another to generate tests = directing
3.  define what the system should do when a user tries to cancel a booking less than 24 hours before departure = specifying
4.  ask the coding agent to fix failures identified by the testing agent = directing


## quiz 8

1.  read the repository = autonomously
2.  modify source code = human approval
3.  run tests = autonomously
4.  change actual student records (e.g., change a student's module registration) = human approval
5.  deploy directly to production = human approval

### discussion

there is no single correct answer. consider aspects such as:
-  **potential impact**: what happens if the action is wrong?
-  **reversibility**: can the action and its consequences easily be undone?
-  **access & permissions**: does it involve sensitive data, systems or privlieged operations?
-  **human oversight**: is human review or approval appropriate before execution?
-  .....

**general principle**: higher-impact, irrevesible, privileged or difficult-to-verify actions should normally have stronger controls and human oversight

## quiz 9 - specify

an LLM agent is being developed to answer questions about DCU modules.

**task:** which is a clearer specification of what the agent should do?

-  A. Help DCU students.
-  B. Answer students' questions about module schedules, assessments and teaching activities using official module information. (correct)

## quiz 10 - direct

you ask an agent to research a topic and prepare a short report. it produces a report that is too broad and does not address the required questions.

**task**: as the person directing the agent, what should you do?

-  A. accept the report because the agent completed the task
-  B. give the agent additional guidance about what needs to be addressed and ask it to revise the report. (correct)
-  C. give teh agent more autonomy

## quiz 11 - govern

**task**: should the agent be allowed to perform all these actions autonomously?

An agent can:
-  search public university information = yes
-  read a student's personal record = as long as it has credentials - yes
-  change a student's module registration = no