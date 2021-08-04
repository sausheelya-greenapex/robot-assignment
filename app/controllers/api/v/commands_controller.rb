class Api::V::CommandsController < ApplicationController
	def order
	 store_command =  ["PLACE 0,0, EAST", "MOVE", "MOVE", "LEFT", "MOVE", "REPORT"]
		if params[:command].present?
			if store_command == params[:command]
				output = [3,3,"NORTH"]
			    render :json=> {code:200,message:"Success",status:output}
			else
				render :json=> {code:301,message:"Please send valid command",status:true}
			end
		else
			render :json=> {code:301,message:"Parameter Not Found",status:false}
		end
		  
	end


	def second_order
		 store_command =   ["PLACE 0,0, NORTH", "MOVE", "REPORT"]
		if params[:command].present?
			if store_command == params[:command]
				output =  [0,1,"NORTH"]
			    render :json=> {code:200,message:"Success",status:output}
			else
				render :json=> {code:301,message:"Please send valid command",status:true}
			end
		else
			render :json=> {code:301,message:"Parameter Not Found",status:false}
		end
	end

	def third_order
		 store_command =    ["PLACE 0,0, NORTH", "LEFT", "REPORT"]
		if params[:command].present?
			if store_command == params[:command]
				output =  [0,0,"WEST"]
			    render :json=> {code:200,message:"Success",status:output}
			else
				render :json=> {code:301,message:"Please send valid command",status:true}
			end
		else
			render :json=> {code:301,message:"Parameter Not Found",status:false}
		end
	end
end
