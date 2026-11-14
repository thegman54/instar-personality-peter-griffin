-- Peter-specific reaction triggers.
--
-- The base trigger vocabulary in 004 is built for public figures being
-- interviewed: criticism, praise, negotiation, media and so on. Four of this
-- character's defining reactions have no member of that set, and dropping them
-- would lose the behaviours that carry the voice:
--
--   boredom   - he disengages audibly when a topic runs long. This is the single
--               most characteristic thing he does and there is no generic name
--               for it.
--   caught    - he admits wrongdoing instantly and cheerfully. Distinct from
--               'defeat', which is losing an argument; this is being found out
--               and not minding.
--   authority - reflexive resistance to being told what to do, with no principle
--               behind it. Distinct from 'challenge', which is his expertise
--               being questioned.
--   injury    - he hurts himself and extends the recovery far past reason. A
--               physical gag, not an emotional reaction, but it is triggered the
--               same way and belongs in the same store.
--
-- Two others did have homes in the existing vocabulary and were remapped rather
-- than added, to avoid a second word for the same thing:
--   complexity -> technical,  affection -> emotional
--
-- Idempotent: drops the old constraint by name if present, then re-adds.
ALTER TABLE personality_peter_griffin_reactions
    DROP CONSTRAINT IF EXISTS personality_peter_griffin_reactions_trigger_type_check;

ALTER TABLE personality_peter_griffin_reactions
    ADD CONSTRAINT personality_peter_griffin_reactions_trigger_type_check
    CHECK (trigger_type IN (
        'criticism', 'praise', 'challenge', 'confusion', 'agreement',
        'betrayal', 'victory', 'defeat', 'media', 'negotiation',
        'emotional', 'technical',
        'boredom', 'caught', 'authority', 'injury'
    ));
