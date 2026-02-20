# Six Thinking Hats® — Example Session

## Command

```
/libertee:six-hats "Should we migrate our monolith to microservices?"
```

## What Happens

🟦 **Blue Hat (Facilitator)** opens the session: "This is an open, exploratory question — we'll use the Exploratory sequence: facts first, then feelings, ideas, opportunities, and risks."

### 🔲 White Hat — Facts & Data
- Current monolith serves 50K daily users with 99.2% uptime
- Team has 8 backend developers, none with microservices production experience
- Average deployment takes 4 hours due to regression testing
- Industry trend: 60% of companies that migrated report higher initial complexity

### 🟥 Red Hat — Emotions & Intuition
- Excitement about "modern architecture" but also fear of the unknown
- Gut feeling: the team is frustrated with slow deployments, not the architecture itself
- Unease about the migration timeline — feels like it could drag on forever

### 🟩 Green Hat — Creativity & Alternatives
- What if we don't migrate fully? Strangler Fig pattern — extract one service at a time
- What if we solve the deployment problem directly? Invest in CI/CD first
- Wild idea: freeze features for 2 months and do a "modernization sprint"
- Reframing: maybe the real problem is deployment speed, not architecture

### 🟨 Yellow Hat — Opportunities & Optimism
- Independent scaling of high-traffic services could save 30% infrastructure costs
- Team would learn valuable skills increasing retention and hiring appeal
- Faster feature delivery in the long run once services are decoupled
- Opens the door to polyglot tech stack for specialized problems

### ⬛ Black Hat — Risks & Criticism
- 8 developers with zero microservices experience = high learning curve and mistakes
- Distributed systems debugging is exponentially harder
- Network latency between services could actually make things slower
- Data consistency across services is an unsolved hard problem for the team

### 🟦 Blue Hat — Synthesis
- The Green Hat reframing was key: the real pain is deployment speed, not architecture
- Recommendation: invest in CI/CD and test automation first, then evaluate if microservices still make sense
- The team's lack of experience is the biggest risk — not the technology itself
