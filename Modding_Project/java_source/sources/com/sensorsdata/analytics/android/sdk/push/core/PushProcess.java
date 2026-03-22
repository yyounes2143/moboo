package com.sensorsdata.analytics.android.sdk.push.core;

import android.app.Activity;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.Process;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.aop.push.PushAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.core.mediator.Modules;
import com.sensorsdata.analytics.android.sdk.core.mediator.SAModuleManager;
import com.sensorsdata.analytics.android.sdk.core.tasks.ThreadNameConstants;
import com.sensorsdata.analytics.android.sdk.util.FileUtils;
import com.vungle.ads.internal.signals.SignalManager;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class PushProcess {
    private static final String DIR_NAME = "sensors.push";
    private static final int GT_PUSH_MSG = 1;
    private static PushProcess INSTANCE = null;
    private static final String SA_PUSH_ID = "SA_PUSH_ID";
    private static final String TAG = "SA.NotificationProcessor";
    private final boolean customizeEnable;
    private final Map<String, NotificationInfo> mGeTuiPushInfoMap;
    private WeakReference<Intent> mLastIntentRef;
    private final WeakHashMap<PendingIntent, String> mPendingIntent2Ids;
    private File mPushFile;
    private final Handler mPushHandler;
    private final AtomicInteger mSAIntentId;
    private final int myPid;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class NotificationInfo {
        String content;
        long time;
        String title;

        public NotificationInfo(String str, String str2, long j) {
            this.title = str;
            this.content = str2;
            this.time = j;
        }

        public static NotificationInfo fromJson(String str) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                return new NotificationInfo(jSONObject.optString(CampaignEx.JSON_KEY_TITLE), jSONObject.optString("content"), jSONObject.optLong("time"));
            } catch (JSONException e) {
                SALog.printStackTrace(e);
                return null;
            }
        }

        public String toJson() {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put(CampaignEx.JSON_KEY_TITLE, this.title);
                jSONObject.put("content", this.content);
                jSONObject.put("time", this.time);
                return jSONObject.toString();
            } catch (JSONException e) {
                SALog.printStackTrace(e);
                return null;
            }
        }

        public String toString() {
            return "NotificationInfo{title='" + this.title + "', content='" + this.content + "', time=" + this.time + AbstractJsonLexerKt.END_OBJ;
        }
    }

    private PushProcess() {
        Context context = SensorsDataAPI.sharedInstance().getSAContextManager().getContext();
        if (context != null) {
            this.mPushFile = new File(context.getFilesDir(), DIR_NAME);
        }
        this.mSAIntentId = new AtomicInteger();
        this.myPid = Process.myPid();
        this.customizeEnable = true;
        this.mPendingIntent2Ids = new WeakHashMap<>();
        this.mGeTuiPushInfoMap = new HashMap();
        HandlerThread handlerThread = new HandlerThread(ThreadNameConstants.THREAD_PUSH_HANDLER);
        handlerThread.start();
        this.mPushHandler = new Handler(handlerThread.getLooper()) { // from class: com.sensorsdata.analytics.android.sdk.push.core.PushProcess.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                if (message.what == 1) {
                    try {
                        String str = (String) message.obj;
                        if (!TextUtils.isEmpty(str) && PushProcess.this.mGeTuiPushInfoMap.containsKey(str)) {
                            NotificationInfo notificationInfo = (NotificationInfo) PushProcess.this.mGeTuiPushInfoMap.get(str);
                            PushProcess.this.mGeTuiPushInfoMap.remove(str);
                            if (notificationInfo != null) {
                                PushAutoTrackHelper.trackGeTuiNotificationClicked(notificationInfo.title, notificationInfo.content, null, notificationInfo.time);
                            }
                        }
                    } catch (Exception e) {
                        SALog.printStackTrace(e);
                    }
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkAndStoreNotificationInfo(PendingIntent pendingIntent, NotificationInfo notificationInfo) {
        if (pendingIntent == null) {
            SALog.i(TAG, "pendingIntent is null");
            return;
        }
        try {
            String str = this.mPendingIntent2Ids.get(pendingIntent);
            if (str != null) {
                storeNotificationInfo(notificationInfo, str);
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public static synchronized PushProcess getInstance() {
        PushProcess pushProcess;
        synchronized (PushProcess.class) {
            try {
                if (INSTANCE == null) {
                    INSTANCE = new PushProcess();
                }
                pushProcess = INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        return pushProcess;
    }

    private NotificationInfo getNotificationInfo(Notification notification) {
        String string;
        String string2;
        NotificationInfo notificationInfo;
        NotificationInfo notificationInfo2 = null;
        try {
            string = notification.extras.getString(NotificationCompat.EXTRA_TITLE);
            string2 = notification.extras.getString(NotificationCompat.EXTRA_TEXT);
            notificationInfo = new NotificationInfo(string, string2, 0L);
        } catch (Exception e) {
            e = e;
        }
        try {
            SALog.i(TAG, "NotificationInfo: title = " + string + "content = " + string2);
            return notificationInfo;
        } catch (Exception e2) {
            e = e2;
            notificationInfo2 = notificationInfo;
            SALog.printStackTrace(e);
            return notificationInfo2;
        }
    }

    private synchronized void initAndCleanDir() {
        try {
            try {
                if (!this.mPushFile.exists()) {
                    this.mPushFile.mkdirs();
                }
                File[] listFiles = this.mPushFile.listFiles();
                if (listFiles != null) {
                    long currentTimeMillis = System.currentTimeMillis();
                    for (File file : listFiles) {
                        if (currentTimeMillis - file.lastModified() > SignalManager.TWENTY_FOUR_HOURS_MILLIS) {
                            SALog.i(TAG, "clean file: " + file);
                            file.delete();
                        }
                    }
                }
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    private boolean isHooked(Intent intent) {
        try {
            return intent.hasExtra(SA_PUSH_ID);
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return false;
        }
    }

    private void storeNotificationInfo(NotificationInfo notificationInfo, String str) {
        SALog.i(TAG, "storeNotificationInfo: id=" + str + ", actionInfo" + notificationInfo);
        try {
            initAndCleanDir();
            File file = new File(this.mPushFile, str);
            if (file.exists()) {
                SALog.i(TAG, "toFile exists");
                file.delete();
            }
            String json = notificationInfo.toJson();
            String str2 = (String) SAModuleManager.getInstance().invokeModuleFunction(Modules.Encrypt.MODULE_NAME, Modules.Encrypt.METHOD_ENCRYPT_AES, json);
            if (!TextUtils.isEmpty(str2)) {
                json = str2;
            }
            FileUtils.writeToFile(file, json);
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    private void trackCustomizeClick(Intent intent) {
        if (this.customizeEnable) {
            try {
                if (isHooked(intent)) {
                    final String stringExtra = intent.getStringExtra(SA_PUSH_ID);
                    intent.removeExtra(SA_PUSH_ID);
                    if (TextUtils.isEmpty(stringExtra)) {
                        SALog.i(TAG, "intent tag is null");
                    } else {
                        this.mPushHandler.post(new Runnable() { // from class: com.sensorsdata.analytics.android.sdk.push.core.PushProcess.3
                            @Override // java.lang.Runnable
                            public void run() {
                                NotificationInfo notificationInfo = PushProcess.this.getNotificationInfo(stringExtra);
                                if (notificationInfo != null) {
                                    PushAutoTrackHelper.trackNotificationOpenedEvent(null, notificationInfo.title, notificationInfo.content, "Local", null);
                                }
                            }
                        });
                    }
                }
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
    }

    public void hookIntent(Intent intent) {
        if (this.customizeEnable) {
            try {
                if (!isHooked(intent)) {
                    intent.putExtra(SA_PUSH_ID, this.myPid + "-" + this.mSAIntentId.getAndIncrement());
                }
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
    }

    public void hookPendingIntent(Intent intent, PendingIntent pendingIntent) {
        if (this.customizeEnable) {
            this.mPendingIntent2Ids.put(pendingIntent, intent.getStringExtra(SA_PUSH_ID));
        }
    }

    public void onNotificationClick(Context context, Intent intent) {
        if (intent != null) {
            try {
                WeakReference<Intent> weakReference = this.mLastIntentRef;
                if (weakReference != null && weakReference.get() == intent) {
                    return;
                }
                this.mLastIntentRef = new WeakReference<>(intent);
                if (this.customizeEnable) {
                    trackCustomizeClick(intent);
                }
                if (context instanceof Activity) {
                    PushAutoTrackHelper.trackJPushOpenActivity(intent);
                }
                SALog.i(TAG, "onNotificationClick");
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
    }

    public void onNotify(String str, int i, final Notification notification) {
        if (this.customizeEnable) {
            try {
                if (notification.contentIntent != null) {
                    SALog.i(TAG, "onNotify, tag: " + str + ", id=" + i);
                    final NotificationInfo notificationInfo = getNotificationInfo(notification);
                    if (notificationInfo != null) {
                        this.mPushHandler.post(new Runnable() { // from class: com.sensorsdata.analytics.android.sdk.push.core.PushProcess.2
                            @Override // java.lang.Runnable
                            public void run() {
                                PushProcess.this.checkAndStoreNotificationInfo(notification.contentIntent, notificationInfo);
                            }
                        });
                    }
                }
            } catch (Exception e) {
                SALog.printStackTrace(e);
            }
        }
    }

    public void trackGTClickDelayed(String str, String str2, String str3) {
        try {
            Message obtain = Message.obtain();
            obtain.what = 1;
            obtain.obj = str;
            this.mGeTuiPushInfoMap.put(str, new NotificationInfo(str2, str3, System.currentTimeMillis()));
            this.mPushHandler.sendMessageDelayed(obtain, 200L);
            SALog.i(TAG, "sendMessageDelayed,msgId = " + str);
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    public void trackReceiveMessageData(String str, String str2) {
        try {
            if (this.mPushHandler.hasMessages(1) && this.mGeTuiPushInfoMap.containsKey(str2)) {
                this.mPushHandler.removeMessages(1);
                SALog.i(TAG, "remove GeTui Push Message");
                NotificationInfo notificationInfo = this.mGeTuiPushInfoMap.get(str2);
                if (notificationInfo != null) {
                    PushAutoTrackHelper.trackGeTuiNotificationClicked(notificationInfo.title, notificationInfo.content, str, notificationInfo.time);
                }
                this.mGeTuiPushInfoMap.remove(str2);
                SALog.i(TAG, " onGeTuiReceiveMessage:msg id : " + str2);
            }
        } catch (Exception e) {
            SALog.printStackTrace(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public NotificationInfo getNotificationInfo(String str) {
        try {
            initAndCleanDir();
            File file = new File(this.mPushFile, str);
            if (file.exists()) {
                String readFileToString = FileUtils.readFileToString(file);
                if (TextUtils.isEmpty(readFileToString)) {
                    return null;
                }
                String str2 = (String) SAModuleManager.getInstance().invokeModuleFunction(Modules.Encrypt.MODULE_NAME, Modules.Encrypt.METHOD_DECRYPT_AES, readFileToString);
                if (TextUtils.isEmpty(str2)) {
                    str2 = readFileToString;
                }
                SALog.i(TAG, "cache local notification info:" + str2);
                NotificationInfo fromJson = NotificationInfo.fromJson(str2);
                return fromJson == null ? NotificationInfo.fromJson(readFileToString) : fromJson;
            }
            return null;
        } catch (Exception e) {
            SALog.printStackTrace(e);
            return null;
        }
    }
}
