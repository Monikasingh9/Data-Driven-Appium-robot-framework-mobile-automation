"""
*** Variables ***
"""
APPIUM_SERVER =""http://127.0.0.1:4723/wd/hub""
ANDROID_AUTOMATION_NAME="UIAutomator2"
ANDROID_PLATFORM_NAME="Android"
ANDROID_PLATFORM_VERSION="12"

"""
Settings app package and activity
"""
SETTINGS_APP_ACTIVITY="com.android.settings.Settings"
SETTINGS_APP_PACKAGE="com.android.settings"

"""
Settings elements locators
"""
SEARCH="//android.widget.Button[@content-desc='Search settings']"
SEARCH_TEXT_BOX="com.android.settings.intelligence:id/search_src_text"
SEARCH_TITLE="android:id/title"
