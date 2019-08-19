class RemoveAppointmentIdFromServices < ActiveRecord::Migration[5.2]
  def change
    remove_column :services, :appointment_id, :bigint
  end
end
