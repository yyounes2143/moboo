package io.flutter.plugins.googlemobileads;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.AdInspectorError;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.OnAdInspectorClosedListener;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.google.android.gms.ads.nativead.NativeAd;
import com.google.android.gms.ads.nativead.NativeAdView;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import com.vungle.ads.internal.ui.AdActivity;
import io.flutter.embedding.engine.FlutterEngine;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.StandardMethodCodec;
import io.flutter.plugins.googlemobileads.FlutterAd;
import io.flutter.plugins.googlemobileads.FlutterAdSize;
import io.flutter.plugins.googlemobileads.FlutterNativeAd;
import io.flutter.plugins.googlemobileads.nativetemplates.FlutterNativeTemplateStyle;
import io.flutter.plugins.googlemobileads.usermessagingplatform.UserMessagingPlatformManager;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class GoogleMobileAdsPlugin implements FlutterPlugin, ActivityAware, MethodChannel.MethodCallHandler {
    private static final String TAG = "GoogleMobileAdsPlugin";
    @Nullable
    private AdMessageCodec adMessageCodec;
    @Nullable
    private AppStateNotifier appStateNotifier;
    private final FlutterMobileAdsWrapper flutterMobileAds;
    @Nullable
    private AdInstanceManager instanceManager;
    @Nullable
    private MediationNetworkExtrasProvider mediationNetworkExtrasProvider;
    private final Map<String, NativeAdFactory> nativeAdFactories;
    @Nullable
    private FlutterPlugin.FlutterPluginBinding pluginBinding;
    @Nullable
    private UserMessagingPlatformManager userMessagingPlatformManager;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class FlutterInitializationListener implements OnInitializationCompleteListener {
        private boolean isInitializationCompleted;
        private final MethodChannel.Result result;

        @Override // com.google.android.gms.ads.initialization.OnInitializationCompleteListener
        public void onInitializationComplete(@NonNull InitializationStatus initializationStatus) {
            if (this.isInitializationCompleted) {
                return;
            }
            try {
                Method declaredMethod = MobileAds.class.getDeclaredMethod("setPlugin", String.class);
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(null, Constants.REQUEST_AGENT_PREFIX_VERSIONED);
            } catch (Exception unused) {
            }
            this.result.success(new FlutterInitializationStatus(initializationStatus));
            this.isInitializationCompleted = true;
        }

        private FlutterInitializationListener(@NonNull MethodChannel.Result result) {
            this.result = result;
            this.isInitializationCompleted = false;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface NativeAdFactory {
        NativeAdView createNativeAd(NativeAd nativeAd, Map<String, Object> map);
    }

    public GoogleMobileAdsPlugin() {
        this.nativeAdFactories = new HashMap();
        this.flutterMobileAds = new FlutterMobileAdsWrapper();
    }

    private boolean addNativeAdFactory(String str, NativeAdFactory nativeAdFactory) {
        if (this.nativeAdFactories.containsKey(str)) {
            String.format("A NativeAdFactory with the following factoryId already exists: %s", str);
            return false;
        }
        this.nativeAdFactories.put(str, nativeAdFactory);
        return true;
    }

    @Deprecated
    public static boolean registerMediationNetworkExtrasProvider(FlutterEngine flutterEngine, MediationNetworkExtrasProvider mediationNetworkExtrasProvider) {
        GoogleMobileAdsPlugin googleMobileAdsPlugin = (GoogleMobileAdsPlugin) flutterEngine.getPlugins().get(GoogleMobileAdsPlugin.class);
        if (googleMobileAdsPlugin == null) {
            return false;
        }
        googleMobileAdsPlugin.mediationNetworkExtrasProvider = mediationNetworkExtrasProvider;
        AdMessageCodec adMessageCodec = googleMobileAdsPlugin.adMessageCodec;
        if (adMessageCodec != null) {
            adMessageCodec.setMediationNetworkExtrasProvider(mediationNetworkExtrasProvider);
            return true;
        }
        return true;
    }

    public static boolean registerNativeAdFactory(FlutterEngine flutterEngine, String str, NativeAdFactory nativeAdFactory) {
        return registerNativeAdFactory((GoogleMobileAdsPlugin) flutterEngine.getPlugins().get(GoogleMobileAdsPlugin.class), str, nativeAdFactory);
    }

    private NativeAdFactory removeNativeAdFactory(String str) {
        return this.nativeAdFactories.remove(str);
    }

    private static <T> T requireNonNull(T t) {
        if (t != null) {
            return t;
        }
        throw new IllegalArgumentException();
    }

    @Deprecated
    public static void unregisterMediationNetworkExtrasProvider(FlutterEngine flutterEngine) {
        GoogleMobileAdsPlugin googleMobileAdsPlugin = (GoogleMobileAdsPlugin) flutterEngine.getPlugins().get(GoogleMobileAdsPlugin.class);
        if (googleMobileAdsPlugin == null) {
            return;
        }
        AdMessageCodec adMessageCodec = googleMobileAdsPlugin.adMessageCodec;
        if (adMessageCodec != null) {
            adMessageCodec.setMediationNetworkExtrasProvider(null);
        }
        googleMobileAdsPlugin.mediationNetworkExtrasProvider = null;
    }

    @Nullable
    public static NativeAdFactory unregisterNativeAdFactory(FlutterEngine flutterEngine, String str) {
        FlutterPlugin flutterPlugin = flutterEngine.getPlugins().get(GoogleMobileAdsPlugin.class);
        if (flutterPlugin != null) {
            return ((GoogleMobileAdsPlugin) flutterPlugin).removeNativeAdFactory(str);
        }
        return null;
    }

    @VisibleForTesting
    public BannerAdCreator getBannerAdCreator(@NonNull Context context) {
        return new BannerAdCreator(context);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(ActivityPluginBinding activityPluginBinding) {
        AdInstanceManager adInstanceManager = this.instanceManager;
        if (adInstanceManager != null) {
            adInstanceManager.setActivity(activityPluginBinding.getActivity());
        }
        AdMessageCodec adMessageCodec = this.adMessageCodec;
        if (adMessageCodec != null) {
            adMessageCodec.setContext(activityPluginBinding.getActivity());
        }
        UserMessagingPlatformManager userMessagingPlatformManager = this.userMessagingPlatformManager;
        if (userMessagingPlatformManager != null) {
            userMessagingPlatformManager.setActivity(activityPluginBinding.getActivity());
        }
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.pluginBinding = flutterPluginBinding;
        AdMessageCodec adMessageCodec = new AdMessageCodec(flutterPluginBinding.getApplicationContext(), new FlutterRequestAgentProvider(flutterPluginBinding.getApplicationContext()));
        this.adMessageCodec = adMessageCodec;
        MediationNetworkExtrasProvider mediationNetworkExtrasProvider = this.mediationNetworkExtrasProvider;
        if (mediationNetworkExtrasProvider != null) {
            adMessageCodec.setMediationNetworkExtrasProvider(mediationNetworkExtrasProvider);
        }
        MethodChannel methodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "plugins.flutter.io/google_mobile_ads", new StandardMethodCodec(this.adMessageCodec));
        methodChannel.setMethodCallHandler(this);
        this.instanceManager = new AdInstanceManager(methodChannel);
        flutterPluginBinding.getPlatformViewRegistry().registerViewFactory("plugins.flutter.io/google_mobile_ads/ad_widget", new GoogleMobileAdsViewFactory(this.instanceManager));
        this.appStateNotifier = new AppStateNotifier(flutterPluginBinding.getBinaryMessenger());
        this.userMessagingPlatformManager = new UserMessagingPlatformManager(flutterPluginBinding.getBinaryMessenger(), flutterPluginBinding.getApplicationContext());
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        FlutterPlugin.FlutterPluginBinding flutterPluginBinding;
        AdMessageCodec adMessageCodec = this.adMessageCodec;
        if (adMessageCodec != null && (flutterPluginBinding = this.pluginBinding) != null) {
            adMessageCodec.setContext(flutterPluginBinding.getApplicationContext());
        }
        AdInstanceManager adInstanceManager = this.instanceManager;
        if (adInstanceManager != null) {
            adInstanceManager.setActivity(null);
        }
        UserMessagingPlatformManager userMessagingPlatformManager = this.userMessagingPlatformManager;
        if (userMessagingPlatformManager != null) {
            userMessagingPlatformManager.setActivity(null);
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
        FlutterPlugin.FlutterPluginBinding flutterPluginBinding;
        AdMessageCodec adMessageCodec = this.adMessageCodec;
        if (adMessageCodec != null && (flutterPluginBinding = this.pluginBinding) != null) {
            adMessageCodec.setContext(flutterPluginBinding.getApplicationContext());
        }
        AdInstanceManager adInstanceManager = this.instanceManager;
        if (adInstanceManager != null) {
            adInstanceManager.setActivity(null);
        }
        UserMessagingPlatformManager userMessagingPlatformManager = this.userMessagingPlatformManager;
        if (userMessagingPlatformManager != null) {
            userMessagingPlatformManager.setActivity(null);
        }
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        AppStateNotifier appStateNotifier = this.appStateNotifier;
        if (appStateNotifier != null) {
            appStateNotifier.stop();
            this.appStateNotifier = null;
        }
    }

    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    public void onMethodCall(@NonNull MethodCall methodCall, @NonNull final MethodChannel.Result result) {
        Context applicationContext;
        FlutterRewardedAd flutterRewardedAd;
        FlutterRewardedInterstitialAd flutterRewardedInterstitialAd;
        AdInstanceManager adInstanceManager = this.instanceManager;
        if (adInstanceManager != null && this.pluginBinding != null) {
            if (adInstanceManager.getActivity() != null) {
                applicationContext = this.instanceManager.getActivity();
            } else {
                applicationContext = this.pluginBinding.getApplicationContext();
            }
            String str = methodCall.method;
            str.getClass();
            char c = 65535;
            switch (str.hashCode()) {
                case -1959534605:
                    if (str.equals("MobileAds#openDebugMenu")) {
                        c = 0;
                        break;
                    }
                    break;
                case -1941808395:
                    if (str.equals("loadInterstitialAd")) {
                        c = 1;
                        break;
                    }
                    break;
                case -1826439721:
                    if (str.equals("MobileAds#setAppMuted")) {
                        c = 2;
                        break;
                    }
                    break;
                case -1771320504:
                    if (str.equals("loadAppOpenAd")) {
                        c = 3;
                        break;
                    }
                    break;
                case -1557947903:
                    if (str.equals("MobileAds#registerWebView")) {
                        c = 4;
                        break;
                    }
                    break;
                case -1548893609:
                    if (str.equals("loadRewardedAd")) {
                        c = 5;
                        break;
                    }
                    break;
                case -1395015128:
                    if (str.equals("MobileAds#getRequestConfiguration")) {
                        c = 6;
                        break;
                    }
                    break;
                case -1273455673:
                    if (str.equals("loadFluidAd")) {
                        c = 7;
                        break;
                    }
                    break;
                case -965504608:
                    if (str.equals("loadNativeAd")) {
                        c = '\b';
                        break;
                    }
                    break;
                case -918684377:
                    if (str.equals("setServerSideVerificationOptions")) {
                        c = '\t';
                        break;
                    }
                    break;
                case -768079951:
                    if (str.equals("AdSize#getAnchoredAdaptiveBannerAdSize")) {
                        c = '\n';
                        break;
                    }
                    break;
                case -676596397:
                    if (str.equals("loadAdManagerInterstitialAd")) {
                        c = 11;
                        break;
                    }
                    break;
                case -572043403:
                    if (str.equals("loadBannerAd")) {
                        c = '\f';
                        break;
                    }
                    break;
                case -533157842:
                    if (str.equals("MobileAds#setAppVolume")) {
                        c = '\r';
                        break;
                    }
                    break;
                case -436783448:
                    if (str.equals("MobileAds#getVersionString")) {
                        c = 14;
                        break;
                    }
                    break;
                case -172783533:
                    if (str.equals("loadAdManagerBannerAd")) {
                        c = 15;
                        break;
                    }
                    break;
                case 90971631:
                    if (str.equals("_init")) {
                        c = 16;
                        break;
                    }
                    break;
                case 250880674:
                    if (str.equals("disposeAd")) {
                        c = 17;
                        break;
                    }
                    break;
                case 273004986:
                    if (str.equals("getAdSize")) {
                        c = 18;
                        break;
                    }
                    break;
                case 288452133:
                    if (str.equals("MobileAds#updateRequestConfiguration")) {
                        c = 19;
                        break;
                    }
                    break;
                case 316173893:
                    if (str.equals("MobileAds#disableMediationInitialization")) {
                        c = 20;
                        break;
                    }
                    break;
                case 1064076149:
                    if (str.equals("MobileAds#openAdInspector")) {
                        c = 21;
                        break;
                    }
                    break;
                case 1355848557:
                    if (str.equals("showAdWithoutView")) {
                        c = 22;
                        break;
                    }
                    break;
                case 1403601573:
                    if (str.equals("MobileAds#initialize")) {
                        c = 23;
                        break;
                    }
                    break;
                case 1661969852:
                    if (str.equals("setImmersiveMode")) {
                        c = 24;
                        break;
                    }
                    break;
                case 1882741923:
                    if (str.equals("loadRewardedInterstitialAd")) {
                        c = 25;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    this.flutterMobileAds.openDebugMenu(applicationContext, (String) methodCall.argument(HandleInvocationsFromAdViewer.KEY_AD_UNIT_ID));
                    result.success(null);
                    return;
                case 1:
                    FlutterInterstitialAd flutterInterstitialAd = new FlutterInterstitialAd(((Integer) methodCall.argument("adId")).intValue(), this.instanceManager, (String) methodCall.argument(HandleInvocationsFromAdViewer.KEY_AD_UNIT_ID), (FlutterAdRequest) methodCall.argument(AdActivity.REQUEST_KEY_EXTRA), new FlutterAdLoader(applicationContext));
                    this.instanceManager.trackAd(flutterInterstitialAd, ((Integer) methodCall.argument("adId")).intValue());
                    flutterInterstitialAd.load();
                    result.success(null);
                    return;
                case 2:
                    this.flutterMobileAds.setAppMuted(((Boolean) methodCall.argument("muted")).booleanValue());
                    result.success(null);
                    return;
                case 3:
                    FlutterAppOpenAd flutterAppOpenAd = new FlutterAppOpenAd(((Integer) methodCall.argument("adId")).intValue(), (AdInstanceManager) requireNonNull(this.instanceManager), (String) requireNonNull((String) methodCall.argument(HandleInvocationsFromAdViewer.KEY_AD_UNIT_ID)), (FlutterAdRequest) methodCall.argument(AdActivity.REQUEST_KEY_EXTRA), (FlutterAdManagerAdRequest) methodCall.argument("adManagerRequest"), new FlutterAdLoader(applicationContext));
                    this.instanceManager.trackAd(flutterAppOpenAd, ((Integer) methodCall.argument("adId")).intValue());
                    flutterAppOpenAd.load();
                    result.success(null);
                    return;
                case 4:
                    this.flutterMobileAds.registerWebView(((Integer) methodCall.argument("webViewId")).intValue(), this.pluginBinding.getFlutterEngine());
                    result.success(null);
                    return;
                case 5:
                    String str2 = (String) requireNonNull((String) methodCall.argument(HandleInvocationsFromAdViewer.KEY_AD_UNIT_ID));
                    FlutterAdRequest flutterAdRequest = (FlutterAdRequest) methodCall.argument(AdActivity.REQUEST_KEY_EXTRA);
                    FlutterAdManagerAdRequest flutterAdManagerAdRequest = (FlutterAdManagerAdRequest) methodCall.argument("adManagerRequest");
                    if (flutterAdRequest != null) {
                        flutterRewardedAd = new FlutterRewardedAd(((Integer) methodCall.argument("adId")).intValue(), (AdInstanceManager) requireNonNull(this.instanceManager), str2, flutterAdRequest, new FlutterAdLoader(applicationContext));
                    } else if (flutterAdManagerAdRequest != null) {
                        flutterRewardedAd = new FlutterRewardedAd(((Integer) methodCall.argument("adId")).intValue(), (AdInstanceManager) requireNonNull(this.instanceManager), str2, flutterAdManagerAdRequest, new FlutterAdLoader(applicationContext));
                    } else {
                        result.error("InvalidRequest", "A null or invalid ad request was provided.", null);
                        return;
                    }
                    this.instanceManager.trackAd(flutterRewardedAd, ((Integer) requireNonNull((Integer) methodCall.argument("adId"))).intValue());
                    flutterRewardedAd.load();
                    result.success(null);
                    return;
                case 6:
                    result.success(this.flutterMobileAds.getRequestConfiguration());
                    return;
                case 7:
                    FluidAdManagerBannerAd fluidAdManagerBannerAd = new FluidAdManagerBannerAd(((Integer) methodCall.argument("adId")).intValue(), this.instanceManager, (String) methodCall.argument(HandleInvocationsFromAdViewer.KEY_AD_UNIT_ID), (FlutterAdManagerAdRequest) methodCall.argument(AdActivity.REQUEST_KEY_EXTRA), getBannerAdCreator(applicationContext));
                    this.instanceManager.trackAd(fluidAdManagerBannerAd, ((Integer) methodCall.argument("adId")).intValue());
                    fluidAdManagerBannerAd.load();
                    result.success(null);
                    return;
                case '\b':
                    String str3 = (String) methodCall.argument("factoryId");
                    NativeAdFactory nativeAdFactory = this.nativeAdFactories.get(str3);
                    FlutterNativeTemplateStyle flutterNativeTemplateStyle = (FlutterNativeTemplateStyle) methodCall.argument("nativeTemplateStyle");
                    if (nativeAdFactory == null && flutterNativeTemplateStyle == null) {
                        result.error("NativeAdError", String.format("No NativeAdFactory with id: %s or nativeTemplateStyle", str3), null);
                        return;
                    }
                    FlutterNativeAd build = new FlutterNativeAd.Builder(applicationContext).setManager(this.instanceManager).setAdUnitId((String) methodCall.argument(HandleInvocationsFromAdViewer.KEY_AD_UNIT_ID)).setAdFactory(nativeAdFactory).setRequest((FlutterAdRequest) methodCall.argument(AdActivity.REQUEST_KEY_EXTRA)).setAdManagerRequest((FlutterAdManagerAdRequest) methodCall.argument("adManagerRequest")).setCustomOptions((Map) methodCall.argument("customOptions")).setId(((Integer) methodCall.argument("adId")).intValue()).setNativeAdOptions((FlutterNativeAdOptions) methodCall.argument("nativeAdOptions")).setFlutterAdLoader(new FlutterAdLoader(applicationContext)).setNativeTemplateStyle((FlutterNativeTemplateStyle) methodCall.argument("nativeTemplateStyle")).build();
                    this.instanceManager.trackAd(build, ((Integer) methodCall.argument("adId")).intValue());
                    build.load();
                    result.success(null);
                    return;
                case '\t':
                    FlutterAd adForId = this.instanceManager.adForId(((Integer) methodCall.argument("adId")).intValue());
                    FlutterServerSideVerificationOptions flutterServerSideVerificationOptions = (FlutterServerSideVerificationOptions) methodCall.argument("serverSideVerificationOptions");
                    if (adForId != null) {
                        if (adForId instanceof FlutterRewardedAd) {
                            ((FlutterRewardedAd) adForId).setServerSideVerificationOptions(flutterServerSideVerificationOptions);
                        } else if (adForId instanceof FlutterRewardedInterstitialAd) {
                            ((FlutterRewardedInterstitialAd) adForId).setServerSideVerificationOptions(flutterServerSideVerificationOptions);
                        }
                    }
                    result.success(null);
                    return;
                case '\n':
                    FlutterAdSize.AnchoredAdaptiveBannerAdSize anchoredAdaptiveBannerAdSize = new FlutterAdSize.AnchoredAdaptiveBannerAdSize(applicationContext, new FlutterAdSize.AdSizeFactory(), (String) methodCall.argument("orientation"), ((Integer) methodCall.argument("width")).intValue());
                    if (AdSize.INVALID.equals(anchoredAdaptiveBannerAdSize.size)) {
                        result.success(null);
                        return;
                    } else {
                        result.success(Integer.valueOf(anchoredAdaptiveBannerAdSize.height));
                        return;
                    }
                case 11:
                    FlutterAdManagerInterstitialAd flutterAdManagerInterstitialAd = new FlutterAdManagerInterstitialAd(((Integer) methodCall.argument("adId")).intValue(), (AdInstanceManager) requireNonNull(this.instanceManager), (String) requireNonNull((String) methodCall.argument(HandleInvocationsFromAdViewer.KEY_AD_UNIT_ID)), (FlutterAdManagerAdRequest) methodCall.argument(AdActivity.REQUEST_KEY_EXTRA), new FlutterAdLoader(applicationContext));
                    this.instanceManager.trackAd(flutterAdManagerInterstitialAd, ((Integer) requireNonNull((Integer) methodCall.argument("adId"))).intValue());
                    flutterAdManagerInterstitialAd.load();
                    result.success(null);
                    return;
                case '\f':
                    FlutterBannerAd flutterBannerAd = new FlutterBannerAd(((Integer) methodCall.argument("adId")).intValue(), this.instanceManager, (String) methodCall.argument(HandleInvocationsFromAdViewer.KEY_AD_UNIT_ID), (FlutterAdRequest) methodCall.argument(AdActivity.REQUEST_KEY_EXTRA), (FlutterAdSize) methodCall.argument("size"), getBannerAdCreator(applicationContext));
                    this.instanceManager.trackAd(flutterBannerAd, ((Integer) methodCall.argument("adId")).intValue());
                    flutterBannerAd.load();
                    result.success(null);
                    return;
                case '\r':
                    this.flutterMobileAds.setAppVolume(((Double) methodCall.argument("volume")).doubleValue());
                    result.success(null);
                    return;
                case 14:
                    result.success(this.flutterMobileAds.getVersionString());
                    return;
                case 15:
                    FlutterAdManagerBannerAd flutterAdManagerBannerAd = new FlutterAdManagerBannerAd(((Integer) methodCall.argument("adId")).intValue(), this.instanceManager, (String) methodCall.argument(HandleInvocationsFromAdViewer.KEY_AD_UNIT_ID), (List) methodCall.argument("sizes"), (FlutterAdManagerAdRequest) methodCall.argument(AdActivity.REQUEST_KEY_EXTRA), getBannerAdCreator(applicationContext));
                    this.instanceManager.trackAd(flutterAdManagerBannerAd, ((Integer) methodCall.argument("adId")).intValue());
                    flutterAdManagerBannerAd.load();
                    result.success(null);
                    return;
                case 16:
                    this.instanceManager.disposeAllAds();
                    result.success(null);
                    return;
                case 17:
                    this.instanceManager.disposeAd(((Integer) methodCall.argument("adId")).intValue());
                    result.success(null);
                    return;
                case 18:
                    FlutterAd adForId2 = this.instanceManager.adForId(((Integer) methodCall.argument("adId")).intValue());
                    if (adForId2 == null) {
                        result.success(null);
                        return;
                    } else if (adForId2 instanceof FlutterBannerAd) {
                        result.success(((FlutterBannerAd) adForId2).getAdSize());
                        return;
                    } else if (adForId2 instanceof FlutterAdManagerBannerAd) {
                        result.success(((FlutterAdManagerBannerAd) adForId2).getAdSize());
                        return;
                    } else {
                        result.error("unexpected_ad_type", "Unexpected ad type for getAdSize: " + adForId2, null);
                        return;
                    }
                case 19:
                    RequestConfiguration.Builder builder = MobileAds.getRequestConfiguration().toBuilder();
                    String str4 = (String) methodCall.argument("maxAdContentRating");
                    Integer num = (Integer) methodCall.argument("tagForChildDirectedTreatment");
                    Integer num2 = (Integer) methodCall.argument("tagForUnderAgeOfConsent");
                    List<String> list = (List) methodCall.argument("testDeviceIds");
                    if (str4 != null) {
                        builder.setMaxAdContentRating(str4);
                    }
                    if (num != null) {
                        builder.setTagForChildDirectedTreatment(num.intValue());
                    }
                    if (num2 != null) {
                        builder.setTagForUnderAgeOfConsent(num2.intValue());
                    }
                    if (list != null) {
                        builder.setTestDeviceIds(list);
                    }
                    MobileAds.setRequestConfiguration(builder.build());
                    result.success(null);
                    return;
                case 20:
                    this.flutterMobileAds.disableMediationInitialization(applicationContext);
                    result.success(null);
                    return;
                case 21:
                    this.flutterMobileAds.openAdInspector(applicationContext, new OnAdInspectorClosedListener() { // from class: io.flutter.plugins.googlemobileads.GoogleMobileAdsPlugin.1
                        @Override // com.google.android.gms.ads.OnAdInspectorClosedListener
                        public void onAdInspectorClosed(@Nullable AdInspectorError adInspectorError) {
                            if (adInspectorError != null) {
                                result.error(Integer.toString(adInspectorError.getCode()), adInspectorError.getMessage(), adInspectorError.getDomain());
                                return;
                            }
                            result.success(null);
                        }
                    });
                    return;
                case 22:
                    if (!this.instanceManager.showAdWithId(((Integer) methodCall.argument("adId")).intValue())) {
                        result.error("AdShowError", "Ad failed to show.", null);
                        return;
                    } else {
                        result.success(null);
                        return;
                    }
                case 23:
                    this.flutterMobileAds.initialize(applicationContext, new FlutterInitializationListener(result));
                    return;
                case 24:
                    ((FlutterAd.FlutterOverlayAd) this.instanceManager.adForId(((Integer) methodCall.argument("adId")).intValue())).setImmersiveMode(((Boolean) methodCall.argument("immersiveModeEnabled")).booleanValue());
                    result.success(null);
                    return;
                case 25:
                    String str5 = (String) requireNonNull((String) methodCall.argument(HandleInvocationsFromAdViewer.KEY_AD_UNIT_ID));
                    FlutterAdRequest flutterAdRequest2 = (FlutterAdRequest) methodCall.argument(AdActivity.REQUEST_KEY_EXTRA);
                    FlutterAdManagerAdRequest flutterAdManagerAdRequest2 = (FlutterAdManagerAdRequest) methodCall.argument("adManagerRequest");
                    if (flutterAdRequest2 != null) {
                        flutterRewardedInterstitialAd = new FlutterRewardedInterstitialAd(((Integer) methodCall.argument("adId")).intValue(), (AdInstanceManager) requireNonNull(this.instanceManager), str5, flutterAdRequest2, new FlutterAdLoader(applicationContext));
                    } else if (flutterAdManagerAdRequest2 != null) {
                        flutterRewardedInterstitialAd = new FlutterRewardedInterstitialAd(((Integer) methodCall.argument("adId")).intValue(), (AdInstanceManager) requireNonNull(this.instanceManager), str5, flutterAdManagerAdRequest2, new FlutterAdLoader(applicationContext));
                    } else {
                        result.error("InvalidRequest", "A null or invalid ad request was provided.", null);
                        return;
                    }
                    this.instanceManager.trackAd(flutterRewardedInterstitialAd, ((Integer) requireNonNull((Integer) methodCall.argument("adId"))).intValue());
                    flutterRewardedInterstitialAd.load();
                    result.success(null);
                    return;
                default:
                    result.notImplemented();
                    return;
            }
        }
        String str6 = methodCall.method;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(@NonNull ActivityPluginBinding activityPluginBinding) {
        AdInstanceManager adInstanceManager = this.instanceManager;
        if (adInstanceManager != null) {
            adInstanceManager.setActivity(activityPluginBinding.getActivity());
        }
        AdMessageCodec adMessageCodec = this.adMessageCodec;
        if (adMessageCodec != null) {
            adMessageCodec.setContext(activityPluginBinding.getActivity());
        }
        UserMessagingPlatformManager userMessagingPlatformManager = this.userMessagingPlatformManager;
        if (userMessagingPlatformManager != null) {
            userMessagingPlatformManager.setActivity(activityPluginBinding.getActivity());
        }
    }

    private static boolean registerNativeAdFactory(GoogleMobileAdsPlugin googleMobileAdsPlugin, String str, NativeAdFactory nativeAdFactory) {
        if (googleMobileAdsPlugin != null) {
            return googleMobileAdsPlugin.addNativeAdFactory(str, nativeAdFactory);
        }
        throw new IllegalStateException(String.format("Could not find a %s instance. The plugin may have not been registered.", GoogleMobileAdsPlugin.class.getSimpleName()));
    }

    @VisibleForTesting
    public GoogleMobileAdsPlugin(@Nullable FlutterPlugin.FlutterPluginBinding flutterPluginBinding, @Nullable AdInstanceManager adInstanceManager, @NonNull FlutterMobileAdsWrapper flutterMobileAdsWrapper) {
        this.nativeAdFactories = new HashMap();
        this.pluginBinding = flutterPluginBinding;
        this.instanceManager = adInstanceManager;
        this.flutterMobileAds = flutterMobileAdsWrapper;
    }

    @VisibleForTesting
    public GoogleMobileAdsPlugin(@NonNull AppStateNotifier appStateNotifier) {
        this.nativeAdFactories = new HashMap();
        this.appStateNotifier = appStateNotifier;
        this.flutterMobileAds = new FlutterMobileAdsWrapper();
    }
}
