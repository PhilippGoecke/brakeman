class User < ApplicationRecord
  STUFF = [
    DEFAULT_PASSWORD = "p@ssw3rd2"
  ]

  def self.scope_with_strip_heredoc(name)
    conditions = <<-SQL.strip_heredoc
      name = '#{name}'
    SQL

    where(conditions)
  end

  def self.render_user_input
    ERB.new(params)
  end
end
