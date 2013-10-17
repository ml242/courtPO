class TrainerController < ActionController::Base
  def index
    @trainers = Trainer.all
  end
  def trainer
    id = params[:id]
    @trainer_info = Trainer.find(id)
  end
end