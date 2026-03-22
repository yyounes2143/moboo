package com.jeremyliao.liveeventbus.utils;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.core.content.FileProvider;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public final class AppUtils {
    private static final ActivityLifecycleImpl ACTIVITY_LIFECYCLE = new ActivityLifecycleImpl();
    private static final String PERMISSION_ACTIVITY_CLASS_NAME = "com.blankj.utilcode.util.PermissionUtils$PermissionActivity";
    @SuppressLint({"StaticFieldLeak"})
    private static Application sApplication;

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static final class FileProvider4UtilCode extends FileProvider {
        @Override // androidx.core.content.FileProvider, android.content.ContentProvider
        public boolean onCreate() {
            AppUtils.init(getContext());
            return true;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public interface OnActivityDestroyedListener {
        void onActivityDestroyed(Activity activity);
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public interface OnAppStatusChangedListener {
        void onBackground();

        void onForeground();
    }

    private AppUtils() {
        throw new UnsupportedOperationException("u can't instantiate me...");
    }

    public static ActivityLifecycleImpl getActivityLifecycle() {
        return ACTIVITY_LIFECYCLE;
    }

    public static LinkedList<Activity> getActivityList() {
        return ACTIVITY_LIFECYCLE.mActivityList;
    }

    public static Application getApp() {
        Application application = sApplication;
        if (application != null) {
            return application;
        }
        Application applicationByReflect = getApplicationByReflect();
        init(applicationByReflect);
        return applicationByReflect;
    }

    private static Application getApplicationByReflect() {
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Object invoke = cls.getMethod("getApplication", null).invoke(cls.getMethod("currentActivityThread", null).invoke(null, null), null);
            if (invoke != null) {
                return (Application) invoke;
            }
            throw new NullPointerException("u should init first");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            throw new NullPointerException("u should init first");
        } catch (IllegalAccessException e2) {
            e2.printStackTrace();
            throw new NullPointerException("u should init first");
        } catch (NoSuchMethodException e3) {
            e3.printStackTrace();
            throw new NullPointerException("u should init first");
        } catch (InvocationTargetException e4) {
            e4.printStackTrace();
            throw new NullPointerException("u should init first");
        }
    }

    public static Context getTopActivityOrApp() {
        if (isAppForeground()) {
            Activity topActivity = ACTIVITY_LIFECYCLE.getTopActivity();
            if (topActivity == null) {
                return getApp();
            }
            return topActivity;
        }
        return getApp();
    }

    public static void init(Context context) {
        if (context == null) {
            init(getApplicationByReflect());
        } else {
            init((Application) context.getApplicationContext());
        }
    }

    public static boolean isAppForeground() {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        ActivityManager activityManager = (ActivityManager) getApp().getSystemService("activity");
        if (activityManager != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null && runningAppProcesses.size() != 0) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.importance == 100) {
                    return runningAppProcessInfo.processName.equals(getApp().getPackageName());
                }
            }
        }
        return false;
    }

    public static void init(Application application) {
        if (sApplication == null) {
            if (application == null) {
                sApplication = getApplicationByReflect();
            } else {
                sApplication = application;
            }
            sApplication.registerActivityLifecycleCallbacks(ACTIVITY_LIFECYCLE);
        } else if (application == null || application.getClass() == sApplication.getClass()) {
        } else {
            Application application2 = sApplication;
            ActivityLifecycleImpl activityLifecycleImpl = ACTIVITY_LIFECYCLE;
            application2.unregisterActivityLifecycleCallbacks(activityLifecycleImpl);
            activityLifecycleImpl.mActivityList.clear();
            sApplication = application;
            application.registerActivityLifecycleCallbacks(activityLifecycleImpl);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static class ActivityLifecycleImpl implements Application.ActivityLifecycleCallbacks {
        final LinkedList<Activity> mActivityList = new LinkedList<>();
        final Map<Object, OnAppStatusChangedListener> mStatusListenerMap = new HashMap();
        final Map<Activity, Set<OnActivityDestroyedListener>> mDestroyedListenerMap = new HashMap();
        private int mForegroundCount = 0;
        private int mConfigCount = 0;
        private boolean mIsBackground = false;

        private void consumeOnActivityDestroyedListener(Activity activity) {
            Iterator<Map.Entry<Activity, Set<OnActivityDestroyedListener>>> it = this.mDestroyedListenerMap.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<Activity, Set<OnActivityDestroyedListener>> next = it.next();
                if (next.getKey() == activity) {
                    for (OnActivityDestroyedListener onActivityDestroyedListener : next.getValue()) {
                        onActivityDestroyedListener.onActivityDestroyed(activity);
                    }
                    it.remove();
                }
            }
        }

        private static void fixSoftInputLeaks(Activity activity) {
            InputMethodManager inputMethodManager;
            if (activity != null && (inputMethodManager = (InputMethodManager) AppUtils.getApp().getSystemService("input_method")) != null) {
                String[] strArr = {"mLastSrvView", "mCurRootView", "mServedView", "mNextServedView"};
                for (int i = 0; i < 4; i++) {
                    try {
                        Field declaredField = InputMethodManager.class.getDeclaredField(strArr[i]);
                        if (declaredField != null) {
                            if (!declaredField.isAccessible()) {
                                declaredField.setAccessible(true);
                            }
                            Object obj = declaredField.get(inputMethodManager);
                            if ((obj instanceof View) && ((View) obj).getRootView() == activity.getWindow().getDecorView().getRootView()) {
                                declaredField.set(inputMethodManager, null);
                            }
                        }
                    } catch (Throwable unused) {
                    }
                }
            }
        }

        private Activity getTopActivityByReflect() {
            Map map;
            try {
                Class<?> cls = Class.forName("android.app.ActivityThread");
                Object invoke = cls.getMethod("currentActivityThread", null).invoke(null, null);
                Field declaredField = cls.getDeclaredField("mActivityList");
                declaredField.setAccessible(true);
                map = (Map) declaredField.get(invoke);
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (IllegalAccessException e2) {
                e2.printStackTrace();
            } catch (NoSuchFieldException e3) {
                e3.printStackTrace();
            } catch (NoSuchMethodException e4) {
                e4.printStackTrace();
            } catch (InvocationTargetException e5) {
                e5.printStackTrace();
            }
            if (map == null) {
                return null;
            }
            for (Object obj : map.values()) {
                Class<?> cls2 = obj.getClass();
                Field declaredField2 = cls2.getDeclaredField("paused");
                declaredField2.setAccessible(true);
                if (!declaredField2.getBoolean(obj)) {
                    Field declaredField3 = cls2.getDeclaredField("activity");
                    declaredField3.setAccessible(true);
                    return (Activity) declaredField3.get(obj);
                }
            }
            return null;
        }

        private void postStatus(boolean z) {
            OnAppStatusChangedListener next;
            if (!this.mStatusListenerMap.isEmpty()) {
                Iterator<OnAppStatusChangedListener> it = this.mStatusListenerMap.values().iterator();
                while (it.hasNext() && (next = it.next()) != null) {
                    if (z) {
                        next.onForeground();
                    } else {
                        next.onBackground();
                    }
                }
            }
        }

        private void setTopActivity(Activity activity) {
            if (!AppUtils.PERMISSION_ACTIVITY_CLASS_NAME.equals(activity.getClass().getName())) {
                if (this.mActivityList.contains(activity)) {
                    if (!this.mActivityList.getLast().equals(activity)) {
                        this.mActivityList.remove(activity);
                        this.mActivityList.addLast(activity);
                        return;
                    }
                    return;
                }
                this.mActivityList.addLast(activity);
            }
        }

        public void addOnActivityDestroyedListener(Activity activity, OnActivityDestroyedListener onActivityDestroyedListener) {
            Set<OnActivityDestroyedListener> set;
            if (activity != null && onActivityDestroyedListener != null) {
                if (!this.mDestroyedListenerMap.containsKey(activity)) {
                    set = new HashSet<>();
                    this.mDestroyedListenerMap.put(activity, set);
                } else {
                    set = this.mDestroyedListenerMap.get(activity);
                    if (set.contains(onActivityDestroyedListener)) {
                        return;
                    }
                }
                set.add(onActivityDestroyedListener);
            }
        }

        public void addOnAppStatusChangedListener(Object obj, OnAppStatusChangedListener onAppStatusChangedListener) {
            this.mStatusListenerMap.put(obj, onAppStatusChangedListener);
        }

        public Activity getTopActivity() {
            Activity last;
            if (!this.mActivityList.isEmpty() && (last = this.mActivityList.getLast()) != null) {
                return last;
            }
            Activity topActivityByReflect = getTopActivityByReflect();
            if (topActivityByReflect != null) {
                setTopActivity(topActivityByReflect);
            }
            return topActivityByReflect;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            setTopActivity(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            this.mActivityList.remove(activity);
            consumeOnActivityDestroyedListener(activity);
            fixSoftInputLeaks(activity);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
            setTopActivity(activity);
            if (this.mIsBackground) {
                this.mIsBackground = false;
                postStatus(true);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            if (!this.mIsBackground) {
                setTopActivity(activity);
            }
            int i = this.mConfigCount;
            if (i < 0) {
                this.mConfigCount = i + 1;
            } else {
                this.mForegroundCount++;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            if (activity.isChangingConfigurations()) {
                this.mConfigCount--;
                return;
            }
            int i = this.mForegroundCount - 1;
            this.mForegroundCount = i;
            if (i <= 0) {
                this.mIsBackground = true;
                postStatus(false);
            }
        }

        public void removeOnActivityDestroyedListener(Activity activity) {
            if (activity == null) {
                return;
            }
            this.mDestroyedListenerMap.remove(activity);
        }

        public void removeOnAppStatusChangedListener(Object obj) {
            this.mStatusListenerMap.remove(obj);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }
    }
}
