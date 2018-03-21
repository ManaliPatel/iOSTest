node('master') {

  stage('checkout') {
    checkout scm
  }


  stage('iOS build') {
      sh 'sudo gem install xcpretty'
      sh 'xcodebuild -scheme "MyLife" -workspace MyLife.xcodeproj/project.xcworkspace -configuration Debug build test -destination  "platform=iOS Simulator,name=iPhone 8 Plus" | /usr/local/bin/xcpretty -r html'
  }
}