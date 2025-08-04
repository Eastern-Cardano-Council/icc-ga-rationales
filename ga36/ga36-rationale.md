## Summary
We have determined that this treasury withdrawal governance action is constitutional.

## Rationale Statement
The governance action with ID “gov_action13tfag48nf94rtjcdq7c06vhkslmxxw9h6c88sl7q5g5nnewcsvlq63cfnf0” and title “Withdraw ₳243,478 for MLabs Core Tool Maintenance & Enhancement: Plutarch” is a Treasury Withdrawal, so is subject to the following sections and guardrails in the Cardano Constitution.

ARTICLE III, Section 5 of the Cardano Constitution states "In order to promote transparency in the process of on-chain governance, prior to being recorded or enacted on-chain, all proposed governance actions are expected to follow a standardized and legible format including a URL and hash of all documented off-chain content to the Cardano Blockchain. Sufficient rationale shall be provided to justify the requested change to the Cardano Blockchain. The rationale shall include, at a minimum, a title, abstract, reason for the proposal, and relevant supporting materials. The content of every on-chain governance action must be identical to the final off-chain version of the proposed action."

This governance action includes a valid URL and hash, which matches the hash of the off-chain documentation referenced. The rationale also meets the minimum content specified in this section.

Additionally; ARTICLE IV, Section 3, Paragraph 1 states "Withdrawals from the Cardano Blockchain treasury that would cause the Cardano Blockchain treasury balance to violate the then applicable net change limit shall not be permitted." 

The net change limit in effect at the time of submission of this vote on-chain, is the governance action with ID  “gov_action1nd3t833j7v5sz65k3tp9yyvztw60sjcjgcgjr37682s3m7frwrusqmd2k80”.

- A. Current NCL Amount: 350000000 ada
- B. Current NCL Time Period: Epoch 532 to epoch 604 (Inclusive)
- C. Total of Treasury Withdrawals within the Current NCL Time Period: 1500000 ada
- D. Amount of this Treasury Withdrawal: 243478 ada
- E. “C” plus “D” = 1743478 ada
- F. “A” minus “E” = 348256522 ada

As the value of "F" is greater than or equal to zero, this governance action does not violate the net change limit and therefore fulfils the requirement in this section.

Additionally; ARTICLE IV, Section 4 states "Any governance action requesting ada from the Cardano Blockchain treasury shall require an allocation of ada as a part of such funding request to cover the cost of periodic independent audits and the implementation of oversight metrics as to the use of such ada. Contractual obligations governing the use of ada received from the Cardano Blockchain treasury pursuant to a Cardano Blockchain ecosystem budget shall include dispute resolution provisions."

This governance action specifies the following:

"Acceptance of the above work is expected to be supported by a 3rd Party Assurer, who will be responsible for reviewing and signing off the work completed at each project milestone against the corresponding milestone deliverables detailed within the Legal Contract. This work is funded from a portion of this treasury withdrawal.”

​​While there were some concerns that simply stating “is expected to be supported by” is not definitive enough and that “This work is funded from a portion of this treasury withdrawal.” does not specify how much ada is allocated, we determined that this does still fulfil the requirement in this section.

Additionally; Article VII, Section 6 states "Any ada received from a Cardano Blockchain treasury withdrawal, so long as such ada is being held directly or indirectly by an administrator prior to further disbursement, must be kept in one or more separate accounts that can be audited by the Cardano Community, and such accounts shall not be delegated to an SPO but must be delegated to the predefined auto abstain voting option."

This governance action specifies the following withdrawal address, which at the time of assessment was not delegated to an SPO and is delegated to the auto abstain voting option:

- stake17xzc8pt7fgf0lc0x7eq6z7z6puhsxmzktna7dluahrj6g6ghh5qjr

Finally; the guardrails that require consideration for this governance action are TREASURY-01a, TREASURY-02a, TREASURY-03a and TREASURY-04a.  These are addressed as follows:

- TREASURY-01a - The net change limit with governance action ID “gov_action1nd3t833j7v5sz65k3tp9yyvztw60sjcjgcgjr37682s3m7frwrusqmd2k80” is currently in effect, after being "agreed by the DReps via an on-chain governance action with a threshold of greater than 50% of the active voting stake".
- TREASURY-02a - As per the above assessment, this treasury withdrawal does not exceed the current net change limit.
- TREASURY-03a - This treasury withdrawal is denominated in ada.
- TREASURY-04a - This governance action specifies that it relates to the budget in governance action "gov_action1u9x73kwufaxa70lfy59g4ynwyrcsaxdcd0gxzzmh67s9fxq4j8hqqk2phgh", which was "agreed by the DReps with a threshold of greater than 50% of the active voting stake".

We therefore find this governance action **Constitutional**.

## Precedent Discussion
None

## Counterargument Discussion
None

## Conclusion
This governance action sufficiently fulfils the criteria specified for treasury withdrawals in the Cardano Constitution, so is deemed constitutional.

## Internal Vote
- Constitutional: 5
- Unconstitutional: 0
- Abstain: 0
- Did Not Vote: 1

## References
None