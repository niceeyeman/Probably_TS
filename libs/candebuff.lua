	    -- Remark out any buffs your not worried about
	    -- Initialize tables
    if not niceeyeman then niceeyeman = {} end
     
    function niceeyeman.CanDebuff()
        
            --Druid
        if     "target.buff(1126).any" --MotW
            or "target.buff(774).any"  --Rejuv
--			or "target.buff(16689).any"--Nature's Grasp
			
			--Mage
			or "target.buff(1459).any"  --Arcane Brilliance
			or "target.buff(61316).any" --Dalaran Brilliance
			
			--Monk
			or "target.buff(115921).any" --Legacy of the Emperor
			
			--Paladin
			or "target.buff(20217).any" --Blessing of Kings
			or "target.buff(1022).any"  --Hand of Protection
			or "target.buff(1044).any"  --Hand of Freedom
			or "target.buff(1038).any"  --Hand of Salvation
			or "target.buff(6940).any"  --Hand of Sacrifice
			or "target.buff(19740).any" --Blessing of Might
			
            --Priest spells
            or "target.buff(17).any"   --PW:Shield
            or "target.buff(21562).any" --PW:Fortitude
            or "target.buff(139).any"   -- Renew
			
			--Warlock
			or "target.buff(109773).any" --Dark Intent
			
            then
            return true
        else
            return false
        end
    end
     
     
     
    -- Register library
    ProbablyEngine.library.register("niceeyeman", niceeyeman)

