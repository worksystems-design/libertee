# Wise Crowds — Example Session (Brief Mode)

## Command

```
/libertee:wise-crowds "We want to reduce our time-to-market but every attempt so far has just increased pressure on teams without actually shipping faster" --brief
```

## What Happens

👥 **Facilitator** opens:

> *We want to reduce time-to-market but every attempt has just increased pressure without actually shipping faster. Five advisors, each from a different angle. Then we look for patterns.*

**The Crowd:**
- 🔧  **Senior Developer** — sees the work from inside the codebase
- 🎯  **Product Manager** — owns the roadmap and prioritization
- 📊  **Value Stream Analyst** — looks at flow, bottlenecks, and system-level metrics
- 👤  **Team Lead** — lives in the tension between team capacity and organizational demand
- 💼  **Customer Success Manager** — sees what "faster" actually means from the customer's side

### 👥 The Wise Crowd

#### 🔧 Senior Developer

The core issue is that you're optimizing for speed at the wrong layer — pressuring teams treats delivery as a capacity problem when it's almost always a flow problem. Bottlenecks, handoffs, and large batch sizes are what slow you down, not effort levels. Recommendation: map your value stream end-to-end and find where work actually waits — then cut batch sizes and reduce WIP limits there first, before touching team capacity.

#### 🎯 Product Manager

The Senior Developer is right about flow, but the real blocker is usually upstream: unclear priorities and late-breaking scope changes force teams into constant context-switching and rework, which no amount of WIP limits can fix. Recommendation: ruthless backlog discipline — one clearly ranked list, no parallel "top priorities," and a freeze on scope once work enters the sprint.

#### 📊 Value Stream Analyst

Both advisors are describing symptoms of the same root cause: your value stream has hidden wait states that no amount of pressure or prioritization will fix. Active work time is almost certainly under 20% of total lead time — 80%+ is queuing, waiting for approvals, handoffs, or environment access. Recommendation: run a Value Stream Mapping exercise focused on *wait time*, not work time — then eliminate the top three handoff delays before touching anything else.

#### 👤 Team Lead

All three advisors are right about the system — but none of them can fix it without protecting the team from the organizational reflex that kicks in the moment you create slack. The real trap: every time you cut batch sizes or clear the backlog, leadership fills that capacity with new demand before flow can improve. Recommendation: negotiate explicit WIP limits with leadership as a *precondition* to any TTM initiative.

#### 💼 Customer Success Manager

All four advisors are diagnosing the engine — I'm watching the exhaust pipe. Customers don't experience your lead time; they experience the gap between when they asked and when they got value, which includes post-release friction: bugs, broken integrations, support loops that pull your team back into already-shipped work. Recommendation: measure how much team capacity is consumed by post-release failure demand — reducing that recycle rate will free more capacity than any upstream process change.

### 👥 Synthesis

- **Convergence:** All five agree: this is a system problem, not a team effort problem. Pressure is the wrong lever. The work waits more than it works.
- **Divergence:** The first four advisors focus upstream (flow, priorities, wait states, WIP limits). The Customer Success Manager flips the lens: post-release failure demand is the hidden capacity drain nobody measured. Both are likely true.
- **Blind Spots:** Nobody mentioned architecture or deployment infrastructure. If deploys are slow, risky, or manual, all upstream improvements hit a ceiling. Also missing: the leadership incentive structure — who is rewarded for shipping fast vs. shipping right?
- **The Signal:** You're trying to speed up a system where 80% of the time is wait time and an unknown percentage of capacity recycles into post-release rework. Pressure accelerates the 20% that's already fast and ignores the 80% that's actually slow.
- **Next Steps:**
  - Run a Value Stream Mapping workshop: measure wait time vs. work time across one representative feature, end-to-end
  - Quantify the recycle rate: what percentage of team capacity goes to post-release bugs, support, and rework?
  - Negotiate organizational WIP limits before launching any speed initiative — freed capacity must be protected, not refilled
  - Kill "top 3 priorities" — one ranked list, enforced by product leadership
