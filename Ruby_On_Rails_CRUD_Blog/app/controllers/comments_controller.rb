class CommentsController < ApplicationController
	#http_basic_authenticate_with name: "brad", password: "1234", only:[:destroy]

	

	def create 
		@post = Post.find(params[:post_id])
		@comment = @post.comments.create(comment_params)
		#@comment.save
		redirect_to @post
	end

	def destroy
		@post = Post.find(params[:post_id])
		@comment = @post.comments.find(params[:id])
		@comment.destroy
		redirect_to @post
	end
	
	private def comment_params
		params.require(:comment).permit(:username, :body)
	end
end


	# def destroy
	# 	@post = Post.find(params[:id])
	# 	@comment = @post.comment[@commentparams]
	# 	@comment.destroy
	# 	redirect_to posts_path
	# end

	

