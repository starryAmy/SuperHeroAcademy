# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'open-uri'
puts "Clearing bookings..."
Booking.destroy_all

puts "Clearing courses..."
Course.destroy_all

puts "Clearing users..."
User.destroy_all

user1 = User.create!(email: "zzz@gmail.com", password: "123123", name: "Rayz")
puts "Creating user1..."
user2 = User.create!(email: "yzyz@gmail.com", password: "321321", name: "Amy")
puts "Creating user2..."
user3 = User.create!(email: "wwyy@gmail.com", password: "123321", name: "Ruben")
puts "Creating user3..."


course1 = Course.create!(
  user: user1,
  title: "Telekinesis",
  description: "Unlock the power of your mind to manipulate objects without physical contact. Learn how to control and move items with precision and focus.",
  syllabus: <<~SYLLABUS,
    <h2>Course Syllabus: Telekinesis</h2>
      <strong>Introduction to Telekinesis</strong>
      <ul>
      <li>Understanding the science and psychology behind telekinesis</li>
      <li>Basic meditation techniques to improve focus</li>
      </ul>

      <strong>Lifting and Moving Objects</strong>
      <ul>
      <li>Practicing with small, lightweight items</li>
      <li>Increasing range and power for larger objects.
      <li>Techniques for fine motor control.
      </ul>

      <strong>Defensive and Offensive Applications</strong>
      <ul>
      <li>Creating barriers using nearby objects</li>
      <li>Redirecting incoming threats with telekinesis</li>
      </ul>

      <strong>Advanced Techniques</strong>
      <ul>
      <li>Simultaneously controlling multiple objects</li>
      <li>Using telekinesis in combination with other powers</li>
      <li>Overcoming mental fatigue and enhancing endurance</li>
      </ul>
  SYLLABUS
  price: 1400,
  level: 3,
  category: 2,
  duration: 120,
  location: "Shibuya, Tokyo",
  start_time: Time.now + 1.week,
  online: false,
)

course2 = Course.create!(
  user: user2,
  title: "Shape-Shifting",
  description: "Master the ability to alter your appearance and transform into any creature or object. Explore the potential of limitless transformations.",
  syllabus: <<~SYLLABUS,
  <h2>Course Syllabus: Shape-Shifting</h2>

  <strong>Introduction to Shape-Shifting</strong>
  <ul>
    <li>Understanding the history and mythology of shape-shifting</li>
    <li>Mental preparation and identity anchoring techniques</li>
  </ul>

  <strong>Basic Transformations</strong>
  <ul>
    <li>Shifting into small animals: insects, birds, and rodents</li>
    <li>Maintaining physical control and consciousness in new forms</li>
  </ul>

  <strong>Intermediate Forms</strong>
  <ul>
    <li>Transforming into other humans with voice and posture replication</li>
    <li>Adapting to different body types and sensory inputs</li>
  </ul>

  <strong>Combat and Survival Applications</strong>
  <ul>
    <li>Evading enemies through rapid form switching</li>
    <li>Using transformation to enhance stealth and infiltration</li>
  </ul>

  <strong>Advanced Shape-Shifting</strong>
  <ul>
    <li>Hybrid and partial transformations (e.g., claws, wings)</li>
    <li>Mimicking legendary creatures and abstract forms</li>
    <li>Balancing transformation speed with stamina</li>
  </ul>

  SYLLABUS
  price: 1600,
  level: 1,
  category: 1,
  duration: 90,
  location: "Meguto, Tokyo",
  start_time: Time.now + 2.weeks,
  online: true,
)

course3 = Course.create!(
  user: user3,
  title: "Imaginary Constructs",
  description: "Turn your imagination into reality by learning to create tangible objects and tools using pure thought. Build anything from simple tools to complex machinery.",
  syllabus: <<~SYLLABUS,
  <h2>Course Syllabus: Imaginary Constructs</h2>

  <strong>Foundations of Mental Projection</strong>
  <ul>
    <li>Understanding the nature of imagination-based constructs</li>
    <li>Practicing visualization and sustained mental focus</li>
  </ul>

  <strong>Creating Simple Constructs</strong>
  <ul>
    <li>Projecting basic geometric shapes and static objects</li>
    <li>Controlling position, size, and duration of constructs</li>
  </ul>

  <strong>Functional Constructs</strong>
  <ul>
    <li>Designing constructs with interactive or mechanical properties</li>
    <li>Creating tools, shields, or platforms for real-time use</li>
  </ul>

  <strong>Combat Applications</strong>
  <ul>
    <li>Using constructs for defense and offense in battle scenarios</li>
    <li>Countering enemy constructs with mental interference</li>
  </ul>

  <strong>Advanced Mental Engineering</strong>
  <ul>
    <li>Building complex, multi-component constructs</li>
    <li>Maintaining multiple constructs simultaneously under stress</li>
    <li>Understanding the limits of construct realism and energy consumption</li>
  </ul>

  SYLLABUS
  price: 2000,
  level: 0,
  category: 2,
  duration: 60,
  location: "Setagaya, Tokyo",
  start_time: Time.now + 3.weeks,
  online: false,
)

course4 = Course.create!(
  user: user1,
  title: "Flying",
  description: "Master the art of flight with this comprehensive course. Learn to control altitude, speed, and navigation as you soar through the skies.",
  syllabus: <<~SYLLABUS,
  <h2>Course Syllabus: Flying</h2>

  <strong>Introduction to Flight</strong>
  <ul>
    <li>Understanding the principles of aerial movement and balance</li>
    <li>Overcoming fear and building trust in your abilities</li>
  </ul>

  <strong>Lift-Off Techniques</strong>
  <ul>
    <li>Ground-based launch vs. air-hopping starts</li>
    <li>Practicing vertical take-off and landing (VTOL)</li>
  </ul>

  <strong>Flight Control and Navigation</strong>
  <ul>
    <li>Mastering directional control and mid-air adjustments</li>
    <li>Navigating through various weather conditions and altitudes</li>
  </ul>

  <strong>Aerial Maneuvers</strong>
  <ul>
    <li>Executing turns, dives, and ascents smoothly</li>
    <li>Performing loops, rolls, and evasive movements</li>
  </ul>

  <strong>Endurance and Safety</strong>
  <ul>
    <li>Managing energy levels and breathing during long-distance flights</li>
    <li>Learning emergency landing procedures and safety protocols</li>
  </ul>

  SYLLABUS
  price: 1000,
  level: 0,
  category: 0,
  duration: 90,
  location: "Hachioji, Tokyo",
  start_time: Time.now + 1.week,
  online: true,
)

course5 = Course.create!(
  user: user2,
  title: "Super Strength",
  description: "Develop incredible physical power to lift, smash, and protect with unparalleled strength.",
  syllabus: <<~SYLLABUS,
  <h2>Course Syllabus: Super Strength</h2>

  <strong>Foundations of Strength</strong>
  <ul>
    <li>Understanding the biomechanics behind enhanced strength</li>
    <li>Mental discipline and emotional regulation to prevent overexertion</li>
  </ul>

  <strong>Controlled Power Application</strong>
  <ul>
    <li>Lifting and carrying massive objects safely</li>
    <li>Precision techniques for delicate tasks using great force</li>
  </ul>

  <strong>Combat and Defense</strong>
  <ul>
    <li>Incorporating strength into hand-to-hand combat</li>
    <li>Using surroundings as improvised weapons or barriers</li>
  </ul>

  <strong>Environmental Interaction</strong>
  <ul>
    <li>Demolishing obstacles and clearing paths in rescue scenarios</li>
    <li>Reinforcement strategies to avoid unintended damage</li>
  </ul>

  <strong>Endurance and Recovery</strong>
  <ul>
    <li>Managing stamina while using enhanced strength over time</li>
    <li>Recovery routines and injury prevention for super-powered muscles</li>
  </ul>

  SYLLABUS
  price: 1200,
  level: 3,
  duration: 60,
  location: "Kawasaki, Kanagawa",
  start_time: Time.now + 2.weeks,
  online: false,
)

course6 = Course.create!(
  user: user3,
  title: "Invisibility",
  description: "Learn to vanish from sight and move undetected in this stealth mastery course.",
  syllabus: <<~SYLLABUS,
  <h2>Course Syllabus: Invisibility</h2>

  <strong>Introduction to Invisibility</strong>
  <ul>
    <li>Understanding the science and magic behind becoming unseen</li>
    <li>Exploring the limitations and ethical considerations of invisibility</li>
  </ul>

  <strong>Activation and Maintenance</strong>
  <ul>
    <li>Triggering invisibility at will</li>
    <li>Maintaining invisibility for extended periods without fatigue</li>
  </ul>

  <strong>Stealth Movement</strong>
  <ul>
    <li>Walking silently and avoiding detection by sound or vibration</li>
    <li>Navigating different environments while remaining unseen</li>
  </ul>

  <strong>Advanced Techniques</strong>
  <ul>
    <li>Partial invisibility (e.g., hiding only limbs or objects)</li>
    <li>Invisibility while interacting with physical objects</li>
  </ul>

  <strong>Countermeasures and Surveillance</strong>
  <ul>
    <li>Detecting other invisible entities</li>
    <li>Invisibility-proof gear and sensors</li>
  </ul>

  SYLLABUS
  price: 1500,
  level: 0,
  category: 2,
  duration: 60,
  location: "Yokohama, Kanagawa",
  start_time: Time.now + 3.weeks,
  online: true,
)

course7 = Course.create!(
  user: user1,
  title: "Healing Factor",
  description: "Learn how to harness your body's regenerative abilities to recover from injuries and illnesses faster than ever before.",
  syllabus: <<~SYLLABUS,
  <h2>Course Syllabus: Healing Factor</h2>

  <strong>Introduction to Accelerated Healing</strong>
  <ul>
    <li>Biological and metaphysical principles behind rapid regeneration</li>
    <li>Identifying types of injuries that can be self-healed</li>
  </ul>

  <strong>Activation and Control</strong>
  <ul>
    <li>Consciously accelerating the healing process</li>
    <li>Managing pain and energy levels during regeneration</li>
  </ul>

  <strong>Advanced Tissue Regeneration</strong>
  <ul>
    <li>Regrowing complex tissues like muscles and nerves</li>
    <li>Healing broken bones and internal injuries within minutes</li>
  </ul>

  <strong>Combat Applications</strong>
  <ul>
    <li>Maintaining peak performance during sustained battles</li>
    <li>Using healing factor to take strategic risks</li>
  </ul>

  <strong>Long-Term Health and Side Effects</strong>
  <ul>
    <li>Managing overuse and metabolic strain</li>
    <li>Detecting anomalies like mutation or instability</li>
  </ul>

  SYLLABUS
  price: 1500,
  level: 3, # Intermediate
  category: 0,
  duration: 120,
  location: "Saitama City, Saitama",
  start_time: Time.now + 1.week,
  online: true,
)

course8 = Course.create!(
  user: user2,
  title: "Telepathy (Emotions and Communication)",
  description: "Master the art of reading and transmitting thoughts, feelings, and emotions to connect deeply with others and enhance communication.",
  syllabus: <<~SYLLABUS,
  <h2>Course Syllabus: Telepathy</h2>

  <strong>Introduction to Telepathic Communication</strong>
  <ul>
    <li>Understanding the science and ethics of telepathy</li>
    <li>Building mental clarity and emotional awareness</li>
  </ul>

  <strong>Reading Minds and Emotions</strong>
  <ul>
    <li>Detecting surface thoughts and emotional states</li>
    <li>Distinguishing between your own thoughts and others’</li>
  </ul>

  <strong>Sending Thoughts</strong>
  <ul>
    <li>Establishing a stable mental link with another person</li>
    <li>Communicating silently over distance and through distractions</li>
  </ul>

  <strong>Group Telepathy and Networks</strong>
  <ul>
    <li>Connecting with multiple minds at once</li>
    <li>Managing feedback loops and mental noise</li>
  </ul>

  <strong>Defensive and Ethical Applications</strong>
  <ul>
    <li>Shielding your mind from intrusion</li>
    <li>Respecting boundaries and avoiding manipulation</li>
  </ul>

  SYLLABUS
  price: 1800,
  level: 2,
  category: 1,
  duration: 180,
  location: "Tokyo, Japan",
  start_time: Time.now + 2.weeks,
  online: false,
)

course9 = Course.create!(
  user: user3,
  title: "Portal Generation",
  description: "Learn how to bend space and create portals for instantaneous travel between distant locations.",
  syllabus: <<~SYLLABUS,
  <h2>Course Syllabus: Portal Generation</h2>

  <strong>Foundations of Dimensional Theory</strong>
  <ul>
    <li>Understanding spatial folding and dimensional overlap</li>
    <li>Safety protocols for interdimensional travel</li>
  </ul>

  <strong>Creating Stable Portals</strong>
  <ul>
    <li>Generating portals for short-range transportation</li>
    <li>Anchoring portals between fixed coordinates</li>
  </ul>

  <strong>Advanced Navigation</strong>
  <ul>
    <li>Opening portals to moving targets</li>
    <li>Timing and environmental synchronization</li>
  </ul>

  <strong>Combat and Emergency Use Cases</strong>
  <ul>
    <li>Using portals for tactical evasion or offense</li>
    <li>Deploying emergency exit portals under pressure</li>
  </ul>

  <strong>Multi-Portal Management</strong>
  <ul>
    <li>Controlling multiple open portals simultaneously</li>
    <li>

  SYLLABUS
  price: 2200,
  level: 2, # Advanced
  category: 1,
  duration: 180,
  location: "Sapporo, Hokkaido",
  start_time: Time.now + 3.weeks,
  online: true,
)

course10 = Course.create!(
  user: user3,
  title: "Tentacle Generation",
  description: "Unleash the power of growing and controlling tentacles from your limbs, granting enhanced strength, reach, and versatility.",
  syllabus: <<~SYLLABUS,
  <h2>Course Syllabus: Tentacle Generation</h2>

  <strong>Biological Manifestation Fundamentals</strong>
  <ul>
    <li>Understanding the origin and mechanics of tentacle generation</li>
    <li>Controlling tentacle material (organic, energy-based, shadow, etc.)</li>
  </ul>

  <strong>Basic Tentacle Control</strong>
  <ul>
    <li>Extending and retracting tentacles at will</li>
    <li>Manipulating basic objects with precision</li>
  </ul>

  <strong>Multi-Tentacle Coordination</strong>
  <ul>
    <li>Operating multiple tentacles independently</li>
    <li>Maintaining coordination under pressure</li>
  </ul>

  <strong>Combat Applications</strong>
  <ul>
    <li>Using tentacles for grappling, disarming, and restraining opponents</li>
    <li>Defensive shielding and extended-range attacks</li>
  </ul>

  <strong>Advanced Techniques and Morphology</strong>
  <ul>
    <li>Altering tentacle shape, size, and function on demand</li>
    <li>Integrating tentacle control with other powers</li>
  </ul>

  SYLLABUS
  price: 1700,
  level: 1, # Intermediate
  duration: 120,
  location: "Akihabara, Tokyo",
  start_time: Time.now + 1.week,
  online: false,
)

course1.photo.attach(
  io: File.open(Rails.root.join('app/assets/images/telekinesis.png')),
  filename: 'telekinesis.png',
  content_type: 'image/png'
)

course2.photo.attach(
  io: File.open(Rails.root.join('app/assets/images/shape_shifting.png')),
  filename: 'shape_shifting.png',
  content_type: 'image/png'
)

course3.photo.attach(
  io: File.open(Rails.root.join('app/assets/images/imaginary_constructs.png')),
  filename: 'imaginary_constructs.png',
  content_type: 'image/png'
  )

course4.photo.attach(
  io: File.open(Rails.root.join('app/assets/images/flying.png')),
  filename: 'flying.png',
  content_type: 'image/png'
  )

course5.photo.attach(
  io: File.open(Rails.root.join('app/assets/images/super_strength.png')),
  filename: 'super_strength.png',
  content_type: 'image/png'
)

course6.photo.attach(
  io: File.open(Rails.root.join('app/assets/images/invisibility.png')),
  filename: 'invisibility.png',
  content_type: 'image/png'
)

course7.photo.attach(
  io: File.open(Rails.root.join('app/assets/images/healing_factor.png')),
  filename: 'healing_factor.png',
  content_type: 'image/png'
)

course8.photo.attach(
  io: File.open(Rails.root.join('app/assets/images/telepathy.png')),
  filename: 'telepathy.png',
  content_type: 'image/png'
)

course9.photo.attach(
  io: File.open(Rails.root.join('app/assets/images/portal_generation.png')),
  filename: 'portal_generation.png',
  content_type: 'image/png'
)

course10.photo.attach(
  io: File.open(Rails.root.join('app/assets/images/tentacle_generation.png')),
  filename: 'tentacle_generation.png',
  content_type: 'image/png'
)


booking1 = Booking.create!(status: 2, user: user1, course: course1)
puts "Creating booking1..."
booking2 = Booking.create!(status: 2, user: user2, course: course2)
puts "Creating booking2..."
booking3 = Booking.create!(status: 0, user: user3, course: course3)
puts "Creating booking3..."
booking4 = Booking.create!(status: 1, user: user1, course: course4)
puts "Creating booking4..."
