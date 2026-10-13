cask "leftopen" do
  version "0.5.7"
  sha256 "1a8e92c4a2a2f0013b43a3188cf252c03a54f5067f3c22bb7149fe18ee0f7cef"

  url "https://github.com/SonghaiFan/leftopen/releases/download/v#{version}/LeftOpen-release.zip"
  name "LeftOpen"
  desc "See what your tools left running on localhost"
  homepage "https://github.com/SonghaiFan/leftopen"

  depends_on macos: :sonoma

  app "LeftOpen.app"
  binary "#{appdir}/LeftOpen.app/Contents/MacOS/leftopen"

  # Third-party tap flight block: Homebrew invokes it during upgrades/reinstalls too.
  # Fail closed if Homebrew removes the command context; never infer it from argv.
  uninstall_preflight do
    unless Homebrew.respond_to?(:running_command_with_args)
      raise "Cannot determine Homebrew operation; refusing LeftOpen cleanup."
    end
    context = Homebrew.running_command_with_args.split
    operation = context[1] if context[0] == "brew"
    next if %w[upgrade reinstall cleanup autoremove install].include?(operation)
    raise "Unknown Homebrew operation; refusing LeftOpen cleanup." unless operation == "uninstall"

    # Private, child-process-only handoff from the app's completed native cleanup.
    # Avoid calling brew from its own cleanup helper or prompting twice.
    next if ENV["LEFTOPEN_UNINSTALL_CLEANED"] == "1"

    executable = appdir/"LeftOpen.app/Contents/MacOS/LeftOpenApp"
    raise "LeftOpen cleanup helper is missing; restore the app before retrying." unless executable.executable?

    system_command executable.to_s,
                   args: ["--homebrew-cleanup"],
                   sudo: false,
                   must_succeed: true,
                   print_stdout: true,
                   print_stderr: true
  end

  zap trash: [
    "~/Library/Saved Application State/app.leftopen.mac.savedState",
  ]
end
