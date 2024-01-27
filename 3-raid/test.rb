def getDisk n
  disks = {}

  1.upto(n) do |d|
    disks["sata#{d}"] = {
      :dfile => "./sata#{n}.vdi",
      :size => 250,
      :port => 1
    }
  end

  disks
end

MACHINES = {
  :otuslinux => {
    :box_name => "generic/ubuntu2204",
    :disks => getDisk(7)
  }
}


puts MACHINES


