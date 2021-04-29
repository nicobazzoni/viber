class Oracle < ApplicationRecord
  has_many  :vibes
  has_many  :users, through: :vibes 
  has_many :values

  validates :wisdom, inclusion: { in: [ 'user_id','bravery', 'compassion', 'envy', 'wrath','sloth', 'despair'] }

  ORACLE_OPTIONS = [
    ['User_id', 'user_id'],
    ['Bravery', 'bravery'],
    ['Compassion', 'compassion'],
    ['Envy', 'envy'],
    ['Wrath', 'wrath'],
    ['Sloth', 'sloth'],
    ['Despair', 'despair'] ]
    
    def self.search(search)

      if search 
        find(:all, :conditions => [ Oracle::ORACLE_OPTIONS, {} ])
      else
        find(:all)
      end
    end
  
   




  

  def wisdom_bar
    return 'not-started' if wisdom.none?

    if wisdoms.all? { |oracle| wisdom.complete? }
      'complete'
    elsif wisdom.any? { |oracle| wisdom.in_progress? || wisdom.complete? }
      'in-progress'
    else
      'not-started'
    end
  end

  def amount_done
    return 0 if wisdom.none?
    ((amount_done.to_f / all_oracles) * 100).round
  end

  def amount_done
    wisdom.select { |oracle| wisdom.complete? }.count
  end

  def all_oracles
    wisdoms.count
  end
end

