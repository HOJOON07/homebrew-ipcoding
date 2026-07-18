cask "ipcoding" do
  version "0.1.0"
  sha256 "8385ab95a632acc04fec06597db744d35456623fbf3a479dc003b1bee2f11812"

  url "https://github.com/HOJOON07/ipcoding/releases/download/v#{version}/IpCoding-v#{version}.zip"
  name "IpCoding"
  desc "Fully-local voice input for terminal AI-agent coding (Korean/English)"
  homepage "https://github.com/HOJOON07/ipcoding"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "IpCoding.app"

  caveats <<~EOS
    입코딩은 공증되지 않은 오픈소스 앱입니다 (ad-hoc 서명).
    Gatekeeper 경고 없이 실행하려면 설치 후 격리 속성을 해제하세요:
      xattr -dr com.apple.quarantine "/Applications/IpCoding.app"
    (해제하지 않으면 첫 실행 차단 후 시스템 설정 > 개인정보 보호 및 보안 >
     "그래도 열기"로 실행할 수 있습니다.)

    첫 실행 온보딩에서 마이크·손쉬운 사용 권한과 AI 모델(약 6GB)을 준비합니다.
    요구 사항: Apple Silicon, 메모리 16GB 이상, macOS 14+.
    업데이트: brew upgrade --cask ipcoding
  EOS
end
