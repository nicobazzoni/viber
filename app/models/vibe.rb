class Vibe < ApplicationRecord
  belongs_to :user
  has_many :oracles 
  
  validates :state, inclusion: { in: ['whatevs', 'hurting', 'vibing', 'elevated', 'troubled', 'crazy', 'passionate' ] }
  has_one_attached :aura
  has_one_attached :file
  STATE_OPTIONS = [
    ['Whatevs', 'whatevs'],
    ['Hurting', 'hurting'],
    ['Vibing', 'vibing'],
    ['Elevated', 'elevated'],
    ['Troubled', 'troubled'],
    ['Crazy', 'crazy'],
    ['Passionate', 'passionate'],

  ]

 

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
