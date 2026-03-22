package com.sensorsdata.analytics.android.sdk.exceptions;

import android.os.Process;
import com.sensorsdata.analytics.android.sdk.SALog;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import com.sensorsdata.analytics.android.sdk.core.SACoreHelper;
import com.sensorsdata.analytics.android.sdk.core.event.InputData;
import com.sensorsdata.analytics.android.sdk.internal.beans.EventType;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.Thread;
import java.util.ArrayList;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SensorsDataExceptionHandler implements Thread.UncaughtExceptionHandler {
    private static final int SLEEP_TIMEOUT_MS = 500;
    private static SensorsDataExceptionHandler sInstance;
    private Thread.UncaughtExceptionHandler mDefaultExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
    private static final ArrayList<SAExceptionListener> sExceptionListeners = new ArrayList<>();
    private static boolean isTrackCrash = false;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface SAExceptionListener {
        void uncaughtException(Thread thread, Throwable th);
    }

    private SensorsDataExceptionHandler() {
        Thread.setDefaultUncaughtExceptionHandler(this);
    }

    public static void addExceptionListener(SAExceptionListener sAExceptionListener) {
        if (sAExceptionListener != null) {
            ArrayList<SAExceptionListener> arrayList = sExceptionListeners;
            if (!arrayList.contains(sAExceptionListener)) {
                arrayList.add(sAExceptionListener);
            }
        }
    }

    public static void enableAppCrash() {
        isTrackCrash = true;
    }

    public static synchronized void init() {
        synchronized (SensorsDataExceptionHandler.class) {
            if (sInstance == null) {
                sInstance = new SensorsDataExceptionHandler();
            }
        }
    }

    private void killProcessAndExit() {
        try {
            Process.killProcess(Process.myPid());
            System.exit(10);
        } catch (Exception unused) {
        }
    }

    public static void removeExceptionListener(SAExceptionListener sAExceptionListener) {
        if (sAExceptionListener != null) {
            ArrayList<SAExceptionListener> arrayList = sExceptionListeners;
            if (arrayList.contains(sAExceptionListener)) {
                arrayList.remove(sAExceptionListener);
            }
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        try {
            if (isTrackCrash) {
                try {
                    final JSONObject jSONObject = new JSONObject();
                    try {
                        StringWriter stringWriter = new StringWriter();
                        PrintWriter printWriter = new PrintWriter(stringWriter);
                        th.printStackTrace(printWriter);
                        for (Throwable cause = th.getCause(); cause != null; cause = cause.getCause()) {
                            cause.printStackTrace(printWriter);
                        }
                        printWriter.close();
                        jSONObject.put("app_crashed_reason", stringWriter.toString());
                    } catch (Exception e) {
                        SALog.printStackTrace(e);
                    }
                    SACoreHelper.getInstance().trackQueueEvent(new Runnable() { // from class: com.sensorsdata.analytics.android.sdk.exceptions.SensorsDataExceptionHandler.1
                        @Override // java.lang.Runnable
                        public void run() {
                            SACoreHelper.getInstance().trackEvent(new InputData().setEventName("AppCrashed").setProperties(jSONObject).setEventType(EventType.TRACK));
                        }
                    });
                } catch (Exception e2) {
                    SALog.printStackTrace(e2);
                }
            }
            ArrayList<SAExceptionListener> arrayList = sExceptionListeners;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                SAExceptionListener sAExceptionListener = arrayList.get(i);
                i++;
                try {
                    sAExceptionListener.uncaughtException(thread, th);
                } catch (Exception e3) {
                    SALog.printStackTrace(e3);
                }
            }
            SensorsDataAPI.sharedInstance().flush();
            try {
                Thread.sleep(500L);
            } catch (InterruptedException e4) {
                SALog.printStackTrace(e4);
            }
            Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.mDefaultExceptionHandler;
            if (uncaughtExceptionHandler != null) {
                uncaughtExceptionHandler.uncaughtException(thread, th);
            } else {
                killProcessAndExit();
            }
        } catch (Exception unused) {
        }
    }
}
