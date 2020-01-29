# frozen_string_literal: true

Page.destroy_all

Page.new(title: 'Home', aasm_state: 'published', layout: 'default') do |page|
  page.sections.build(position: 1)

  page.sections.build(position: 2) do |section|
    section.cards.build(section_type: 'Card', page: page, section: section) do |card|
      card.title = '[Our Story](/our_story)'
    end

    section.cards.build(section_type: 'Card', page: page, section: section) do |card|
      card.title = '[Services & Fees](/services_fees)'
    end

    section.cards.build(section_type: 'Card', page: page, section: section) do |card|
      card.title = '[Resources](/resources)'
    end
  end

  page.sections.build(
    position: 3,
    title: 'A confidential and secure way to receive support',
    content: 'MyndHeal provides therapy for depression, anxiety, trauma, mental illness, domestic violence, substance abuse, grief and loss.'
  )
end.save

Page.new(title: 'Our Story', position: 1, aasm_state: 'navigable', layout: 'profile') do |page|
  page.sections.build(position: 1)

  page.sections.build(position: 2)

  page.sections.build(
    position: 3,
    title: 'About Me',
    content: 'I  am a licensed clinical social worker with 12 years of experience in child welfare and 5 years of direct clinical experience with adults who have mental health needs.
    My focus is to create a supportive and accepting environment for people dealing with a variety of issues, especially for minorities and socially disadvantaged. My experience taught me that the most important aspect of clinical work is understanding and a caring heart.'
  )

  page.sections.build(
    position: 4,
    title: 'Experience',
    content: '• Cognitive Behavioral Therapy, Psychotherapy, Dialectical Behavior therapy
              • Crisis Intervention, Full Range of Case Management Services, Personal Injury Evaluation
              • Domestic Violence Education and Prevention, Parent Education and Abuse Prevention Program
              • Certified Family Trauma Specialist
              • Child and Family Team Meeting Coach
              • Certified to Complete Child and Adolescent Needs Assessment
              • Certified to Administer ASQ and ASQ-SE for Children
              • Certified in 2nd Step Social and Emotional Learning
              • Provide Supervision Hours and Field Education for Interns'
  )

  page.sections.build(
    position: 5,
    title: 'Our Vision',
    content: 'Our vision at MyndHeal was to offer web-based counseling that is easily accessible for everyone. Our secure portal creates a safe and comfortable environment where our clients can feel free to talk to us. We provide services on a sliding scale fee and provide super bills that can be reimbursed by most insurance companies and health savings accounts. Web-based therapy is completely confidential and secure. We provide therapy for domestic violence, mental health diagnosis, trauma, LGBTQ issues, and grief/loss. Our clients to receive necessary quality support during the most challenging life circumstances.'
  )
end.save

Page.new(title: 'Services & Fees', position: 2, aasm_state: 'navigable', layout: 'default') do |page|
  page.sections.build(position: 1)

  page.sections.build(position: 2) do |section|
    section.cards.build(section_type: 'Card', page: page, section: section) do |card|
      card.title = 'Individual Counseling'
      card.content = 'You are not alone. Depression, anxiety, and other mental illness can look different for everyone. Always remember that help is around the corner and telehealth allows that help to come to you in a comfortable and familiar environment.  We will set goals, explore symptoms and triggers, developing coping skills, and get to the core of the issues.  Our goal is to help you be self-sufficient and empowered to take control of your wellbeing.'
    end

    section.cards.build(section_type: 'Card', page: page, section: section) do |card|
      card.title = 'Relationship Issues'
      card.content = 'Relationships are difficult and they only survive if two people are committed to change and growth.  We offer couples’ sessions to teach positive communication and strategies on how to work towards your common goals.  We don’t guarantee that all relationships will survive, but we will help you keep the relationship on the track that you choose. We also offer support for individuals and couples who identify as LGBTQ.'
    end

    section.cards.build(section_type: 'Card', page: page, section: section) do |card|
      card.title = 'Domestic Violence Intervention'
      card.content = 'We accept victims of crime insurance.  Victims can attend therapy anywhere in California as long as they have internet.  No one can access your records, you do not have to download the app, and you can exit sessions with a simple click.  We discuss the patterns of intimate partner violence, develop a safety plan, and connect victims to safe homes.  Additionally, we also offer counseling to perpetrators of domestic violence that teaches the impact of their actions.  Couples with domestic violence will not be counseled together. '
    end
  end

  page.sections.build(position: 3) do |section|
    section.title = 'A confidential and secure way to receive support'
    section.content = 'MyndHeal provides therapy to people with depression, anxiety, trauma, mental illness, parenting struggles, domestic violence, substance abuse, grief and loss.'
  end

  page.sections.build(position: 4) do |section|
    section.cards.build(section_type: 'Card', page: page, section: section) do |card|
      card.title = 'Grief and Loss'
      card.content = 'Death, grief, and loss is a very sensitive topic and needs personalized one on one attention. We can offer supportive services for terminally ill patients and the loved ones they leave behind.'
    end

    section.cards.build(section_type: 'Card', page: page, section: section) do |card|
      card.title = 'Postpartum Depression'
      card.content = 'More than 3 million women suffer from Postpartum depression every year.  Parents who experience a loss of a child and those preparing to give birth can have the same type of depression.  Postpartum depression is the most treatable type and short-term therapy can help you take control of your symptoms so that you can move on and enjoy the beauty of life.'
    end

    section.cards.build(section_type: 'Card', page: page, section: section) do |card|
      card.title = 'Parenting and Co Parenting'
      card.content = 'Parents will do anything for their children but they sometimes forget self care.  Our parent education and prevention curriculum offers customized courses for new and experienced parents.  We also support for parents who have children with special needs and those who want to speak to their children about the loss of another caregiver through death or divorce.'
    end
  end
end.save

resources_markdown_table = <<~END
|               |     |       |
| ------------------------------------: | :---: | :--------------------- |
| National Suicide Prevention Lifeline |      | (800) 273-8255 or 988 |
| National Domestic Violence Hotline |      | (800) 799-7233 |
| Substance Abuse Helpline |      | (800) 662-HELP (4357) |
| Self-Harm / Self-Injury Hotline |      | (800) 366-8288 |
| LGBTQ Hotline |      | (888) 843-4564 |
| Prevention of Cruelty to Animals |      | (800) 540-SPCA (7722) |
| The Trans Lifeline |      | (877) 565-8860 |
END

online_resources = <<~END
[Child Abuse Hotline Directory by California County](http://www.cdss.ca.gov/Reporting/Report-Abuse/Child-Protective-Services/Report-Child-Abuse)
[Adult Protective Services by California County](http://www.cdss.ca.gov/inforesources/County-APS-Offices)
[Suicide Crisis Chat Now](https://suicidepreventionlifeline.org/chat)
[Veterans Crisis Line](https://www.veteranscrisisline.net/)
[Lifeline Crisis Chat](http://www.crisischat.org/)
[The Trans Lifeline](https://www.translifeline.org/hotline)
END

Page.new(title: 'Resources', position: 3, aasm_state: 'navigable', layout: 'default') do |page|
  page.sections.build(position: 1)

  page.sections.build(position: 2) do |section|
    section.title = 'Free Resources'
    section.content = 'For all mental health related emergencies, please call 911 for immediate assistance or go to the nearest emergency room.'
  end

  page.sections.build(position: 3) do |section|
    section.content = resources_markdown_table
  end

  page.sections.build(position: 4) do |section|
    section.title = 'Online Resources'
    section.content = online_resources
  end
end.save
