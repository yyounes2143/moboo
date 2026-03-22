package io.flutter.plugins;

import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import app.meedu.flutter_facebook_auth.FlutterFacebookAuthPlugin;
import com.aboutyou.dart_packages.sign_in_with_apple.SignInWithApplePlugin;
import com.ajinasokan.flutterdisplaymode.DisplayModePlugin;
import com.applovin.applovin_max.AppLovinMAX;
import com.appsflyer.appsflyersdk.AppsflyerSdkPlugin;
import com.baseflow.permissionhandler.PermissionHandlerPlugin;
import com.cd_core4.cd_core.CdCorePlugin;
import com.cd_core4.cd_deep_link.CdDeepLinkPlugin;
import com.cd_core4.cd_webview.CdWebViewPlugin;
import com.devlxx.disable_screenshots.DisableScreenshotsPlugin;
import com.example.disk_space_2.DiskSpace_2Plugin;
import com.example.pay_manager_android.PayManagerPlugin;
import com.fluttercandies.flutter_image_compress.ImageCompressPlugin;
import com.fluttercandies.image_editor.ImageEditorPlugin;
import com.fluttercandies.photo_manager.PhotoManagerPlugin;
import com.jrai.flutter_keyboard_visibility.FlutterKeyboardVisibilityPlugin;
import com.sensorsdata.analytics.sensorsanalyticsflutterplugin.SensorsAnalyticsFlutterPlugin;
import com.spencerccf.app_settings.AppSettingsPlugin;
import com.tekartik.sqflite.SqflitePlugin;
import com.tencent.vod.flutter.SuperPlayerPlugin;
import dev.fluttercommunity.plus.connectivity.ConnectivityPlugin;
import dev.fluttercommunity.plus.device_info.DeviceInfoPlusPlugin;
import dev.fluttercommunity.plus.packageinfo.PackageInfoPlugin;
import dev.fluttercommunity.plus.share.SharePlusPlugin;
import dev.fluttercommunity.plus.wakelock.WakelockPlusPlugin;
import fr.g123k.flutterappbadger.FlutterAppBadgerPlugin;
import io.flutter.Log;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.plugins.flutter_plugin_android_lifecycle.FlutterAndroidLifecyclePlugin;
import io.flutter.plugins.googlemobileads.GoogleMobileAdsPlugin;
import io.flutter.plugins.googlesignin.GoogleSignInPlugin;
import io.flutter.plugins.imagepicker.ImagePickerPlugin;
import io.flutter.plugins.pathprovider.PathProviderPlugin;
import io.flutter.plugins.quickactions.QuickActionsPlugin;
import io.flutter.plugins.urllauncher.UrlLauncherPlugin;
import io.flutter.plugins.videoplayer.VideoPlayerPlugin;
import io.flutter.plugins.webviewflutter.WebViewFlutterPlugin;
/* compiled from: Proguard */
@Keep
/* loaded from: classes6.dex */
public final class GeneratedPluginRegistrant {
    private static final String TAG = "GeneratedPluginRegistrant";

    public static void registerWith(@NonNull FlutterEngine flutterEngine) {
        try {
            flutterEngine.getPlugins().add(new AppSettingsPlugin());
        } catch (Exception e) {
            Log.e(TAG, "Error registering plugin app_settings, com.spencerccf.app_settings.AppSettingsPlugin", e);
        }
        try {
            flutterEngine.getPlugins().add(new AppLovinMAX());
        } catch (Exception e2) {
            Log.e(TAG, "Error registering plugin applovin_max, com.applovin.applovin_max.AppLovinMAX", e2);
        }
        try {
            flutterEngine.getPlugins().add(new AppsflyerSdkPlugin());
        } catch (Exception e3) {
            Log.e(TAG, "Error registering plugin appsflyer_sdk, com.appsflyer.appsflyersdk.AppsflyerSdkPlugin", e3);
        }
        try {
            flutterEngine.getPlugins().add(new CdCorePlugin());
        } catch (Exception e4) {
            Log.e(TAG, "Error registering plugin cd_core, com.cd_core4.cd_core.CdCorePlugin", e4);
        }
        try {
            flutterEngine.getPlugins().add(new CdDeepLinkPlugin());
        } catch (Exception e5) {
            Log.e(TAG, "Error registering plugin cd_deep_link, com.cd_core4.cd_deep_link.CdDeepLinkPlugin", e5);
        }
        try {
            flutterEngine.getPlugins().add(new CdWebViewPlugin());
        } catch (Exception e6) {
            Log.e(TAG, "Error registering plugin cd_webview, com.cd_core4.cd_webview.CdWebViewPlugin", e6);
        }
        try {
            flutterEngine.getPlugins().add(new ConnectivityPlugin());
        } catch (Exception e7) {
            Log.e(TAG, "Error registering plugin connectivity_plus, dev.fluttercommunity.plus.connectivity.ConnectivityPlugin", e7);
        }
        try {
            flutterEngine.getPlugins().add(new DeviceInfoPlusPlugin());
        } catch (Exception e8) {
            Log.e(TAG, "Error registering plugin device_info_plus, dev.fluttercommunity.plus.device_info.DeviceInfoPlusPlugin", e8);
        }
        try {
            flutterEngine.getPlugins().add(new DisableScreenshotsPlugin());
        } catch (Exception e9) {
            Log.e(TAG, "Error registering plugin disable_screenshots, com.devlxx.disable_screenshots.DisableScreenshotsPlugin", e9);
        }
        try {
            flutterEngine.getPlugins().add(new DiskSpace_2Plugin());
        } catch (Exception e10) {
            Log.e(TAG, "Error registering plugin disk_space_2, com.example.disk_space_2.DiskSpace_2Plugin", e10);
        }
        try {
            flutterEngine.getPlugins().add(new FlutterAppBadgerPlugin());
        } catch (Exception e11) {
            Log.e(TAG, "Error registering plugin flutter_app_badger, fr.g123k.flutterappbadger.FlutterAppBadgerPlugin", e11);
        }
        try {
            flutterEngine.getPlugins().add(new DisplayModePlugin());
        } catch (Exception e12) {
            Log.e(TAG, "Error registering plugin flutter_displaymode, com.ajinasokan.flutterdisplaymode.DisplayModePlugin", e12);
        }
        try {
            flutterEngine.getPlugins().add(new FlutterFacebookAuthPlugin());
        } catch (Exception e13) {
            Log.e(TAG, "Error registering plugin flutter_facebook_auth, app.meedu.flutter_facebook_auth.FlutterFacebookAuthPlugin", e13);
        }
        try {
            flutterEngine.getPlugins().add(new ImageCompressPlugin());
        } catch (Exception e14) {
            Log.e(TAG, "Error registering plugin flutter_image_compress_common, com.fluttercandies.flutter_image_compress.ImageCompressPlugin", e14);
        }
        try {
            flutterEngine.getPlugins().add(new FlutterKeyboardVisibilityPlugin());
        } catch (Exception e15) {
            Log.e(TAG, "Error registering plugin flutter_keyboard_visibility, com.jrai.flutter_keyboard_visibility.FlutterKeyboardVisibilityPlugin", e15);
        }
        try {
            flutterEngine.getPlugins().add(new FlutterAndroidLifecyclePlugin());
        } catch (Exception e16) {
            Log.e(TAG, "Error registering plugin flutter_plugin_android_lifecycle, io.flutter.plugins.flutter_plugin_android_lifecycle.FlutterAndroidLifecyclePlugin", e16);
        }
        try {
            flutterEngine.getPlugins().add(new GoogleMobileAdsPlugin());
        } catch (Exception e17) {
            Log.e(TAG, "Error registering plugin google_mobile_ads, io.flutter.plugins.googlemobileads.GoogleMobileAdsPlugin", e17);
        }
        try {
            flutterEngine.getPlugins().add(new GoogleSignInPlugin());
        } catch (Exception e18) {
            Log.e(TAG, "Error registering plugin google_sign_in_android, io.flutter.plugins.googlesignin.GoogleSignInPlugin", e18);
        }
        try {
            flutterEngine.getPlugins().add(new ImageEditorPlugin());
        } catch (Exception e19) {
            Log.e(TAG, "Error registering plugin image_editor_common, com.fluttercandies.image_editor.ImageEditorPlugin", e19);
        }
        try {
            flutterEngine.getPlugins().add(new ImagePickerPlugin());
        } catch (Exception e20) {
            Log.e(TAG, "Error registering plugin image_picker_android, io.flutter.plugins.imagepicker.ImagePickerPlugin", e20);
        }
        try {
            flutterEngine.getPlugins().add(new PackageInfoPlugin());
        } catch (Exception e21) {
            Log.e(TAG, "Error registering plugin package_info_plus, dev.fluttercommunity.plus.packageinfo.PackageInfoPlugin", e21);
        }
        try {
            flutterEngine.getPlugins().add(new PathProviderPlugin());
        } catch (Exception e22) {
            Log.e(TAG, "Error registering plugin path_provider_android, io.flutter.plugins.pathprovider.PathProviderPlugin", e22);
        }
        try {
            flutterEngine.getPlugins().add(new PermissionHandlerPlugin());
        } catch (Exception e23) {
            Log.e(TAG, "Error registering plugin permission_handler_android, com.baseflow.permissionhandler.PermissionHandlerPlugin", e23);
        }
        try {
            flutterEngine.getPlugins().add(new PhotoManagerPlugin());
        } catch (Exception e24) {
            Log.e(TAG, "Error registering plugin photo_manager, com.fluttercandies.photo_manager.PhotoManagerPlugin", e24);
        }
        try {
            flutterEngine.getPlugins().add(new QuickActionsPlugin());
        } catch (Exception e25) {
            Log.e(TAG, "Error registering plugin quick_actions_android, io.flutter.plugins.quickactions.QuickActionsPlugin", e25);
        }
        try {
            flutterEngine.getPlugins().add(new PayManagerPlugin());
        } catch (Exception e26) {
            Log.e(TAG, "Error registering plugin remove_manager_update, com.example.pay_manager_android.PayManagerPlugin", e26);
        }
        try {
            flutterEngine.getPlugins().add(new SensorsAnalyticsFlutterPlugin());
        } catch (Exception e27) {
            Log.e(TAG, "Error registering plugin sensors_analytics_flutter_plugin, com.sensorsdata.analytics.sensorsanalyticsflutterplugin.SensorsAnalyticsFlutterPlugin", e27);
        }
        try {
            flutterEngine.getPlugins().add(new SharePlusPlugin());
        } catch (Exception e28) {
            Log.e(TAG, "Error registering plugin share_plus, dev.fluttercommunity.plus.share.SharePlusPlugin", e28);
        }
        try {
            flutterEngine.getPlugins().add(new SignInWithApplePlugin());
        } catch (Exception e29) {
            Log.e(TAG, "Error registering plugin sign_in_with_apple, com.aboutyou.dart_packages.sign_in_with_apple.SignInWithApplePlugin", e29);
        }
        try {
            flutterEngine.getPlugins().add(new SqflitePlugin());
        } catch (Exception e30) {
            Log.e(TAG, "Error registering plugin sqflite_android, com.tekartik.sqflite.SqflitePlugin", e30);
        }
        try {
            flutterEngine.getPlugins().add(new SuperPlayerPlugin());
        } catch (Exception e31) {
            Log.e(TAG, "Error registering plugin super_player, com.tencent.vod.flutter.SuperPlayerPlugin", e31);
        }
        try {
            flutterEngine.getPlugins().add(new UrlLauncherPlugin());
        } catch (Exception e32) {
            Log.e(TAG, "Error registering plugin url_launcher_android, io.flutter.plugins.urllauncher.UrlLauncherPlugin", e32);
        }
        try {
            flutterEngine.getPlugins().add(new VideoPlayerPlugin());
        } catch (Exception e33) {
            Log.e(TAG, "Error registering plugin video_player_android, io.flutter.plugins.videoplayer.VideoPlayerPlugin", e33);
        }
        try {
            flutterEngine.getPlugins().add(new WakelockPlusPlugin());
        } catch (Exception e34) {
            Log.e(TAG, "Error registering plugin wakelock_plus, dev.fluttercommunity.plus.wakelock.WakelockPlusPlugin", e34);
        }
        try {
            flutterEngine.getPlugins().add(new WebViewFlutterPlugin());
        } catch (Exception e35) {
            Log.e(TAG, "Error registering plugin webview_flutter_android, io.flutter.plugins.webviewflutter.WebViewFlutterPlugin", e35);
        }
    }
}
