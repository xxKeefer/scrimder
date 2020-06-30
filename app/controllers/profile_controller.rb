# frozen_string_literal: true

class ProfileController < ApplicationController
  def profile
    redirect_to root_path unless user_signed_in?
  end

  def new; end

  def create
    @profile = Profile.new
    @profile.username = params['username']
    @profile.bnet = params['bnet']
    @profile.pref_role = params['pref_role']
    @profile.other_role = params['other_role']
    @profile.tank = params['tank'].to_i
    @profile.damage = params['damage'].to_i
    @profile.support = params['support'].to_i
    @profile.user_id = current_user.id
    @profile.save

    redirect_to profile_profile_path
  end

  def edit; end

  def commit
    @profile = Profile.find_by(user_id: current_user.id).update(
      username: params['username'],
      bnet: params['bnet'],
      pref_role: params['pref_role'],
      other_role: params['other_role'],
      tank: params['tank'].to_i,
      damage: params['damage'].to_i,
      support: params['support'].to_i
    )

    redirect_to profile_profile_path
  end
end
