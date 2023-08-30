# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# user = User.where(email: "1hasanmus2@gmail.com").first_or_initialize
# user.update!(
#   username: "TESTING USERNAME",
#   password: "password", 
#   password_confirmation: "password"
# )

# 100.times do |i|
#     BlogPost.create!(
#       title: "Blog Post #{i}",
#       content: "This is blog post number #{i}.",
#       published_at: Time.current,
#       user_id: 1,
#     )
# end

user = User.where(email: "1hasanmus2@gmail.com").first_or_initialize
user.update!(
  username: "TESTING USERNAME",
  password: "password", 
  password_confirmation: "password"
)

debate_topics = [
  "Climate Change: Real Threat or Hype?",
  "Social Media's Impact on Society",
  "Universal Basic Income: Pros and Cons",
  "Education Reform: Traditional vs. Modern Approaches",
  "Ethics of Artificial Intelligence",
  "Censorship and Freedom of Speech",
  "Healthcare System: Public vs. Private",
  "Genetic Engineering and Ethics",
  "Cryptocurrencies: Revolutionizing Finance?",
  "Online Privacy in the Digital Age",
  "Space Exploration: Should We Invest More?",
  "GMO Foods: Safety and Benefits",
  "Income Inequality: Causes and Solutions",
  "The Future of Work: Automation and Jobs",
  "Gun Control: Balancing Rights and Safety",
  "Education vs. Experience: What Matters More?",
  "The Role of Government in Healthcare",
  "Cultural Appropriation vs. Appreciation",
  "Ethical Dilemmas in Medical Research",
  "Artificial Intelligence in Education",
  "Nuclear Energy: Pros and Cons",
  "Racial Profiling: Addressing Bias in Policing",
  "Digital Art: Redefining Creativity",
  "Climate Change Policies: Effectiveness and Challenges",
  "Euthanasia and Right to Die",
  "Modern Parenting: Helicopter vs. Free-Range",
  "Virtual Reality in Medicine",
  "Sustainable Fashion: Reality or Trend?",
  "Social Media Addiction: Is It a Problem?",
  "Drug Legalization: Benefits and Risks",
  "Corporate Responsibility: Profit vs. Ethics",
  "Urbanization and Its Impact on Environment",
  "Ethics of Animal Testing",
  "AI in Business: Opportunities and Concerns",
  "Legalization of Marijuana: Social and Economic Impact",
  "Women in STEM: Breaking Barriers",
  "Consumerism: Its Effects on Society",
  "AI in Art: Creativity vs. Automation",
  "Capital Punishment: Justice or Cruelty?",
  "The Ethics of Surveillance",
  "Technological Singularity: Possibilities and Risks",
  "Plastic Pollution: Urgent Need for Solutions",
  "Privacy in the Age of Big Data",
  "Alternative Energy Sources: Challenges and Progress",
  "Body Positivity Movement: Empowerment or Unrealistic?",
  "Ethical Considerations in Human Cloning",
  "Future of Education: Online Learning vs. Traditional",
  "Mental Health Awareness: Breaking the Stigma"
]

# 50.times do |i|
#   title = debate_topics.sample
#   content = "In today's world, the debate surrounding #{title} continues to capture the attention of experts and the general public alike. While some argue that #{title.downcase}, others emphasize the importance of #{title.downcase}. This blog post delves into the various aspects of #{title}, exploring the nuances and examining the arguments presented by both sides.

#   #{title} has gained significant traction due to its relevance in contemporary society. As #{title.downcase} gains momentum, proponents argue that #{title.downcase}, citing evidence from studies and real-world examples. On the other hand, critics contend that #{title.downcase}, pointing to historical precedents and ethical considerations.

#   One of the central points of contention in the #{title} debate is the impact it has on #{title.downcase}. Advocates of #{title.downcase} point to the positive effects on #{title.downcase}, while opponents highlight the potential drawbacks. The intersection of #{title.downcase} and #{title.downcase} raises questions about the broader implications and challenges society faces in addressing #{title.downcase}.

#   In conclusion, the ongoing discourse about #{title} underscores the complexity of the issue and the need for thoughtful consideration. As individuals, communities, and policymakers grapple with #{title.downcase}, it becomes evident that finding common ground and forging a path forward requires a comprehensive understanding of the intricacies involved."

#   BlogPost.create!(
#     title: title,
#     content: content,
#     published_at: Time.current,
#     user_id: user.id
#   )
# end
