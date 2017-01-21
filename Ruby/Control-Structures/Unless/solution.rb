def scoring(array)
  # update_score of every user in the array unless the user is admin
    array.each do |user|
        unless user.is_admin?
            user.update_score
        end
        # or:
        # user.update_score unless user.is_admin?
    end
end

