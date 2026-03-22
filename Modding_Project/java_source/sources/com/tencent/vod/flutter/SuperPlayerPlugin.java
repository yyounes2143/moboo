package com.tencent.vod.flutter;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.OrientationEventListener;
import android.view.Window;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.rtmp.TXLiveBase;
import com.tencent.rtmp.TXLiveBaseListener;
import com.tencent.rtmp.TXPlayerGlobalSetting;
import com.tencent.vod.flutter.FTXAudioManager;
import com.tencent.vod.flutter.messages.FtxMessages;
import com.tencent.vod.flutter.messages.Illllllllllllllllllll;
import com.tencent.vod.flutter.messages.Kkkkkkkkkkk;
import com.tencent.vod.flutter.player.FTXBasePlayer;
import com.tencent.vod.flutter.player.FTXLivePlayer;
import com.tencent.vod.flutter.player.FTXVodPlayer;
import com.tencent.vod.flutter.tools.TXCommonUtil;
import com.tencent.vod.flutter.tools.TXFlutterEngineHolder;
import com.tencent.vod.flutter.ui.TXAndroid12BridgeService;
import com.tencent.vod.flutter.ui.render.FTXRenderViewFactory;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.embedding.engine.plugins.activity.ActivityAware;
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding;
import java.io.File;
import java.math.BigDecimal;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SuperPlayerPlugin implements FlutterPlugin, ActivityAware, FtxMessages.TXFlutterSuperPlayerPluginAPI, FtxMessages.TXFlutterNativeAPI, FtxMessages.VoidResult {
    private static final String EXTRA_VOLUME_STREAM_TYPE = "android.media.EXTRA_VOLUME_STREAM_TYPE";
    static final String TAG = "SuperPlayerPlugin";
    private static final String VOLUME_CHANGED_ACTION = "android.media.VOLUME_CHANGED_ACTION";
    private FTXDownloadManager mFTXDownloadManager;
    private FlutterPlugin.FlutterPluginBinding mFlutterPluginBinding;
    private OrientationEventListener mOrientationManager;
    private FtxMessages.TXPluginFlutterAPI mPluginApi;
    private FTXRenderViewFactory mRenderViewFactory;
    private FTXAudioManager mTxAudioManager;
    private FTXPIPManager mTxPipManager;
    private VolumeBroadcastReceiver mVolumeBroadcastReceiver;
    private final SparseArray<FTXBasePlayer> mPlayers = new SparseArray<>();
    private int mCurrentOrientation = 411;
    private boolean mIsBrightnessObserverRegistered = false;
    private final Handler mMainHandler = new Handler(Looper.getMainLooper());
    private final FTXAudioManager.AudioFocusChangeListener audioFocusChangeListener = new FTXAudioManager.AudioFocusChangeListener() { // from class: com.tencent.vod.flutter.SuperPlayerPlugin.1
        @Override // com.tencent.vod.flutter.FTXAudioManager.AudioFocusChangeListener
        public void onAudioFocusPause() {
            SuperPlayerPlugin.this.onHandleAudioFocusPause();
        }

        @Override // com.tencent.vod.flutter.FTXAudioManager.AudioFocusChangeListener
        public void onAudioFocusPlay() {
            SuperPlayerPlugin.this.onHandleAudioFocusPlay();
        }
    };
    private final ContentObserver brightnessObserver = new ContentObserver(new Handler(Looper.getMainLooper())) { // from class: com.tencent.vod.flutter.SuperPlayerPlugin.2
        @Override // android.database.ContentObserver
        public void onChange(boolean z, @NonNull Collection<Uri> collection, int i) {
            super.onChange(z, collection, i);
            SuperPlayerPlugin.this.setWindowBrightness(Double.valueOf(-1.0d));
        }
    };
    private final TXLiveBaseListener mSDKEvent = new TXLiveBaseListener() { // from class: com.tencent.vod.flutter.SuperPlayerPlugin.3
        @Override // com.tencent.rtmp.TXLiveBaseListener
        public void onCustomHttpDNS(String str, List<String> list) {
            super.onCustomHttpDNS(str, list);
        }

        @Override // com.tencent.rtmp.TXLiveBaseListener
        public void onLicenceLoaded(final int i, final String str) {
            super.onLicenceLoaded(i, str);
            LiteavLog.v(SuperPlayerPlugin.TAG, "onLicenceLoaded,result:" + i + ",reason:" + str);
            SuperPlayerPlugin.this.mMainHandler.post(new Runnable() { // from class: com.tencent.vod.flutter.SuperPlayerPlugin.3.1
                @Override // java.lang.Runnable
                public void run() {
                    Bundle bundle = new Bundle();
                    bundle.putInt("result", i);
                    bundle.putString("reason", str);
                    SuperPlayerPlugin.this.mPluginApi.onSDKListener(SuperPlayerPlugin.getParams(503, bundle), SuperPlayerPlugin.this);
                }
            });
        }

        @Override // com.tencent.rtmp.TXLiveBaseListener
        public void onLog(int i, String str, String str2) {
            super.onLog(i, str, str2);
        }

        @Override // com.tencent.rtmp.TXLiveBaseListener
        public void onUpdateNetworkTime(int i, String str) {
            super.onUpdateNetworkTime(i, str);
        }
    };

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class VolumeBroadcastReceiver extends BroadcastReceiver implements FtxMessages.VoidResult {
        private final FtxMessages.TXPluginFlutterAPI mPluginApi;

        @Override // com.tencent.vod.flutter.messages.FtxMessages.VoidResult
        public void error(@NonNull Throwable th) {
            LiteavLog.e(SuperPlayerPlugin.TAG, "callback message error:" + th);
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            PushAutoTrackHelper.onBroadcastReceiver(this, context, intent);
            if (SuperPlayerPlugin.VOLUME_CHANGED_ACTION.equals(intent.getAction()) && intent.getIntExtra(SuperPlayerPlugin.EXTRA_VOLUME_STREAM_TYPE, -1) == 3) {
                this.mPluginApi.onNativeEvent(SuperPlayerPlugin.getParams(1, null), this);
            }
        }

        private VolumeBroadcastReceiver(FtxMessages.TXPluginFlutterAPI tXPluginFlutterAPI) {
            this.mPluginApi = tXPluginFlutterAPI;
        }

        @Override // com.tencent.vod.flutter.messages.FtxMessages.VoidResult
        public void success() {
        }
    }

    private FTXAudioManager getAudioManager() {
        if (this.mTxAudioManager == null) {
            FTXAudioManager fTXAudioManager = new FTXAudioManager(this.mFlutterPluginBinding.getApplicationContext());
            this.mTxAudioManager = fTXAudioManager;
            fTXAudioManager.addAudioFocusChangedListener(this.audioFocusChangeListener);
        }
        return this.mTxAudioManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getOrientationEvent(int i) {
        int i2 = this.mCurrentOrientation;
        if ((i >= 0 && i < 30) || i > 330) {
            return 411;
        }
        if (i > 240 && i < 300) {
            return 412;
        }
        if (i > 150 && i < 210) {
            return 413;
        }
        if (i > 60 && i < 110) {
            return 414;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Map<String, Object> getParams(int i, Bundle bundle) {
        HashMap hashMap = new HashMap();
        if (i != 0) {
            hashMap.put("event", Integer.valueOf(i));
        }
        if (bundle != null && !bundle.isEmpty()) {
            for (String str : bundle.keySet()) {
                hashMap.put(str, bundle.get(str));
            }
        }
        return hashMap;
    }

    private FTXPIPManager getPipManager() {
        if (this.mTxPipManager == null) {
            this.mTxPipManager = new FTXPIPManager(this.mFlutterPluginBinding);
        }
        return this.mTxPipManager;
    }

    private float getSystemScreenBrightness() {
        try {
            return Settings.System.getInt(this.mFlutterPluginBinding.getApplicationContext().getContentResolver(), "screen_brightness") / TXCommonUtil.getBrightnessMax();
        } catch (Settings.SettingNotFoundException e) {
            e.printStackTrace();
            return -1.0f;
        }
    }

    private float getWindowBrightness() {
        float f = TXFlutterEngineHolder.getInstance().getCurActivity().getWindow().getAttributes().screenBrightness;
        if (f < 0.0f) {
            f = getSystemScreenBrightness();
        }
        return new BigDecimal(f).setScale(2, 4).floatValue();
    }

    private boolean innerStartVideoOrientationService() {
        if (this.mFlutterPluginBinding == null) {
            return false;
        }
        if (this.mOrientationManager == null) {
            try {
                OrientationEventListener orientationEventListener = new OrientationEventListener(this.mFlutterPluginBinding.getApplicationContext()) { // from class: com.tencent.vod.flutter.SuperPlayerPlugin.4
                    @Override // android.view.OrientationEventListener
                    public void onOrientationChanged(int i) {
                        if (SuperPlayerPlugin.this.isDeviceAutoRotateOn()) {
                            LiteavLog.v(SuperPlayerPlugin.TAG, "onOrientationChanged:" + i);
                            int orientationEvent = SuperPlayerPlugin.this.getOrientationEvent(i);
                            if (orientationEvent != SuperPlayerPlugin.this.mCurrentOrientation) {
                                LiteavLog.v(SuperPlayerPlugin.TAG, "orientationEvent changed:" + orientationEvent);
                                SuperPlayerPlugin.this.mCurrentOrientation = orientationEvent;
                                Bundle bundle = new Bundle();
                                bundle.putInt("orientation", orientationEvent);
                                SuperPlayerPlugin.this.mPluginApi.onNativeEvent(SuperPlayerPlugin.getParams(401, bundle), SuperPlayerPlugin.this);
                            }
                        }
                    }
                };
                this.mOrientationManager = orientationEventListener;
                orientationEventListener.enable();
                return true;
            } catch (Exception e) {
                LiteavLog.e(TAG, "innerStartVideoOrientationService error", e);
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setWindowBrightness(Double d) {
        Window window;
        if (d != null) {
            LiteavLog.v(TAG, "setWindowBrightness:" + d);
            Double valueOf = Double.valueOf(new BigDecimal(d.doubleValue()).setScale(2, 4).doubleValue());
            Activity curActivity = TXFlutterEngineHolder.getInstance().getCurActivity();
            if (curActivity != null && !curActivity.isDestroyed() && (window = curActivity.getWindow()) != null) {
                WindowManager.LayoutParams attributes = window.getAttributes();
                float parseFloat = Float.parseFloat(String.valueOf(valueOf));
                attributes.screenBrightness = parseFloat;
                if (parseFloat > 1.0f) {
                    attributes.screenBrightness = 1.0f;
                }
                float f = attributes.screenBrightness;
                if (f != -1.0f && f < 0.0f) {
                    attributes.screenBrightness = 0.01f;
                }
                window.setAttributes(attributes);
                this.mPluginApi.onNativeEvent(getParams(4, null), this);
            }
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterNativeAPI
    public void abandonAudioFocus() {
        getAudioManager().abandonAudioFocus();
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterSuperPlayerPluginAPI
    @NonNull
    public FtxMessages.PlayerMsg createLivePlayer(@NonNull Boolean bool) {
        FTXLivePlayer fTXLivePlayer = new FTXLivePlayer(this.mFlutterPluginBinding, getPipManager(), this.mRenderViewFactory, bool.booleanValue());
        int playerId = fTXLivePlayer.getPlayerId();
        this.mPlayers.append(playerId, fTXLivePlayer);
        FtxMessages.PlayerMsg playerMsg = new FtxMessages.PlayerMsg();
        playerMsg.setPlayerId(Long.valueOf(playerId));
        LiteavLog.i(TAG, "createLivePlayer :" + playerId);
        return playerMsg;
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterSuperPlayerPluginAPI
    @NonNull
    public FtxMessages.PlayerMsg createVodPlayer(@NonNull Boolean bool) {
        FTXVodPlayer fTXVodPlayer = new FTXVodPlayer(this.mFlutterPluginBinding, getPipManager(), this.mRenderViewFactory, bool.booleanValue());
        int playerId = fTXVodPlayer.getPlayerId();
        this.mPlayers.append(playerId, fTXVodPlayer);
        FtxMessages.PlayerMsg playerMsg = new FtxMessages.PlayerMsg();
        playerMsg.setPlayerId(Long.valueOf(playerId));
        LiteavLog.i(TAG, "createVodPlayer :" + playerId);
        return playerMsg;
    }

    public void enableBrightnessObserver(boolean z) {
        FlutterPlugin.FlutterPluginBinding flutterPluginBinding = this.mFlutterPluginBinding;
        if (flutterPluginBinding != null) {
            if (z) {
                if (!this.mIsBrightnessObserverRegistered) {
                    flutterPluginBinding.getApplicationContext().getContentResolver().registerContentObserver(Settings.System.getUriFor("screen_brightness"), true, this.brightnessObserver);
                    this.mIsBrightnessObserverRegistered = true;
                    return;
                }
                return;
            }
            flutterPluginBinding.getApplicationContext().getContentResolver().unregisterContentObserver(this.brightnessObserver);
            this.mIsBrightnessObserverRegistered = false;
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.VoidResult
    public void error(@NonNull Throwable th) {
        LiteavLog.e(TAG, "callback message error:" + th);
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterNativeAPI
    @NonNull
    public FtxMessages.DoubleMsg getBrightness() {
        BigDecimal valueOf = BigDecimal.valueOf(getWindowBrightness());
        FtxMessages.DoubleMsg doubleMsg = new FtxMessages.DoubleMsg();
        doubleMsg.setValue(Double.valueOf(valueOf.doubleValue()));
        return doubleMsg;
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterSuperPlayerPluginAPI
    @NonNull
    public FtxMessages.BoolMsg getIOSSupportPIP() {
        FtxMessages.BoolMsg boolMsg = new FtxMessages.BoolMsg();
        boolMsg.setValue(Boolean.FALSE);
        return boolMsg;
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterSuperPlayerPluginAPI
    @NonNull
    public FtxMessages.StringMsg getLiteAVSDKVersion() {
        FtxMessages.StringMsg stringMsg = new FtxMessages.StringMsg();
        stringMsg.setValue(TXLiveBase.getSDKVersionStr());
        return stringMsg;
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterSuperPlayerPluginAPI
    @NonNull
    public FtxMessages.StringMsg getPlatformVersion() {
        FtxMessages.StringMsg stringMsg = new FtxMessages.StringMsg();
        stringMsg.setValue("Android " + Build.VERSION.RELEASE);
        return stringMsg;
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterNativeAPI
    @NonNull
    public FtxMessages.DoubleMsg getSysBrightness() {
        BigDecimal valueOf = BigDecimal.valueOf(getSystemScreenBrightness());
        FtxMessages.DoubleMsg doubleMsg = new FtxMessages.DoubleMsg();
        doubleMsg.setValue(Double.valueOf(valueOf.doubleValue()));
        return doubleMsg;
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterNativeAPI
    @NonNull
    public FtxMessages.DoubleMsg getSystemVolume() {
        BigDecimal valueOf = BigDecimal.valueOf(getAudioManager().getSystemCurrentVolume());
        FtxMessages.DoubleMsg doubleMsg = new FtxMessages.DoubleMsg();
        doubleMsg.setValue(Double.valueOf(valueOf.doubleValue()));
        return doubleMsg;
    }

    public boolean isDeviceAutoRotateOn() {
        try {
            if (Settings.System.getInt(this.mFlutterPluginBinding.getApplicationContext().getContentResolver(), "accelerometer_rotation", 0) != 1) {
                return false;
            }
            return true;
        } catch (Exception e) {
            LiteavLog.e(TAG, "isDeviceAutoRotateOn error", e);
            return false;
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterNativeAPI
    @NonNull
    public FtxMessages.IntMsg isDeviceSupportPip() {
        FtxMessages.IntMsg intMsg = new FtxMessages.IntMsg();
        intMsg.setValue(Long.valueOf(getPipManager().isSupportDevice()));
        return intMsg;
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onAttachedToActivity(@NonNull ActivityPluginBinding activityPluginBinding) {
        LiteavLog.v(TAG, "called onAttachedToActivity");
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(@NonNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        LiteavLog.i(TAG, "onAttachedToEngine");
        this.mRenderViewFactory = new FTXRenderViewFactory(flutterPluginBinding.getBinaryMessenger());
        flutterPluginBinding.getPlatformViewRegistry().registerViewFactory(FTXEvent.FTX_RENDER_VIEW, this.mRenderViewFactory);
        LiteavLog.i(TAG, "plugin version is:12.6.2");
        Illllllllllllllllllll.Wwwwwwwwwwwwwwww(flutterPluginBinding.getBinaryMessenger(), this);
        Kkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwww(flutterPluginBinding.getBinaryMessenger(), this);
        this.mPluginApi = new FtxMessages.TXPluginFlutterAPI(flutterPluginBinding.getBinaryMessenger());
        this.mFlutterPluginBinding = flutterPluginBinding;
        TXFlutterEngineHolder.getInstance().attachBindLife(flutterPluginBinding);
        this.mFTXDownloadManager = new FTXDownloadManager(this.mFlutterPluginBinding);
        registerReceiver();
        TXLiveBase.setListener(this.mSDKEvent);
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivity() {
        LiteavLog.v(TAG, "called onDetachedFromActivity");
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(@NonNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        LiteavLog.i(TAG, "onDetachedFromEngine");
        this.mFTXDownloadManager.destroy();
        OrientationEventListener orientationEventListener = this.mOrientationManager;
        if (orientationEventListener != null) {
            orientationEventListener.disable();
        }
        FTXPIPManager fTXPIPManager = this.mTxPipManager;
        if (fTXPIPManager != null) {
            fTXPIPManager.releaseActivityListener();
            this.mTxPipManager.exitCurrentPip();
        }
        flutterPluginBinding.getApplicationContext().stopService(new Intent(flutterPluginBinding.getApplicationContext(), TXAndroid12BridgeService.class));
        unregisterReceiver();
        TXFlutterEngineHolder.getInstance().destroy(flutterPluginBinding);
        TXLiveBase.setListener(null);
        this.mFlutterPluginBinding = null;
    }

    public void onHandleAudioFocusPause() {
        this.mPluginApi.onNativeEvent(getParams(2, null), this);
    }

    public void onHandleAudioFocusPlay() {
        this.mPluginApi.onNativeEvent(getParams(3, null), this);
    }

    @SuppressLint({"WrongConstant"})
    public void registerReceiver() {
        this.mVolumeBroadcastReceiver = new VolumeBroadcastReceiver(this.mPluginApi);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(VOLUME_CHANGED_ACTION);
        ContextCompat.registerReceiver(this.mFlutterPluginBinding.getApplicationContext(), this.mVolumeBroadcastReceiver, intentFilter, 4);
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterNativeAPI
    public void registerSysBrightness(@NonNull FtxMessages.BoolMsg boolMsg) {
        if (boolMsg.getValue() != null) {
            enableBrightnessObserver(boolMsg.getValue().booleanValue());
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterSuperPlayerPluginAPI
    public void releasePlayer(@NonNull FtxMessages.PlayerMsg playerMsg) {
        if (playerMsg.getPlayerId() != null) {
            int intValue = playerMsg.getPlayerId().intValue();
            LiteavLog.i(TAG, "releasePlayer :" + intValue);
            FTXBasePlayer fTXBasePlayer = this.mPlayers.get(intValue);
            if (fTXBasePlayer != null) {
                LiteavLog.i(TAG, "releasePlayer start destroy player :" + intValue);
                fTXBasePlayer.destroy();
                this.mPlayers.remove(intValue);
            }
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterNativeAPI
    public void requestAudioFocus() {
        getAudioManager().requestAudioFocus();
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterNativeAPI
    public void restorePageBrightness() {
        setWindowBrightness(Double.valueOf(-1.0d));
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterNativeAPI
    public void setBrightness(@NonNull FtxMessages.DoubleMsg doubleMsg) {
        setWindowBrightness(doubleMsg.getValue());
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterSuperPlayerPluginAPI
    public void setConsoleEnabled(@NonNull FtxMessages.BoolMsg boolMsg) {
        if (boolMsg.getValue() != null) {
            TXLiveBase.setConsoleEnabled(boolMsg.getValue().booleanValue());
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterSuperPlayerPluginAPI
    public void setDrmProvisionEnv(@NonNull Long l) {
        if (l.longValue() == 1) {
            TXPlayerGlobalSetting.setDrmProvisionEnv(TXPlayerGlobalSetting.DrmProvisionEnv.DRM_PROVISION_ENV_CN);
        } else {
            TXPlayerGlobalSetting.setDrmProvisionEnv(TXPlayerGlobalSetting.DrmProvisionEnv.DRM_PROVISION_ENV_COM);
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterSuperPlayerPluginAPI
    @NonNull
    public FtxMessages.BoolMsg setGlobalCacheFolderCustomPath(@NonNull FtxMessages.CachePathMsg cachePathMsg) {
        boolean z;
        String androidAbsolutePath = cachePathMsg.getAndroidAbsolutePath();
        if (!TextUtils.isEmpty(androidAbsolutePath)) {
            LiteavLog.v(TAG, "setGlobalCacheFolderCustomPath:" + androidAbsolutePath);
            TXPlayerGlobalSetting.setCacheFolderPath(androidAbsolutePath);
            z = true;
        } else {
            z = false;
        }
        FtxMessages.BoolMsg boolMsg = new FtxMessages.BoolMsg();
        boolMsg.setValue(Boolean.valueOf(z));
        return boolMsg;
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterSuperPlayerPluginAPI
    @NonNull
    public FtxMessages.BoolMsg setGlobalCacheFolderPath(@NonNull FtxMessages.StringMsg stringMsg) {
        boolean z;
        File externalFilesDir;
        if (!TextUtils.isEmpty(stringMsg.getValue()) && (externalFilesDir = this.mFlutterPluginBinding.getApplicationContext().getExternalFilesDir(null)) != null) {
            LiteavLog.v(TAG, "setGlobalCacheFolderPath:" + stringMsg.getValue());
            TXPlayerGlobalSetting.setCacheFolderPath(externalFilesDir.getPath() + File.separator + stringMsg.getValue());
            z = true;
        } else {
            z = false;
        }
        FtxMessages.BoolMsg boolMsg = new FtxMessages.BoolMsg();
        boolMsg.setValue(Boolean.valueOf(z));
        return boolMsg;
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterSuperPlayerPluginAPI
    @NonNull
    public FtxMessages.IntMsg setGlobalEnv(@NonNull FtxMessages.StringMsg stringMsg) {
        int globalEnv = TXLiveBase.setGlobalEnv(stringMsg.getValue());
        FtxMessages.IntMsg intMsg = new FtxMessages.IntMsg();
        intMsg.setValue(Long.valueOf(globalEnv));
        return intMsg;
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterSuperPlayerPluginAPI
    public void setGlobalLicense(@NonNull FtxMessages.LicenseMsg licenseMsg) {
        TXLiveBase.getInstance().setLicence(this.mFlutterPluginBinding.getApplicationContext(), licenseMsg.getLicenseUrl(), licenseMsg.getLicenseKey());
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterSuperPlayerPluginAPI
    public void setGlobalMaxCacheSize(@NonNull FtxMessages.IntMsg intMsg) {
        if (intMsg.getValue() != null && intMsg.getValue().longValue() > 0) {
            TXPlayerGlobalSetting.setMaxCacheSize(intMsg.getValue().intValue());
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterSuperPlayerPluginAPI
    public void setLicenseFlexibleValid(@NonNull FtxMessages.BoolMsg boolMsg) {
        if (boolMsg.getValue() != null) {
            TXPlayerGlobalSetting.setLicenseFlexibleValid(boolMsg.getValue().booleanValue());
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterSuperPlayerPluginAPI
    public void setLogLevel(@NonNull FtxMessages.IntMsg intMsg) {
        if (intMsg.getValue() != null) {
            TXLiveBase.setLogLevel(intMsg.getValue().intValue());
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterNativeAPI
    public void setSystemVolume(@NonNull FtxMessages.DoubleMsg doubleMsg) {
        getAudioManager().setSystemVolume(doubleMsg.getValue());
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterSuperPlayerPluginAPI
    public void setUserId(@NonNull FtxMessages.StringMsg stringMsg) {
        TXLiveBase.setUserId(stringMsg.getValue());
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.TXFlutterSuperPlayerPluginAPI
    @NonNull
    public FtxMessages.BoolMsg startVideoOrientationService() {
        boolean innerStartVideoOrientationService = innerStartVideoOrientationService();
        FtxMessages.BoolMsg boolMsg = new FtxMessages.BoolMsg();
        boolMsg.setValue(Boolean.valueOf(innerStartVideoOrientationService));
        return boolMsg;
    }

    public void unregisterReceiver() {
        try {
            getAudioManager().removeAudioFocusChangedListener(this.audioFocusChangeListener);
            this.mFlutterPluginBinding.getApplicationContext().unregisterReceiver(this.mVolumeBroadcastReceiver);
            enableBrightnessObserver(false);
        } catch (Exception e) {
            LiteavLog.e(TAG, "unregisterReceiver failed", e);
        }
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onDetachedFromActivityForConfigChanges() {
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.VoidResult
    public void success() {
    }

    @Override // io.flutter.embedding.engine.plugins.activity.ActivityAware
    public void onReattachedToActivityForConfigChanges(@NonNull ActivityPluginBinding activityPluginBinding) {
    }
}
