class Vibe < ApplicationRecord
  belongs_to :user
  has_many :states 
  has_many :auras
  validates :state, inclusion: { in: ['whatevs', 'hurting', 'vibing', 'elevated', 'troubled', 'crazy', 'passionate' ] }
  has_one_attached :aura
  has_many_attached :files
  
  has_many :users, {:through=>:insights, :source=>"user"}
  STATE_OPTIONS = [
    ['Whatevs', 'whatevs'],
    ['Hurting', 'hurting'],
    ['Vibing', 'vibing'],
    ['Elevated', 'elevated'],
    ['Troubled', 'troubled'],
    ['Crazy', 'crazy'],
    ['Passionate', 'passionate'],

  ]
   scope :hurting_vibe, -> { where("state > 2") }
 
  
         
      def color_aura
          case aura
          when 'hurting'
            'hurting'
          when 'whatevs'
            'whatevs'
          when 'vibing'
            'vibing'
          end
        end
          
          def color_state
            case state
            
            when 'hurting'
              'hurting'
            when 'whatevs'
              'whatevs'
            when 'vibing'
              'vibing'
            when 'elevated'
              'elevated'
            when 'troubled'
              'troubled'
            when 'crazy'
              'crazy'
            when 'passionate'
              'passionate'

            end
          end
end
