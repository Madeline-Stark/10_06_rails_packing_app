module ApplicationHelper
    def navbar
        #if the user is logged in
        if logged_in?
            "hello"
        # display logout button
        # index for lists
        # make a new list
        else
            "sign up please"
        #if they're not
        # display links to signup + signin
        end
    end 
end
