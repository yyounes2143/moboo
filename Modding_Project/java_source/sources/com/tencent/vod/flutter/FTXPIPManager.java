package com.tencent.vod.flutter;

import android.app.Activity;
import android.app.AppOpsManager;
import android.app.PendingIntent;
import android.app.PictureInPictureParams;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import android.text.TextUtils;
import android.util.Rational;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.changdu.mobovideo.plugins.Wwwwwwwwwwwwwwwwwwwwwww;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.vod.flutter.messages.FtxMessages;
import com.tencent.vod.flutter.model.TXPipResult;
import com.tencent.vod.flutter.model.TXPlayerHolder;
import com.tencent.vod.flutter.tools.TXCommonUtil;
import com.tencent.vod.flutter.tools.TXFlutterEngineHolder;
import com.tencent.vod.flutter.tools.TXSimpleEventBus;
import com.tencent.vod.flutter.ui.FlutterPipImplActivity;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class FTXPIPManager implements TXSimpleEventBus.EventSubscriber, FtxMessages.VoidResult {
    private static final String TAG = "FTXPIPManager";
    private final FlutterPlugin.FlutterAssets mFlutterAssets;
    private final FlutterPlugin.FlutterPluginBinding mFlutterPluginBinding;
    private final FtxMessages.TXPipFlutterAPI mPipApi;
    private boolean misInit = false;
    private final Map<Integer, PipCallback> pipCallbacks = new HashMap();
    private boolean mIsInPipMode = false;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface PipCallback {
        void onPipPlayerEvent(int i, Bundle bundle);

        void onPipResult(TXPipResult tXPipResult);
    }

    public FTXPIPManager(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.mFlutterAssets = flutterPluginBinding.getFlutterAssets();
        this.mFlutterPluginBinding = flutterPluginBinding;
        this.mPipApi = new FtxMessages.TXPipFlutterAPI(flutterPluginBinding.getBinaryMessenger());
        registerActivityListener();
    }

    private void handlePipResult(TXPipResult tXPipResult) {
        PipCallback pipCallback = this.pipCallbacks.get(Integer.valueOf(tXPipResult.getPlayerId()));
        if (pipCallback != null) {
            pipCallback.onPipResult(tXPipResult);
        }
    }

    private void handlePlayerEvent(int i, int i2, Bundle bundle) {
        PipCallback pipCallback = this.pipCallbacks.get(Integer.valueOf(i));
        if (pipCallback != null) {
            pipCallback.onPipPlayerEvent(i2, bundle);
        }
    }

    private boolean hasPipPermission(Activity activity) {
        AppOpsManager appOpsManager = (AppOpsManager) activity.getSystemService("appops");
        if (Build.VERSION.SDK_INT < 26 || appOpsManager.checkOpNoThrow("android:picture_in_picture", Process.myUid(), activity.getPackageName()) == 0) {
            return true;
        }
        return false;
    }

    public void addCallback(Integer num, PipCallback pipCallback) {
        if (!this.pipCallbacks.containsValue(pipCallback)) {
            this.pipCallbacks.put(num, pipCallback);
        }
    }

    public int enterPip(PipParams pipParams, TXPlayerHolder tXPlayerHolder) {
        int isSupportDevice = isSupportDevice();
        if (isSupportDevice == 0) {
            int startPip = FlutterPipImplActivity.startPip(TXFlutterEngineHolder.getInstance().getCurActivity(), pipParams, tXPlayerHolder);
            if (startPip == 0) {
                this.mPipApi.onPipEvent(TXCommonUtil.getParams(3, null), this);
            }
            this.mIsInPipMode = true;
            return startPip;
        }
        return isSupportDevice;
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.VoidResult
    public void error(@NonNull Throwable th) {
        LiteavLog.e(TAG, "callback message error:" + th);
    }

    public void exitCurrentPip() {
        exitPipByPlayerId(-1);
    }

    public void exitPipByPlayerId(int i) {
        if (isInPipMode()) {
            Bundle bundle = new Bundle();
            bundle.putInt(FTXEvent.EXTRA_NAME_PLAYER_ID, i);
            TXSimpleEventBus.getInstance().post(FTXEvent.PIP_ACTION_EXIT, bundle);
        }
    }

    public boolean isInPipMode() {
        return this.mIsInPipMode;
    }

    public int isSupportDevice() {
        Activity curActivity = TXFlutterEngineHolder.getInstance().getCurActivity();
        if (curActivity != null) {
            if (!curActivity.isDestroyed()) {
                int i = Build.VERSION.SDK_INT;
                if (i >= 24) {
                    if (!curActivity.getPackageManager().hasSystemFeature("android.software.picture_in_picture")) {
                        LiteavLog.e(TAG, "enterPip failed,because PIP feature is disabled");
                        return -104;
                    } else if (!hasPipPermission(curActivity)) {
                        LiteavLog.e(TAG, "enterPip failed,because PIP has no permission");
                        return -102;
                    } else {
                        return 0;
                    }
                }
                LiteavLog.e(TAG, "enterPip failed,because android version is too low,Minimum supported version is android 24,but current is " + i);
                return FTXEvent.ERROR_PIP_LOWER_VERSION;
            }
            LiteavLog.e(TAG, "enterPip failed,because activity is destroyed");
            return -103;
        }
        LiteavLog.e(TAG, "current activity is null, please check cur act status!");
        return -103;
    }

    public void notifyCurrentPipPlayerPlayState(int i, boolean z) {
        int i2;
        Bundle bundle = new Bundle();
        bundle.putInt(FTXEvent.EXTRA_NAME_PLAYER_ID, i);
        bundle.putInt(FTXEvent.EXTRA_NAME_PLAY_OP, 102);
        if (z) {
            i2 = 1;
        } else {
            i2 = 2;
        }
        bundle.putInt(FTXEvent.EXTRA_NAME_IS_PLAYING, i2);
        this.mFlutterPluginBinding.getApplicationContext().sendBroadcast(new Intent(FTXEvent.ACTION_PIP_PLAY_CONTROL).putExtras(bundle));
    }

    @Override // com.tencent.vod.flutter.tools.TXSimpleEventBus.EventSubscriber
    public void onEvent(String str, Object obj) {
        if (TextUtils.equals(str, FTXEvent.EVENT_PIP_ACTION)) {
            Bundle bundle = (Bundle) obj;
            int i = bundle.getInt(FTXEvent.EVENT_PIP_MODE_NAME, -1);
            Bundle bundle2 = new Bundle();
            if (i == 2 || i == 5) {
                TXPipResult tXPipResult = (TXPipResult) bundle.getParcelable(FTXEvent.EXTRA_NAME_RESULT);
                if (tXPipResult != null) {
                    bundle2.putFloat(FTXEvent.EVENT_PIP_PLAY_TIME, tXPipResult.getPlayTime().floatValue());
                    handlePipResult(tXPipResult);
                }
                this.mIsInPipMode = false;
            }
            this.mPipApi.onPipEvent(TXCommonUtil.getParams(i, bundle2), this);
        } else if (TextUtils.equals(str, FTXEvent.EVENT_PIP_PLAYER_EVENT_ACTION)) {
            Bundle bundle3 = (Bundle) obj;
            handlePlayerEvent(bundle3.getInt(FTXEvent.EXTRA_NAME_PLAYER_ID, -1), bundle3.getInt(FTXEvent.EXTRA_NAME_PIP_PLAYER_EVENT_ID, -1), bundle3.getBundle(FTXEvent.EXTRA_NAME_PIP_PLAYER_EVENT_PARAMS));
        }
    }

    public void registerActivityListener() {
        if (!this.misInit) {
            TXSimpleEventBus.getInstance().register(FTXEvent.EVENT_PIP_ACTION, this);
            TXSimpleEventBus.getInstance().register(FTXEvent.EVENT_PIP_PLAYER_EVENT_ACTION, this);
            this.misInit = true;
        }
    }

    public void releaseActivityListener() {
        try {
            if (this.misInit) {
                TXSimpleEventBus.getInstance().unregister(FTXEvent.EVENT_PIP_ACTION, this);
                TXSimpleEventBus.getInstance().unregister(FTXEvent.EVENT_PIP_PLAYER_EVENT_ACTION, this);
                this.misInit = false;
            }
        } catch (Exception e) {
            LiteavLog.e(TAG, "releaseActivityListener error", e);
        }
    }

    public void releaseCallback(int i) {
        this.pipCallbacks.remove(Integer.valueOf(i));
    }

    public String toAndroidPath(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        return this.mFlutterAssets.getAssetFilePathByName(str);
    }

    public void updatePipActions(PipParams pipParams) {
        if (isInPipMode()) {
            Bundle bundle = new Bundle();
            bundle.putParcelable(FTXEvent.EXTRA_NAME_PARAMS, pipParams);
            TXSimpleEventBus.getInstance().post(FTXEvent.PIP_ACTION_UPDATE, bundle);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class PipParams implements Parcelable {
        public static final Parcelable.Creator<PipParams> CREATOR = new Parcelable.Creator<PipParams>() { // from class: com.tencent.vod.flutter.FTXPIPManager.PipParams.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public PipParams createFromParcel(Parcel parcel) {
                return new PipParams(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public PipParams[] newArray(int i) {
                return new PipParams[i];
            }
        };
        private final AtomicInteger mActionIdGenerator;
        private float mCurrentPlayTime;
        private final int mCurrentPlayerId;
        private final boolean mIsNeedPlayBack;
        private final boolean mIsNeedPlayControl;
        private final boolean mIsNeedPlayForward;
        private boolean mIsPlaying;
        private final String mPlayBackAssetPath;
        private final String mPlayForwardAssetPath;
        private final String mPlayPauseAssetPath;
        private final String mPlayResumeAssetPath;
        private int mViewHeight;
        private int mViewWith;

        /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
        public PipParams(String str, String str2, String str3, String str4, int i) {
            this(str, str2, str3, str4, i, !TXCommonUtil.isBlankStr(str), !TXCommonUtil.isBlankStr(str4), (TXCommonUtil.isBlankStr(str2) || TXCommonUtil.isBlankStr(str3)) ? false : false);
            boolean z = true;
        }

        @RequiresApi(api = 23)
        private Icon getBackIcon(Activity activity) {
            return getIcon(activity, this.mPlayBackAssetPath, 17301541);
        }

        @RequiresApi(api = 23)
        private Icon getForwardIcon(Activity activity) {
            return getIcon(activity, this.mPlayForwardAssetPath, 17301538);
        }

        @RequiresApi(api = 23)
        private Icon getIcon(Activity activity, String str, int i) {
            try {
                if (!TextUtils.isEmpty(str)) {
                    return Icon.createWithBitmap(BitmapFactory.decodeStream(activity.getAssets().open(str)));
                }
            } catch (IOException e) {
                LiteavLog.e(FTXPIPManager.TAG, "getIcon error", e);
            }
            return Icon.createWithResource(activity, i);
        }

        @RequiresApi(api = 23)
        private Icon getPauseIcon(Activity activity) {
            return getIcon(activity, this.mPlayPauseAssetPath, 17301539);
        }

        @RequiresApi(api = 23)
        private Icon getPlayIcon(Activity activity) {
            return getIcon(activity, this.mPlayResumeAssetPath, 17301540);
        }

        @RequiresApi(api = 26)
        public PictureInPictureParams buildParams(Activity activity) {
            PictureInPictureParams build;
            Icon playIcon;
            ArrayList arrayList = new ArrayList();
            if (this.mIsNeedPlayBack) {
                Bundle bundle = new Bundle();
                bundle.putInt(FTXEvent.EXTRA_NAME_PLAY_OP, 101);
                bundle.putInt(FTXEvent.EXTRA_NAME_PLAYER_ID, this.mCurrentPlayerId);
                Intent intent = new Intent(FTXEvent.ACTION_PIP_PLAY_CONTROL).putExtras(bundle).setPackage(activity.getPackageName());
                PushAutoTrackHelper.hookIntentGetBroadcast(activity, 101, intent, 167772160);
                PendingIntent broadcast = PendingIntent.getBroadcast(activity, 101, intent, 167772160);
                PushAutoTrackHelper.hookPendingIntentGetBroadcast(broadcast, activity, 101, intent, 167772160);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                arrayList.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(getBackIcon(activity), "skipPre", "skip pre", broadcast));
            }
            if (this.mIsNeedPlayControl) {
                Bundle bundle2 = new Bundle();
                bundle2.putInt(FTXEvent.EXTRA_NAME_PLAYER_ID, this.mCurrentPlayerId);
                bundle2.putInt(FTXEvent.EXTRA_NAME_PLAY_OP, 102);
                Intent intent2 = new Intent(FTXEvent.ACTION_PIP_PLAY_CONTROL).putExtras(bundle2).setPackage(activity.getPackageName());
                if (this.mIsPlaying) {
                    playIcon = getPauseIcon(activity);
                } else {
                    playIcon = getPlayIcon(activity);
                }
                int incrementAndGet = this.mActionIdGenerator.incrementAndGet();
                PushAutoTrackHelper.hookIntentGetBroadcast(activity, incrementAndGet, intent2, 167772160);
                PendingIntent broadcast2 = PendingIntent.getBroadcast(activity, incrementAndGet, intent2, 167772160);
                PushAutoTrackHelper.hookPendingIntentGetBroadcast(broadcast2, activity, incrementAndGet, intent2, 167772160);
                arrayList.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(playIcon, "playOrPause", "play Or Pause", broadcast2));
            }
            if (this.mIsNeedPlayForward) {
                Bundle bundle3 = new Bundle();
                bundle3.putInt(FTXEvent.EXTRA_NAME_PLAY_OP, 103);
                bundle3.putInt(FTXEvent.EXTRA_NAME_PLAYER_ID, this.mCurrentPlayerId);
                Intent intent3 = new Intent(FTXEvent.ACTION_PIP_PLAY_CONTROL).putExtras(bundle3).setPackage(activity.getPackageName());
                PushAutoTrackHelper.hookIntentGetBroadcast(activity, 103, intent3, 167772160);
                PendingIntent broadcast3 = PendingIntent.getBroadcast(activity, 103, intent3, 167772160);
                PushAutoTrackHelper.hookPendingIntentGetBroadcast(broadcast3, activity, 103, intent3, 167772160);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                arrayList.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(getForwardIcon(activity), "skipNext", "skip next", broadcast3));
            }
            PictureInPictureParams.Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.setActions(arrayList);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.setAspectRatio(new Rational(this.mViewWith, this.mViewHeight));
            if (Build.VERSION.SDK_INT >= 31) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.setAutoEnterEnabled(false);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.setSeamlessResizeEnabled(false);
            }
            build = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.build();
            return build;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public int geiRadioWith() {
            return this.mViewWith;
        }

        public float getCurrentPlayTime() {
            return this.mCurrentPlayTime;
        }

        public int getCurrentPlayerId() {
            return this.mCurrentPlayerId;
        }

        public int getRadioHeight() {
            return this.mViewHeight;
        }

        public boolean isPlaying() {
            return this.mIsPlaying;
        }

        public void setCurrentPlayTime(float f) {
            this.mCurrentPlayTime = f;
        }

        public void setIsPlaying(boolean z) {
            this.mIsPlaying = z;
        }

        public void setRadio(int i, int i2) {
            this.mViewWith = i;
            this.mViewHeight = i2;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            parcel.writeString(this.mPlayBackAssetPath);
            parcel.writeString(this.mPlayResumeAssetPath);
            parcel.writeString(this.mPlayPauseAssetPath);
            parcel.writeString(this.mPlayForwardAssetPath);
            parcel.writeInt(this.mCurrentPlayerId);
            parcel.writeByte(this.mIsNeedPlayBack ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.mIsNeedPlayForward ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.mIsNeedPlayControl ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.mIsPlaying ? (byte) 1 : (byte) 0);
            parcel.writeFloat(this.mCurrentPlayTime);
            parcel.writeInt(this.mViewWith);
            parcel.writeInt(this.mViewHeight);
        }

        public PipParams(String str, String str2, String str3, String str4, int i, boolean z, boolean z2, boolean z3) {
            this.mIsPlaying = false;
            this.mCurrentPlayTime = 0.0f;
            this.mViewWith = 16;
            this.mViewHeight = 9;
            this.mActionIdGenerator = new AtomicInteger();
            this.mPlayBackAssetPath = str;
            this.mPlayResumeAssetPath = str2;
            this.mPlayPauseAssetPath = str3;
            this.mPlayForwardAssetPath = str4;
            this.mCurrentPlayerId = i;
            this.mIsNeedPlayBack = z;
            this.mIsNeedPlayForward = z2;
            this.mIsNeedPlayControl = z3;
        }

        public PipParams(Parcel parcel) {
            this.mIsPlaying = false;
            this.mCurrentPlayTime = 0.0f;
            this.mViewWith = 16;
            this.mViewHeight = 9;
            this.mActionIdGenerator = new AtomicInteger();
            this.mPlayBackAssetPath = parcel.readString();
            this.mPlayResumeAssetPath = parcel.readString();
            this.mPlayPauseAssetPath = parcel.readString();
            this.mPlayForwardAssetPath = parcel.readString();
            this.mCurrentPlayerId = parcel.readInt();
            this.mIsNeedPlayBack = parcel.readByte() != 0;
            this.mIsNeedPlayForward = parcel.readByte() != 0;
            this.mIsNeedPlayControl = parcel.readByte() != 0;
            this.mIsPlaying = parcel.readByte() != 0;
            this.mCurrentPlayTime = parcel.readFloat();
            this.mViewWith = parcel.readInt();
            this.mViewHeight = parcel.readInt();
        }
    }

    @Override // com.tencent.vod.flutter.messages.FtxMessages.VoidResult
    public void success() {
    }
}
