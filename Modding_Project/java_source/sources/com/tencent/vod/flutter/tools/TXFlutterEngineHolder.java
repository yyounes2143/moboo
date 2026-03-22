package com.tencent.vod.flutter.tools;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.tencent.liteav.base.util.LiteavLog;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class TXFlutterEngineHolder {
    private static final String TAG = "TXFlutterEngineHolder";
    private Application.ActivityLifecycleCallbacks mLifeCallback;
    private int mFrontContextCount = 0;
    private final List<TXAppStatusListener> mListeners = new ArrayList();
    private boolean mIsEnterBack = false;
    private final List<WeakReference<Activity>> mActivityList = new ArrayList();

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static final class SingletonInstance {
        private static final TXFlutterEngineHolder instance = new TXFlutterEngineHolder();

        private SingletonInstance() {
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static abstract class TXAppStatusListener {
        public abstract void onEnterBack();

        public abstract void onResume();
    }

    public static /* synthetic */ int access$108(TXFlutterEngineHolder tXFlutterEngineHolder) {
        int i = tXFlutterEngineHolder.mFrontContextCount;
        tXFlutterEngineHolder.mFrontContextCount = i + 1;
        return i;
    }

    public static /* synthetic */ int access$110(TXFlutterEngineHolder tXFlutterEngineHolder) {
        int i = tXFlutterEngineHolder.mFrontContextCount;
        tXFlutterEngineHolder.mFrontContextCount = i - 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int findIndexByAct(Activity activity) {
        int i;
        synchronized (this.mActivityList) {
            i = 0;
            while (true) {
                try {
                    if (i < this.mActivityList.size()) {
                        if (this.mActivityList.get(i).get() != activity) {
                            i++;
                        }
                    } else {
                        i = -1;
                        break;
                    }
                } finally {
                }
            }
        }
        return i;
    }

    public static TXFlutterEngineHolder getInstance() {
        return SingletonInstance.instance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyEnterBack() {
        synchronized (this.mListeners) {
            try {
                for (TXAppStatusListener tXAppStatusListener : this.mListeners) {
                    tXAppStatusListener.onEnterBack();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void notifyResume() {
        synchronized (this.mListeners) {
            try {
                for (TXAppStatusListener tXAppStatusListener : this.mListeners) {
                    tXAppStatusListener.onResume();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void addAppLifeListener(TXAppStatusListener tXAppStatusListener) {
        synchronized (this.mListeners) {
            try {
                if (!this.mListeners.contains(tXAppStatusListener)) {
                    this.mListeners.add(tXAppStatusListener);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void attachBindLife(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        if (this.mLifeCallback != null) {
            LiteavLog.w(TAG, "TXFlutterEngineHolder is already attached");
        } else if (flutterPluginBinding == null) {
        } else {
            this.mLifeCallback = new Application.ActivityLifecycleCallbacks() { // from class: com.tencent.vod.flutter.tools.TXFlutterEngineHolder.1
                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityDestroyed(@NonNull Activity activity) {
                    synchronized (TXFlutterEngineHolder.this.mActivityList) {
                        try {
                            LiteavLog.i(TXFlutterEngineHolder.TAG, "activity is destroyed:" + activity);
                            int findIndexByAct = TXFlutterEngineHolder.this.findIndexByAct(activity);
                            if (findIndexByAct >= 0) {
                                TXFlutterEngineHolder.this.mActivityList.remove(findIndexByAct);
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityResumed(@NonNull Activity activity) {
                    synchronized (TXFlutterEngineHolder.this.mActivityList) {
                        try {
                            LiteavLog.i(TXFlutterEngineHolder.TAG, "activity is resumed:" + activity);
                            int findIndexByAct = TXFlutterEngineHolder.this.findIndexByAct(activity);
                            if (findIndexByAct >= 0) {
                                TXFlutterEngineHolder.this.mActivityList.remove(findIndexByAct);
                            }
                            TXFlutterEngineHolder.this.mActivityList.add(new WeakReference(activity));
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStarted(@NonNull Activity activity) {
                    TXFlutterEngineHolder.access$108(TXFlutterEngineHolder.this);
                    LiteavLog.i(TXFlutterEngineHolder.TAG, "activity is started:" + activity);
                    if (TXFlutterEngineHolder.this.mIsEnterBack && TXFlutterEngineHolder.this.mFrontContextCount > 0) {
                        TXFlutterEngineHolder.this.mIsEnterBack = false;
                        TXFlutterEngineHolder.this.notifyResume();
                    }
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStopped(@NonNull Activity activity) {
                    TXFlutterEngineHolder.access$110(TXFlutterEngineHolder.this);
                    LiteavLog.i(TXFlutterEngineHolder.TAG, "activity is stopped:" + activity);
                    if (!TXFlutterEngineHolder.this.mIsEnterBack && TXFlutterEngineHolder.this.mFrontContextCount <= 0) {
                        TXFlutterEngineHolder.this.mIsEnterBack = true;
                        TXFlutterEngineHolder.this.notifyEnterBack();
                    }
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityPaused(@NonNull Activity activity) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityCreated(@NonNull Activity activity, @Nullable Bundle bundle) {
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivitySaveInstanceState(@NonNull Activity activity, @NonNull Bundle bundle) {
                }
            };
            ((Application) flutterPluginBinding.getApplicationContext()).registerActivityLifecycleCallbacks(this.mLifeCallback);
        }
    }

    public void clearListener() {
        synchronized (this.mListeners) {
            this.mListeners.clear();
        }
    }

    public void destroy(FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        LiteavLog.i(TAG, "called engine holder destroy");
        if (this.mLifeCallback == null || flutterPluginBinding == null) {
            return;
        }
        ((Application) flutterPluginBinding.getApplicationContext()).unregisterActivityLifecycleCallbacks(this.mLifeCallback);
        this.mLifeCallback = null;
    }

    public Activity getActivityByIndex(int i) {
        synchronized (this.mActivityList) {
            try {
                if (i < this.mActivityList.size() && i >= 0) {
                    return this.mActivityList.get(i).get();
                }
                return null;
            } finally {
            }
        }
    }

    public Activity getCurActivity() {
        Activity activityByIndex;
        synchronized (this.mActivityList) {
            activityByIndex = getActivityByIndex(this.mActivityList.size() - 1);
        }
        return activityByIndex;
    }

    public Activity getPreActivity() {
        Activity activityByIndex;
        synchronized (this.mActivityList) {
            activityByIndex = getActivityByIndex(this.mActivityList.size() - 2);
        }
        return activityByIndex;
    }

    public boolean isInForeground() {
        return !this.mIsEnterBack;
    }

    public void removeAppLifeListener(TXAppStatusListener tXAppStatusListener) {
        synchronized (this.mListeners) {
            this.mListeners.remove(tXAppStatusListener);
        }
    }
}
