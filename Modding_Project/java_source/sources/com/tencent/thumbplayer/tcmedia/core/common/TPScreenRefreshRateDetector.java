package com.tencent.thumbplayer.tcmedia.core.common;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.Display;
import android.view.WindowManager;
import com.google.firebase.messaging.Constants;
import java.lang.ref.WeakReference;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes6.dex */
public class TPScreenRefreshRateDetector {
    public static final int DISPLAY_CHANGE = 10001;
    private static String TAG = "TPScreenRefreshRateDetector";
    private static boolean isInitted = false;
    private static WeakReference<Context> mContext;
    private static Handler mHandler;
    private static WindowManager mWindowManager;
    private static List<ScreenRefreshRateChangedListener> listeners = new LinkedList();
    private static float mCurScreenRefreshRate = 60.0f;
    private static DisplayManager mDisplayManager = null;
    private static DisplayManager.DisplayListener mDisplayListener = new DisplayManager.DisplayListener() { // from class: com.tencent.thumbplayer.tcmedia.core.common.TPScreenRefreshRateDetector.2
        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayChanged(int i) {
            if (i == 0) {
                TPScreenRefreshRateDetector.mHandler.sendEmptyMessage(10001);
            }
            TPNativeLog.printLog(2, TPScreenRefreshRateDetector.TAG, "onDisplayChanged displayId:".concat(String.valueOf(i)));
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayAdded(int i) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public final void onDisplayRemoved(int i) {
        }
    };

    /* loaded from: classes6.dex */
    public interface ScreenRefreshRateChangedListener {
        void onScreenRefreshRateChanged(float f);
    }

    public static void addListener(ScreenRefreshRateChangedListener screenRefreshRateChangedListener) {
        synchronized (TPScreenRefreshRateDetector.class) {
            listeners.add(screenRefreshRateChangedListener);
        }
    }

    public static void deinit() {
        WeakReference<Context> weakReference;
        synchronized (TPScreenRefreshRateDetector.class) {
            if (isInitted && (weakReference = mContext) != null) {
                weakReference.clear();
                isInitted = false;
                TPNativeLog.printLog(2, TAG, "TPScreenRefreshRateDetector deinit succeed!");
            }
        }
    }

    private static Looper getLooper() {
        Looper myLooper = Looper.myLooper();
        if (myLooper != null) {
            return myLooper;
        }
        return Looper.getMainLooper();
    }

    public static float getScreenRefreshRate() {
        WeakReference<Context> weakReference = mContext;
        if (weakReference == null) {
            TPNativeLog.printLog(4, TAG, "Current mContext is null, set default.");
            return mCurScreenRefreshRate;
        }
        Context context = weakReference.get();
        if (context != null) {
            if (mWindowManager == null) {
                mWindowManager = (WindowManager) context.getSystemService("window");
            }
            if (mDisplayManager == null) {
                DisplayManager displayManager = (DisplayManager) context.getSystemService(Constants.ScionAnalytics.MessageType.DISPLAY_NOTIFICATION);
                mDisplayManager = displayManager;
                displayManager.registerDisplayListener(mDisplayListener, mHandler);
            }
            WindowManager windowManager = mWindowManager;
            if (windowManager != null) {
                Display defaultDisplay = windowManager.getDefaultDisplay();
                Display.Mode[] supportedModes = defaultDisplay.getSupportedModes();
                Display.Mode mode = defaultDisplay.getMode();
                String str = TAG;
                TPNativeLog.printLog(2, str, "getMode width:" + mode.getPhysicalWidth() + " height:" + mode.getPhysicalHeight() + " refreshRate:" + mode.getRefreshRate() + " ModeId:" + mode.getModeId());
                String str2 = TAG;
                StringBuilder sb = new StringBuilder("getSupportedModes length:");
                sb.append(supportedModes.length);
                TPNativeLog.printLog(2, str2, sb.toString());
                for (int i = 0; i < supportedModes.length; i++) {
                    String str3 = TAG;
                    TPNativeLog.printLog(2, str3, "getSupportedModes width:" + supportedModes[i].getPhysicalWidth() + " height:" + supportedModes[i].getPhysicalHeight() + " refreshRate:" + supportedModes[i].getRefreshRate() + " ModeId:" + supportedModes[i].getModeId());
                }
                mCurScreenRefreshRate = mode.getRefreshRate();
            }
        }
        return mCurScreenRefreshRate;
    }

    public static void init(Context context) {
        synchronized (TPScreenRefreshRateDetector.class) {
            try {
                TPNativeLog.printLog(2, TAG, "TPScreenRefreshRateDetector init enter!");
                if (!isInitted) {
                    mContext = new WeakReference<>(context.getApplicationContext());
                    isInitted = true;
                    initHandleMsg();
                    TPNativeLog.printLog(2, TAG, "TPScreenRefreshRateDetector init succeed!");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void initHandleMsg() {
        mHandler = new Handler(getLooper()) { // from class: com.tencent.thumbplayer.tcmedia.core.common.TPScreenRefreshRateDetector.1
            @Override // android.os.Handler
            public final void handleMessage(Message message) {
                if (message.what == 10001 && TPScreenRefreshRateDetector.mDisplayManager != null) {
                    Display display = TPScreenRefreshRateDetector.mDisplayManager.getDisplay(0);
                    String mode = display.getMode().toString();
                    String str = TPScreenRefreshRateDetector.TAG;
                    TPNativeLog.printLog(2, str, "handleMessage DISPLAY_CHANGE, mode:" + mode.toString());
                    TPScreenRefreshRateDetector.notifyScreenRefreshRateChange(display.getMode().getRefreshRate());
                }
                super.handleMessage(message);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void notifyScreenRefreshRateChange(float f) {
        if (Math.abs(f - mCurScreenRefreshRate) >= 1.0f) {
            String str = TAG;
            TPNativeLog.printLog(2, str, "notifyScreenRefreshRateChange Change From " + mCurScreenRefreshRate + " to " + f);
            mCurScreenRefreshRate = f;
            synchronized (TPScreenRefreshRateDetector.class) {
                try {
                    for (ScreenRefreshRateChangedListener screenRefreshRateChangedListener : listeners) {
                        screenRefreshRateChangedListener.onScreenRefreshRateChanged(f);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public static void removeListener(ScreenRefreshRateChangedListener screenRefreshRateChangedListener) {
        synchronized (TPScreenRefreshRateDetector.class) {
            listeners.remove(screenRefreshRateChangedListener);
        }
    }
}
