module PitchByPitchHelper
  
  def pitch_data(pitch) 
    %(<b>Pitch Type:</b> #{Pitch.get_pitch_name(pitch.pitch_type)},
      <b>Start Speed:</b> #{pitch.start_speed},
      <b>End Speed:</b> #{pitch.end_speed},
      <b>Break Length:</b> #{pitch.break_length},
      <b>Break Angle:</b> #{pitch.break_angle},
      <b>Result:</b> #{pitch.des})
  end
  
end
