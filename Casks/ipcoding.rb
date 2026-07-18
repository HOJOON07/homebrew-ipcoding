cask "ipcoding" do
  version "0.1.0"
  sha256 "8385ab95a632acc04fec06597db744d35456623fbf3a479dc003b1bee2f11812"

  url "https://github.com/HOJOON07/ipcoding/releases/download/v#{version}/IpCoding-v#{version}.zip"
  name "IpCoding"
  desc "Fully-local voice input for terminal AI-agent coding (Korean/English)"
  homepage "https://github.com/HOJOON07/ipcoding"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "IpCoding.app"

  caveats <<~EOS
    입코딩은 공증되지 않은 앱입니다 (오픈소스, ad-hoc 서명).
    Gatekeeper 경고 없이 쓰려면 --no-quarantine으로 설치하세요:
      brew install --cask --no-quarantine ipcoding
    이미 설치했다면:
      xattr -dr com.apple.quarantine "/Applications/IpCoding.app"

    첫 실행 온보딩에서 마이크·손쉬운 사용 권한과 AI 모델(약 6GB)을 준비합니다.
    요구 사항: Apple Silicon, 메모리 16GB 이상, macOS 14+.
    업데이트: brew upgrade --cask ipcoding
  EOS
end
