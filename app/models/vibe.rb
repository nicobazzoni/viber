class Vibe < ApplicationRecord
  belongs_to :user
  has_many :oracles 
  
  validates :state, inclusion: { in: ['whatevs', 'hurting', 'vibing', ] }
  has_one_attached :aura
  has_one_attached :file
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
