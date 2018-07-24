---
created: "2006-02-15 16:03:00"
date: "2006-02-15T00:00:00Z"
published: true
slug: epolicy-orchestrator-sql
template: null
title: ePolicy Orchestrator SQL
updated: "2010-03-25 17:44:22.238412"
url: null
---

...brain ...hurts

	use ePO_SERVER99; --
	select BranchNode.NodeName,ipsubnetmask.AutoID,
	BranchNode.ParentID,ipsubnetmask.ParentID,
	ipsubnetmask.IP_Start,ipsubnetmask.IP_End
	from ipsubnetmask join BranchNode
	on IPSubnetMask.ParentID = BranchNode.AutoID
	where BranchNode.ParentID not in ('1','2')
	order by IP_Start;

Handy Software:

* osql (included with MSDE) KB [#325003][2], [#241397][3]
* [Aqua Data Studio][1]

[1]: http://www.aquafold.com/
[2]: http://support.microsoft.com/kb/241397/en
[3]: http://support.microsoft.com/kb/325003/en
