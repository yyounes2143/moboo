package com.sensorsdata.analytics.android.sdk.visual;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.util.AppInfoUtils;
import com.sensorsdata.analytics.android.sdk.visual.model.SnapInfo;
import com.sensorsdata.analytics.android.sdk.visual.snap.EditProtocol;
import com.sensorsdata.analytics.android.sdk.visual.snap.EditState;
import com.sensorsdata.analytics.android.sdk.visual.snap.ResourceReader;
import com.sensorsdata.analytics.android.sdk.visual.utils.FlutterUtils;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.URLDecoder;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public abstract class AbstractViewCrawler implements VTrack {
    private static final int MESSAGE_SEND_STATE_FOR_EDITING = 1;
    private static final String TAG = "SA.AbstractViewCrawler";
    public static final String TYPE_HEAT_MAP = "heat_map";
    public static final String TYPE_VISUAL = "visual";
    private String mAppVersion;
    private final Context mContext;
    private final EditState mEditState;
    private String mFeatureCode;
    private final LifecycleCallbacks mLifecycleCallbacks;
    private final Handler mMainThreadHandler;
    private final ViewCrawlerHandler mMessageThreadHandler;
    private String mPostUrl;
    private boolean mServiceRunning = false;
    private String mType;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class LifecycleCallbacks implements Application.ActivityLifecycleCallbacks {
        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            AbstractViewCrawler.this.mEditState.remove(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            AbstractViewCrawler.this.mEditState.add(activity);
        }

        private LifecycleCallbacks() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class ViewCrawlerHandler extends Handler {
        private String mAppId;
        private StringBuilder mLastImageHash;
        private final EditProtocol mProtocol;
        private final String mSDKVersion;
        private ViewSnapshot mSnapshot;
        private boolean mUseGzip;

        private void onSnapFinished(SnapInfo snapInfo) {
            if (snapInfo != null && !NodesProcess.getInstance().getWebNodesManager().hasThirdView()) {
                NodesProcess.getInstance().getWebNodesManager().clear();
            }
            if (snapInfo != null && !NodesProcess.getInstance().getFlutterNodesManager().hasThirdView()) {
                NodesProcess.getInstance().getFlutterNodesManager().clear();
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:137:0x01ce A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:139:0x018e A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:143:0x01d8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:145:0x0198 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:147:0x01c4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:149:0x0184 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:151:0x01e2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:95:0x01a2 A[Catch: Exception -> 0x0173, TRY_ENTER, TRY_LEAVE, TryCatch #6 {Exception -> 0x0173, blocks: (B:70:0x016f, B:95:0x01a2), top: B:135:0x0022 }] */
        /* JADX WARN: Removed duplicated region for block: B:97:0x01a7  */
        /* JADX WARN: Removed duplicated region for block: B:98:0x01bb  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:73:0x0174 -> B:134:0x01a5). Please submit an issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void postSnapshot(java.io.ByteArrayOutputStream r12) {
            /*
                Method dump skipped, instructions count: 492
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.sensorsdata.analytics.android.sdk.visual.AbstractViewCrawler.ViewCrawlerHandler.postSnapshot(java.io.ByteArrayOutputStream):void");
        }

        /* JADX WARN: Removed duplicated region for block: B:183:0x046b A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:187:0x04b1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:203:0x04c5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:211:0x04bb A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:215:0x0475 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:221:0x047f A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void sendSnapshot() {
            /*
                Method dump skipped, instructions count: 1244
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.sensorsdata.analytics.android.sdk.visual.AbstractViewCrawler.ViewCrawlerHandler.sendSnapshot():void");
        }

        private byte[] slurp(InputStream inputStream) throws IOException {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            byte[] bArr = new byte[8192];
            while (true) {
                int read = inputStream.read(bArr, 0, 8192);
                if (read != -1) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    byteArrayOutputStream.flush();
                    return byteArrayOutputStream.toByteArray();
                }
            }
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what != 1) {
                return;
            }
            sendSnapshot();
        }

        private ViewCrawlerHandler(Context context, Looper looper, String str) {
            super(looper);
            this.mSnapshot = null;
            this.mProtocol = new EditProtocol(new ResourceReader.Ids(str, context));
            this.mLastImageHash = new StringBuilder();
            this.mUseGzip = true;
            this.mAppId = AppInfoUtils.getProcessName(context);
            this.mSDKVersion = SensorsDataAPI.sharedInstance().getSDKVersion();
        }

        public void start() {
        }
    }

    public AbstractViewCrawler(Activity activity, String str, String str2, String str3, String str4) {
        this.mContext = activity.getApplicationContext();
        this.mFeatureCode = str2;
        EditState editState = new EditState();
        this.mEditState = editState;
        this.mType = str4;
        editState.add(activity);
        this.mLifecycleCallbacks = new LifecycleCallbacks();
        try {
            this.mPostUrl = URLDecoder.decode(str3, "UTF-8");
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
        ((Application) this.mContext.getApplicationContext()).registerActivityLifecycleCallbacks(this.mLifecycleCallbacks);
        try {
            this.mAppVersion = activity.getPackageManager().getPackageInfo(activity.getPackageName(), 0).versionName;
        } catch (Exception unused) {
            this.mAppVersion = "";
        }
        HandlerThread handlerThread = new HandlerThread(VisualizedAutoTrackViewCrawler.class.getCanonicalName(), 10);
        handlerThread.start();
        this.mMessageThreadHandler = new ViewCrawlerHandler(this.mContext, handlerThread.getLooper(), str);
        this.mMainThreadHandler = new Handler(Looper.getMainLooper());
    }

    @Override // com.sensorsdata.analytics.android.sdk.visual.VTrack
    public boolean isServiceRunning() {
        return this.mServiceRunning;
    }

    @Override // com.sensorsdata.analytics.android.sdk.visual.VTrack
    public void startUpdates() {
        try {
            if (!TextUtils.isEmpty(this.mFeatureCode) && !TextUtils.isEmpty(this.mPostUrl)) {
                ((Application) this.mContext.getApplicationContext()).registerActivityLifecycleCallbacks(this.mLifecycleCallbacks);
                this.mMessageThreadHandler.start();
                ViewCrawlerHandler viewCrawlerHandler = this.mMessageThreadHandler;
                viewCrawlerHandler.sendMessage(viewCrawlerHandler.obtainMessage(1));
                if (!this.mServiceRunning) {
                    FlutterUtils.visualizedConnectionStatusChanged();
                }
                this.mServiceRunning = true;
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    @Override // com.sensorsdata.analytics.android.sdk.visual.VTrack
    public void stopUpdates(boolean z) {
        if (z) {
            try {
                this.mFeatureCode = null;
                this.mPostUrl = null;
            } catch (Exception e) {
                SALog.printStackTrace(e);
                return;
            }
        }
        this.mMessageThreadHandler.removeMessages(1);
        ((Application) this.mContext.getApplicationContext()).unregisterActivityLifecycleCallbacks(this.mLifecycleCallbacks);
        if (this.mServiceRunning) {
            FlutterUtils.visualizedConnectionStatusChanged();
            this.mServiceRunning = false;
        }
    }
}
