module MicropostsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'create'
      confirm_microposts_path
    elsif action_name == 'edit'
      micropost_path
    end
  end
end
