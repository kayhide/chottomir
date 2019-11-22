# coding: utf-8
class User < ApplicationRecord

  def self.pinoko
    find_by(
      email: "pinoko@chottomir.test",
    )
  end

  def self.kiriko
    find_by(
      email: "kiriko@chottomir.test",
    )
  end
end
