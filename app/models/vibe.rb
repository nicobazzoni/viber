class Vibe < ApplicationRecord
  belongs_to :user
  
  validates :state, inclusion: { in: ['whatevs', 'hurting', 'vibing', ] }
  has_one_attached :aura
  STATE_OPTIONS = [
    ['Whatevs', 'whatevs'],
    ['Hurting', 'hurting'],
    ['Vibing', 'vibing']

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
            end
          end
end
