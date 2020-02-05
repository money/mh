# frozen_string_literal: true

Page.destroy_all

Page.new(title: 'Home', aasm_state: 'published', layout: 'default') do |page|
  page.sections.build(type: 'Section', position: 1) do |section|
    section.cards.build(type: 'Card') do |card|
      card.position = 1
      card.title = '[Our Story](/our_story)'
    end

    section.cards.build(type: 'Card') do |card|
      card.position = 2
      card.title = '[Services & Fees](/services_fees)'
    end

    section.cards.build(type: 'Card') do |card|
      card.position = 3
      card.title = '[Resources](/resources)'
    end
  end

  page.sections.build(
    type: 'Section',
    position: 2,
    title: 'A confidential and secure way to receive support',
    content: 'MyndHeal provides therapy for depression, anxiety, trauma, mental illness, domestic violence, substance abuse, grief and loss.'
  )
end.save(validate: false)

education_markdown = <<~END

License: **LCSW 79759**

###EDUCATION###

|             |     |                                                 |
| ----------: | --- | :---------------------------------------------- |
| 2006 - 2008 |     | Masters in Social Welfare                       |
|             |     | University of California, Los Angeles           |
| 2001 - 2005 |     | Bachelors in Psychology and South Asian Studies |
|             |     | University of California, Los Angeles           |
END

Page.new(title: 'Our Story', position: 1, aasm_state: 'navigable', layout: 'profile') do |page|
  page.sections.build(
    type: 'Section',
    position: 1,
    title: 'Ajita Gupta, LCSW',
    content: education_markdown
  )

  page.sections.build(
    type: 'Section',
    position: 2,
    title: 'About Me',
    content: 'I  am a licensed clinical social worker with 12 years of experience in child welfare and 5 years of direct clinical experience with adults who have mental health needs.
    My focus is to create a supportive and accepting environment for people dealing with a variety of issues, especially for minorities and socially disadvantaged. My experience taught me that the most important aspect of clinical work is understanding and a caring heart.'
  )

  experience_markdown = <<~END
    * Cognitive Behavioral Therapy, Psychotherapy, Dialectical Behavior therapy
    * Crisis Intervention, Full Range of Case Management Services, Personal Injury Evaluation
    * Domestic Violence Education and Prevention, Parent Education and Abuse Prevention Program
    * Certified Family Trauma Specialist
    * Child and Family Team Meeting Coach
    * Certified to Complete Child and Adolescent Needs Assessment
    * Certified to Administer ASQ and ASQ-SE for Children
    * Certified in 2nd Step Social and Emotional Learning
    * Provide Supervision Hours and Field Education for Interns
  END
  page.sections.build(
    type: 'Section',
    position: 3,
    title: 'Experience',
    content: experience_markdown
  )

  page.sections.build(
    type: 'Section',
    position: 4,
    title: 'Our Vision',
    content: 'Our vision at MyndHeal was to offer web-based counseling that is easily accessible for everyone. Our secure portal creates a safe and comfortable environment where our clients can feel free to talk to us. We provide services on a sliding scale fee and provide super bills that can be reimbursed by most insurance companies and health savings accounts. Web-based therapy is completely confidential and secure. We provide therapy for domestic violence, mental health diagnosis, trauma, LGBTQ issues, and grief/loss. Our clients to receive necessary quality support during the most challenging life circumstances.'
  )
end.save(validate: false)

Page.new(title: 'Services & Fees', position: 2, aasm_state: 'navigable', layout: 'default') do |page|
  page.sections.build(type: 'Section', position: 1) do |section|
    individual_markdown = <<~END
      ###Individual Counseling###

      You are not alone. Depression, anxiety, and other mental illness can look different for everyone. Always remember that help is around the corner and telehealth allows that help to come to you in a comfortable and familiar environment.  We will set goals, explore symptoms and triggers, developing coping skills, and get to the core of the issues.  Our goal is to help you be self-sufficient and empowered to take control of your wellbeing.
    END
    section.cards.build(type: 'Card') do |card|
      card.position = 1
      card.title = '[Individual](/individual)'
      card.content = individual_markdown
    end

    relationship_markdown = <<~END
      ###Relationship Issues###

      Relationships are difficult and they only survive if two people are committed to change and growth.  We offer couples’ sessions to teach positive communication and strategies on how to work towards your common goals.  We don’t guarantee that all relationships will survive, but we will help you keep the relationship on the track that you choose. We also offer support for individuals and couples who identify as LGBTQ.
    END
    section.cards.build(type: 'Card') do |card|
      card.position = 2
      card.title = '[Relationship](/relationship)'
      card.content = relationship_markdown
    end

    domestic_markdown = <<~END
      ###Domestic Violence Intervention###

      We accept victims of crime insurance.  Victims can attend therapy anywhere in California as long as they have internet.  No one can access your records, you do not have to download the app, and you can exit sessions with a simple click.  We discuss the patterns of intimate partner violence, develop a safety plan, and connect victims to safe homes.  Additionally, we also offer counseling to perpetrators of domestic violence that teaches the impact of their actions.  Couples with domestic violence will not be counseled together.
    END
    section.cards.build(type: 'Card') do |card|
      card.position = 3
      card.title = '[Domestic](/domestic)'
      card.content = domestic_markdown
    end
  end

  page.sections.build(position: 2, type: 'Section') do |section|
    section.title = 'A confidential and secure way to receive support'
    section.content = 'MyndHeal provides therapy to people with depression, anxiety, trauma, mental illness, parenting struggles, domestic violence, substance abuse, grief and loss.'
  end

  page.sections.build(position: 3, type: 'Section') do |section|
    grief_markdown = <<~END
      ###Grief and Loss###

      Death, grief, and loss is a very sensitive topic and needs personalized one on one attention. We can offer supportive services for terminally ill patients and the loved ones they leave behind.
    END
    section.cards.build(type: 'Card') do |card|
      card.position = 1
      card.title = '[Grief](/grief)'
      card.content = grief_markdown
    end

    postpartum_markdown = <<~END
      ###Postpartum Depression###

      More than 3 million women suffer from Postpartum depression every year.  Parents who experience a loss of a child and those preparing to give birth can have the same type of depression.  Postpartum depression is the most treatable type and short-term therapy can help you take control of your symptoms so that you can move on and enjoy the beauty of life.
    END
    section.cards.build(type: 'Card') do |card|
      card.position = 2
      card.title = '[Postpartum](/postpartum)'
      card.content = postpartum_markdown
    end

    postpartum_markdown = <<~END
      ###Parenting and Co Parenting###

      Parents will do anything for their children but they sometimes forget self care.  Our parent education and prevention curriculum offers customized courses for new and experienced parents.  We also support for parents who have children with special needs and those who want to speak to their children about the loss of another caregiver through death or divorce.
    END
    section.cards.build(type: 'Card') do |card|
      card.position = 3
      card.title = '[Parenting](/parenting)'
      card.content = postpartum_markdown
    end
  end
end.save(validate: false)

resources_markdown_table = <<~END
|                                       |         |                        |
| ------------------------------------: | :-----: | :--------------------- |
| National Suicide Prevention Lifeline  |    -    | (800) 273-8255 or 988  |
| National Domestic Violence Hotline    |    -    | (800) 799-7233         |
| Substance Abuse Helpline              |    -    | (800) 662-HELP (4357)  |
| Self-Harm / Self-Injury Hotline       |    -    | (800) 366-8288         |
| LGBTQ Hotline                         |    -    | (888) 843-4564         |
| Prevention of Cruelty to Animals      |    -    | (800) 540-SPCA (7722)  |
| The Trans Lifeline                    |    -    | (877) 565-8860         |
END

online_resources = <<~END
* [Child Abuse Hotline Directory by California County](http://www.cdss.ca.gov/Reporting/Report-Abuse/Child-Protective-Services/Report-Child-Abuse)
* [Adult Protective Services by California County](http://www.cdss.ca.gov/inforesources/County-APS-Offices)
* [Suicide Crisis Chat Now](https://suicidepreventionlifeline.org/chat)
* [Veterans Crisis Line](https://www.veteranscrisisline.net/)
* [Lifeline Crisis Chat](http://www.crisischat.org/)
* [The Trans Lifeline](https://www.translifeline.org/hotline)
END

Page.new(title: 'Resources', position: 3, aasm_state: 'navigable', layout: 'default') do |page|
  page.sections.build(type: 'Section', position: 1) do |section|
    section.title = 'Free Resources'
    section.content = 'For all mental health related emergencies, please call 911 for immediate assistance or go to the nearest emergency room.'
  end

  page.sections.build(type: 'Section', position: 2) do |section|
    section.content = resources_markdown_table
  end

  page.sections.build(type: 'Section', position: 3) do |section|
    section.title = 'Online Resources'
    section.content = online_resources
  end
end.save(validate: false)

Page.new(title: 'FAQ', aasm_state: 'published', layout: 'default') do |page|
  page.sections.build(type: 'Section', position: 1) do |section|
    section.title = 'Frequently Asked Questions'
  end
end.save(validate: false)

Page.new(title: 'New Client', aasm_state: 'published', layout: 'default') do |page|
  page.sections.build(type: 'Section', position: 1) do |section|
    section.title = 'New Client Section'
  end
end.save(validate: false)

Page.new(title: 'Technical Requirement', aasm_state: 'published', layout: 'default') do |page|
  page.sections.build(type: 'Section', position: 1) do |section|
    section.title = 'Technical requirement'
  end
end.save(validate: false)
