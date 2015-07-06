class ArticleMailer < ApplicationMailer
  def article_info(article)
  	@article = article
        mail(subject: "New article creation")
  end
end

