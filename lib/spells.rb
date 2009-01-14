# $Id: spells.rb 25 2005-10-26 22:14:56Z wwwwolf $
# 
# Spells.
#
# ============================================================================
# Miller's Quest!, a role-playing game simulator.
# Copyright (C) 2005  Urpo 'WWWWolf' Lankinen.
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
#
# ============================================================================


# Spell.
class MemorizedSpell
  attr_accessor :name, :level

  def addlevel
    @level = @level + 1
  end
  def to_s
    "#{@name} #{@level}"
  end
  def MemorizedSpell.new_random
    a = MemorizedSpell.new
    a.name = $spells.random_item
    a.level = 1
    return a
  end
  def MemorizedSpell.new_named(name)
    a = MemorizedSpell.new
    a.name = name
    a.level = 1
    return a
  end
end

