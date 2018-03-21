node('master') {

  stage('checkout') {
    checkout scm
  }


  stage('iOS build') {
      sh 'export LC_CTYPE=en_US.UTF-8'
      sh 'sudo gem install xcpretty'
      sh 'xcodebuild -scheme "MyLife" -workspace MyLife.xcodeproj/project.xcworkspace -configuration Debug build test -destination  "platform=iOS Simulator,name=iPhone 8 Plus" | tee xcodebuild.log | /usr/local/bin/xcpretty -r html'
      publishHTML (target: [
      allowMissing: false,
      alwaysLinkToLastBuild: false,
      keepAll: true,
      reportDir: 'build/reports',
      reportFiles: 'tests.html',
      reportName: "Test results"
    ])
  }
}