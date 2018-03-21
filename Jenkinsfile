node('master') {

  stage('checkout') {
    steps {
    checkout scm
    }
  }

  stage('iOS build') {
    steps {
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
}