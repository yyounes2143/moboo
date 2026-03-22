package com.changdu.mobovideo;

import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import com.cd_core4.cd_deep_link.CdDeepLinkPlugin;
import com.changdu.component.push.base.BaseTokenCallback;
import com.changdu.component.push.base.PushManager;
import com.changdu.mobovideo.VideoApplication;
import com.changdu.mobovideo.ad.NativeAdFactory;
import com.changdu.mobovideo.ad.NativeAdInStoryFactory;
import com.changdu.mobovideo.googleengage.AppEngageBroadcastReceiver;
import com.changdu.mobovideo.googleengage.GoogleEngagePlugin;
import com.changdu.mobovideo.googleengage.GoogleEngageUpdaterWorker;
import com.changdu.mobovideo.picture.CDJobScheduler;
import com.changdu.mobovideo.picture.PushAdapter;
import com.changdu.mobovideo.picture.account.AccountSyncManager;
import com.changdu.mobovideo.picture.receiver.AlarmReceiver;
import com.changdu.mobovideo.plugins.AdProcessPlugin;
import com.changdu.mobovideo.plugins.CDAppStatePlugin;
import com.changdu.mobovideo.plugins.CDHomeWidgetPlugin;
import com.changdu.mobovideo.plugins.CDNetwork;
import com.changdu.mobovideo.plugins.CDReportPlugin;
import com.changdu.mobovideo.plugins.PipUtilPlugin;
import com.changdu.mobovideo.plugins.PushPlugin;
import io.flutter.embedding.android.FlutterActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.PluginRegistry;
import io.flutter.embedding.engine.renderer.FlutterRenderer;
import io.flutter.plugins.googlemobileads.GoogleMobileAdsPlugin;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0014J\u0010\u0010\b\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016J\b\u0010\u000b\u001a\u00020\u0005H\u0014J\b\u0010\f\u001a\u00020\u0005H\u0016J\b\u0010\r\u001a\u00020\u0005H\u0014J\u001a\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\nH\u0016¨\u0006\u0014"}, d2 = {"Lcom/changdu/mobovideo/MainActivity;", "Lio/flutter/embedding/android/FlutterActivity;", "<init>", "()V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "configureFlutterEngine", "flutterEngine", "Lio/flutter/embedding/engine/FlutterEngine;", "onResume", "onUserLeaveHint", "onStop", "onPictureInPictureModeChanged", "isInPictureInPictureMode", "", "newConfig", "Landroid/content/res/Configuration;", "cleanUpFlutterEngine", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class MainActivity extends FlutterActivity {
    @Override // io.flutter.embedding.android.FlutterActivity, io.flutter.embedding.android.FlutterActivityAndFragmentDelegate.Host, io.flutter.embedding.android.FlutterEngineConfigurator
    public void cleanUpFlutterEngine(@NotNull FlutterEngine flutterEngine) {
        GoogleMobileAdsPlugin.unregisterNativeAdFactory(flutterEngine, "adFactory");
        GoogleMobileAdsPlugin.unregisterNativeAdFactory(flutterEngine, "adInStoryFactory");
    }

    @Override // io.flutter.embedding.android.FlutterActivity, io.flutter.embedding.android.FlutterActivityAndFragmentDelegate.Host, io.flutter.embedding.android.FlutterEngineConfigurator
    public void configureFlutterEngine(@NotNull FlutterEngine flutterEngine) {
        flutterEngine.getPlugins().add(new CDAppStatePlugin());
        flutterEngine.getPlugins().add(new AdProcessPlugin());
        flutterEngine.getPlugins().add(new CDReportPlugin());
        flutterEngine.getPlugins().add(new PipUtilPlugin());
        flutterEngine.getPlugins().add(new PushPlugin());
        flutterEngine.getPlugins().add(new CDNetwork());
        flutterEngine.getPlugins().add(new CDHomeWidgetPlugin());
        flutterEngine.getPlugins().add(new GoogleMobileAdsPlugin());
        flutterEngine.getPlugins().add(new GoogleEngagePlugin());
        super.configureFlutterEngine(flutterEngine);
        GoogleMobileAdsPlugin.registerNativeAdFactory(flutterEngine, "adFactory", new NativeAdFactory(getLayoutInflater()));
        GoogleMobileAdsPlugin.registerNativeAdFactory(flutterEngine, "adInStoryFactory", new NativeAdInStoryFactory(getLayoutInflater()));
    }

    @Override // io.flutter.embedding.android.FlutterActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        FlutterEngine flutterEngine;
        FlutterRenderer renderer;
        super.onCreate(bundle);
        getWindow().setFlags(8192, 8192);
        if (bundle != null && (flutterEngine = getFlutterEngine()) != null && (renderer = flutterEngine.getRenderer()) != null) {
            renderer.onTrimMemory(80);
        }
        VideoApplication.Companion companion = VideoApplication.Companion;
        if (companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(false);
            CdDeepLinkPlugin.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, getString(R.string.facebook_app_id), getString(R.string.facebook_client_token), getString(R.string.fb_deep_link_scheme), getString(R.string.fb_deep_link_host), getString(R.string.cd_app_links_scheme), getString(R.string.cd_app_links_host));
            AppEngageBroadcastReceiver.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(getApplicationContext());
        }
        PushManager.INSTANCE.setTokenCallback(new BaseTokenCallback() { // from class: com.changdu.mobovideo.MainActivity$onCreate$1
            @Override // com.changdu.component.push.base.BaseTokenCallback
            public void realReportToken(String str, int i) {
                PushAdapter.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwww(MainActivity.this.getApplicationContext(), str);
            }
        });
        GoogleEngageUpdaterWorker.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        try {
            AccountSyncManager accountSyncManager = AccountSyncManager.INSTANCE;
            accountSyncManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(getApplicationContext());
            accountSyncManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(getApplicationContext(), "activity_bootstrap");
            CDJobScheduler.INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
            AlarmReceiver.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        } catch (Throwable unused) {
        }
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z, @Nullable Configuration configuration) {
        PluginRegistry plugins;
        FlutterPlugin flutterPlugin;
        PipUtilPlugin pipUtilPlugin;
        FlutterEngine flutterEngine = getFlutterEngine();
        if (flutterEngine != null && (plugins = flutterEngine.getPlugins()) != null && (flutterPlugin = plugins.get(PipUtilPlugin.class)) != null) {
            if (flutterPlugin instanceof PipUtilPlugin) {
                pipUtilPlugin = (PipUtilPlugin) flutterPlugin;
            } else {
                pipUtilPlugin = null;
            }
            if (pipUtilPlugin == null) {
                return;
            }
            pipUtilPlugin.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, z, configuration);
        }
        super.onPictureInPictureModeChanged(z, configuration);
    }

    @Override // io.flutter.embedding.android.FlutterActivity, android.app.Activity
    public void onResume() {
        FlutterEngine flutterEngine;
        PluginRegistry plugins;
        FlutterPlugin flutterPlugin;
        PipUtilPlugin pipUtilPlugin;
        boolean isInPictureInPictureMode;
        if (Build.VERSION.SDK_INT >= 24 && (flutterEngine = getFlutterEngine()) != null && (plugins = flutterEngine.getPlugins()) != null && (flutterPlugin = plugins.get(PipUtilPlugin.class)) != null) {
            if (flutterPlugin instanceof PipUtilPlugin) {
                pipUtilPlugin = (PipUtilPlugin) flutterPlugin;
            } else {
                pipUtilPlugin = null;
            }
            if (pipUtilPlugin != null) {
                isInPictureInPictureMode = getActivity().isInPictureInPictureMode();
                pipUtilPlugin.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(isInPictureInPictureMode);
            } else {
                return;
            }
        }
        super.onResume();
    }

    @Override // io.flutter.embedding.android.FlutterActivity, android.app.Activity
    public void onStop() {
        PluginRegistry plugins;
        FlutterPlugin flutterPlugin;
        PipUtilPlugin pipUtilPlugin;
        FlutterEngine flutterEngine = getFlutterEngine();
        if (flutterEngine != null && (plugins = flutterEngine.getPlugins()) != null && (flutterPlugin = plugins.get(PipUtilPlugin.class)) != null) {
            if (flutterPlugin instanceof PipUtilPlugin) {
                pipUtilPlugin = (PipUtilPlugin) flutterPlugin;
            } else {
                pipUtilPlugin = null;
            }
            if (pipUtilPlugin == null) {
                return;
            }
            pipUtilPlugin.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(false);
        }
        super.onStop();
    }

    @Override // io.flutter.embedding.android.FlutterActivity, android.app.Activity
    public void onUserLeaveHint() {
        PluginRegistry plugins;
        FlutterPlugin flutterPlugin;
        PipUtilPlugin pipUtilPlugin;
        super.onUserLeaveHint();
        FlutterEngine flutterEngine = getFlutterEngine();
        if (flutterEngine != null && (plugins = flutterEngine.getPlugins()) != null && (flutterPlugin = plugins.get(PipUtilPlugin.class)) != null) {
            if (flutterPlugin instanceof PipUtilPlugin) {
                pipUtilPlugin = (PipUtilPlugin) flutterPlugin;
            } else {
                pipUtilPlugin = null;
            }
            if (pipUtilPlugin != null) {
                pipUtilPlugin.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
            }
        }
    }
}
