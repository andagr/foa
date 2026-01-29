def tick args
  if args.tick_count == 0
    # On the web, 'args.gtk.platform' usually returns 'Web' or similar
    puts "Running on: #{args.gtk.platform}"
    
    # This check specifically looks for the JS environment
    if args.gtk.platform == "Web" # Or sometimes check for 'Emscripten'
      puts "WebSockets are available via the Browser!"
    else
      puts "Running on Desktop: WebSockets disabled in Standard Tier."
    end
  end

  args.outputs.labels << [120, 120, "Platform: #{args.gtk.platform}"]
  args.outputs.labels << [120, 100, "Go to http://localhost:9001 in your browser!"]
end