class Application
    
    def call(env)
        resp = Rack::Response.new
        req = Rack::Request.new(env)
        path = Item.each do |item|
            item.name == req
            resp.write "#{item.price}"
        end
        if path
        else
            resp.write "Route not found"
            resp.status = 404
        end

        resp.finish
    end
end