require 'pry'
class Application 

    @@items = []

    def call(env)
        resp = Rack::Response.new
        req = Rack::Request.new(env)

        #if req.path=="/items/<ITEM NAME>"
        #if req.path.match(/items/) 
        if req.path.match(/items/)
            @@items.each do |item|
                resp.write "#{item}\n"

            end
            binding.pry

            #resp.write "#{ITEM PRICE}"
        else
            resp.write "Route not found"
            resp.status = 404
        end

        resp.finish
    end
end
