module PagesHelper
	def article_link the_article
      html = "<a href='/articles/#{the_article.id}'>".html_safe
      html += the_article.title
      html += "</a>".html_safe
      html
    end
end
