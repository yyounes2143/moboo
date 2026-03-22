package com.changdu.component.cpuopt;

import android.util.DisplayMetrics;
import android.view.MotionEvent;
import dalvik.system.PathClassLoader;
import j$.util.Objects;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class BoostFramework {
    private static final String PERFORMANCE_CLASS = "com.qualcomm.qti.Performance";
    private static final String PERFORMANCE_JAR = "/system/framework/QPerformance.jar";
    private static final String TAG = "BoostFramework";
    private static Method mAcquireFunc = null;
    private static Method mAcquireTouchFunc = null;
    private static Constructor<Class> mConstructor = null;
    private static Method mIOPStart = null;
    private static Method mIOPStop = null;
    private static boolean mIsLoaded = false;
    private static Method mReleaseFunc;
    private Object mPerf;

    public BoostFramework() {
        this.mPerf = null;
        if (!mIsLoaded) {
            try {
                Class<?> loadClass = new PathClassLoader(PERFORMANCE_JAR, ClassLoader.getSystemClassLoader()).loadClass(PERFORMANCE_CLASS);
                mConstructor = loadClass.getConstructor(null);
                Class<?> cls = Integer.TYPE;
                mAcquireFunc = loadClass.getDeclaredMethod("perfLockAcquire", cls, int[].class);
                Objects.toString(mAcquireFunc);
                mReleaseFunc = loadClass.getDeclaredMethod("perfLockRelease", null);
                Objects.toString(mReleaseFunc);
                mAcquireTouchFunc = loadClass.getDeclaredMethod("perfLockAcquireTouch", MotionEvent.class, DisplayMetrics.class, cls, int[].class);
                Objects.toString(mAcquireTouchFunc);
                mIOPStart = loadClass.getDeclaredMethod("perfIOPrefetchStart", cls, String.class);
                Objects.toString(mIOPStart);
                mIOPStop = loadClass.getDeclaredMethod("perfIOPrefetchStop", null);
                Objects.toString(mIOPStop);
                mIsLoaded = true;
            } catch (Exception e) {
                e.toString();
            }
        }
        try {
            Constructor<Class> constructor = mConstructor;
            if (constructor != null) {
                this.mPerf = constructor.newInstance(null);
            }
        } catch (Exception e2) {
            e2.toString();
        }
        Objects.toString(this.mPerf);
    }

    public boolean isValid() {
        if (mAcquireFunc != null) {
            return true;
        }
        return false;
    }

    public int perfIOPrefetchStart(int i, String str) {
        try {
            return ((Integer) mIOPStart.invoke(this.mPerf, Integer.valueOf(i), str)).intValue();
        } catch (Exception e) {
            e.toString();
            return -1;
        }
    }

    public int perfIOPrefetchStop() {
        try {
            return ((Integer) mIOPStop.invoke(this.mPerf, null)).intValue();
        } catch (Exception e) {
            e.toString();
            return -1;
        }
    }

    public int perfLockAcquire(int i, int... iArr) {
        try {
            return ((Integer) mAcquireFunc.invoke(this.mPerf, Integer.valueOf(i), iArr)).intValue();
        } catch (Exception e) {
            e.toString();
            return -1;
        }
    }

    public int perfLockAcquireTouch(MotionEvent motionEvent, DisplayMetrics displayMetrics, int i, int... iArr) {
        try {
            return ((Integer) mAcquireTouchFunc.invoke(this.mPerf, motionEvent, displayMetrics, Integer.valueOf(i), iArr)).intValue();
        } catch (Exception e) {
            e.toString();
            return -1;
        }
    }

    public int perfLockRelease() {
        try {
            return ((Integer) mReleaseFunc.invoke(this.mPerf, null)).intValue();
        } catch (Exception e) {
            e.toString();
            return -1;
        }
    }
}
