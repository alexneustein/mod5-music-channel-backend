dir = File.dirname(File.expand_path(__FILE__))
$LOAD_PATH.unshift dir + "/../lib"

require "unimidi"

notes = [36, 40, 43] # C E G
octaves = 5
duration = 0.1


# input = UniMIDI::Input.gets
output = UniMIDI::Output.open(3)


(0..((octaves-1)*12)).step(12) do |oct|

  notes.each do |note|

    output.puts(0x90, note + oct, 100) # note on
    sleep(duration) # wait
    output.puts(0x80, note + oct, 100) # note off

  end

end

# output.name
# output.puts(0x90, 36, 100)
