class SolicitationMailer < ApplicationMailer
  def solicitation_email(campaign, solicitation, user, contact)
    @campaign = campaign
    @solicitation = solicitation
    @user = user
    mail(to: contact, subject: 'Please check out my fundraiser!')
  end
end
