cask "disksweep" do
  version "0.1.0-rc.1"
  sha256 "f542e6a097e26ae2dd7bef0d7d1e5e171d0e718a3780d79021e636e43b3aa9d3"

  url "https://github.com/vinicios-gomes/DiskSweep/releases/download/v#{version}/DiskSweep-#{version}.dmg"
  name "DiskSweep"
  desc "Disk cleaner with drill-down for developer caches, Docker and iOS simulators"
  homepage "https://github.com/vinicios-gomes/DiskSweep"

  depends_on macos: ">= :sonoma"

  app "DiskSweep.app"

  # O app usa assinatura ad hoc (sem notarização da Apple); remove a quarentena para o Gatekeeper não bloquear.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/DiskSweep.app"]
  end

  zap trash: "~/Library/Application Support/DiskSweep"

  caveats <<~EOS
    DiskSweep is not notarized by Apple. This cask removes the download quarantine flag on install.
    DiskSweep deletes files: review every list before confirming.
  EOS
end
