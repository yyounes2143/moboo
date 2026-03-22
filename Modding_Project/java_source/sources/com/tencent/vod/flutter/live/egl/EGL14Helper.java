package com.tencent.vod.flutter.live.egl;

import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLExt;
import android.opengl.EGLSurface;
import android.view.Surface;
import com.tencent.liteav.base.util.LiteavLog;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class EGL14Helper implements EGLHelper<EGLContext> {
    private static final int GLES_VERSION = 2;
    private static final String TAG = "EGL14Helper";
    private EGLSurface mEGLSurface;
    private final int mHeight;
    private final int mWidth;
    private static final int EGL_RECORDABLE_ANDROID = 12610;
    private static final int[] ATTRIBUTE_LIST_FOR_SURFACE = {12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12326, 0, 12352, 4, EGL_RECORDABLE_ANDROID, 1, 12344};
    private static final int[] ATTRIBUTE_LIST_FOR_OFFSCREEN_SURFACE = {12339, 1, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12326, 0, 12352, 4, EGL_RECORDABLE_ANDROID, 1, 12344};
    private EGLConfig mEGLConfig = null;
    private EGLDisplay mEGLDisplay = EGL14.EGL_NO_DISPLAY;
    private EGLContext mEGLContext = EGL14.EGL_NO_CONTEXT;

    private EGL14Helper(int i, int i2) {
        this.mWidth = i;
        this.mHeight = i2;
    }

    private void checkEGLError() {
        int eglGetError = EGL14.eglGetError();
        if (eglGetError != 12288) {
            LiteavLog.e(TAG, "EGL error:" + eglGetError + ", code: 0x" + Integer.toHexString(eglGetError));
        }
    }

    public static EGL14Helper createEGLSurface(EGLConfig eGLConfig, EGLContext eGLContext, Surface surface, int i, int i2) {
        EGL14Helper eGL14Helper = new EGL14Helper(i, i2);
        if (eGL14Helper.initialize(eGLConfig, eGLContext, surface)) {
            return eGL14Helper;
        }
        return null;
    }

    private boolean initialize(EGLConfig eGLConfig, EGLContext eGLContext, Surface surface) {
        int[] iArr;
        EGLContext eGLContext2;
        EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
        this.mEGLDisplay = eglGetDisplay;
        if (eglGetDisplay == EGL14.EGL_NO_DISPLAY) {
            checkEGLError();
            LiteavLog.i(TAG, "unable to get EGL14 display");
        }
        int[] iArr2 = new int[2];
        if (!EGL14.eglInitialize(this.mEGLDisplay, iArr2, 0, iArr2, 1)) {
            this.mEGLDisplay = null;
            checkEGLError();
            LiteavLog.i(TAG, "unable to initialize EGL14");
        }
        if (eGLConfig != null) {
            this.mEGLConfig = eGLConfig;
        } else {
            EGLConfig[] eGLConfigArr = new EGLConfig[1];
            int[] iArr3 = new int[1];
            if (surface == null) {
                iArr = ATTRIBUTE_LIST_FOR_OFFSCREEN_SURFACE;
            } else {
                iArr = ATTRIBUTE_LIST_FOR_SURFACE;
            }
            if (!EGL14.eglChooseConfig(this.mEGLDisplay, iArr, 0, eGLConfigArr, 0, 1, iArr3, 0)) {
                return false;
            }
            this.mEGLConfig = eGLConfigArr[0];
        }
        if (eGLContext == null) {
            eGLContext2 = EGL14.EGL_NO_CONTEXT;
        } else {
            eGLContext2 = eGLContext;
        }
        EGLContext eglCreateContext = EGL14.eglCreateContext(this.mEGLDisplay, this.mEGLConfig, eGLContext2, new int[]{12440, 2, 12344}, 0);
        this.mEGLContext = eglCreateContext;
        if (eglCreateContext == EGL14.EGL_NO_CONTEXT) {
            checkEGLError();
            return false;
        }
        if (surface == null) {
            this.mEGLSurface = EGL14.eglCreatePbufferSurface(this.mEGLDisplay, this.mEGLConfig, new int[]{12375, this.mWidth, 12374, this.mHeight, 12344}, 0);
        } else {
            this.mEGLSurface = EGL14.eglCreateWindowSurface(this.mEGLDisplay, this.mEGLConfig, surface, new int[]{12344}, 0);
        }
        checkEGLError();
        EGLDisplay eGLDisplay = this.mEGLDisplay;
        EGLSurface eGLSurface = this.mEGLSurface;
        if (EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.mEGLContext)) {
            return true;
        }
        checkEGLError();
        return false;
    }

    @Override // com.tencent.vod.flutter.live.egl.EGLHelper
    public void destroy() {
        EGLDisplay eGLDisplay = this.mEGLDisplay;
        if (eGLDisplay != EGL14.EGL_NO_DISPLAY) {
            EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
            EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
            EGLSurface eGLSurface2 = this.mEGLSurface;
            if (eGLSurface2 != EGL14.EGL_NO_SURFACE) {
                EGL14.eglDestroySurface(this.mEGLDisplay, eGLSurface2);
                this.mEGLSurface = EGL14.EGL_NO_SURFACE;
            }
        }
        EGLContext eGLContext = this.mEGLContext;
        if (eGLContext != EGL14.EGL_NO_CONTEXT) {
            EGL14.eglDestroyContext(this.mEGLDisplay, eGLContext);
            this.mEGLContext = EGL14.EGL_NO_CONTEXT;
        }
        EGL14.eglReleaseThread();
        EGL14.eglTerminate(this.mEGLDisplay);
        this.mEGLDisplay = EGL14.EGL_NO_DISPLAY;
    }

    public EGLConfig getConfig() {
        return this.mEGLConfig;
    }

    @Override // com.tencent.vod.flutter.live.egl.EGLHelper
    public void makeCurrent() {
        if (this.mEGLDisplay == EGL14.EGL_NO_DISPLAY) {
            LiteavLog.d(TAG, "NOTE: makeCurrent w/o display");
        }
        EGLDisplay eGLDisplay = this.mEGLDisplay;
        EGLSurface eGLSurface = this.mEGLSurface;
        if (!EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.mEGLContext)) {
            checkEGLError();
            LiteavLog.e(TAG, "eglMakeCurrent failed");
        }
    }

    public void setPresentationTime(long j) {
        EGLExt.eglPresentationTimeANDROID(this.mEGLDisplay, this.mEGLSurface, j);
    }

    @Override // com.tencent.vod.flutter.live.egl.EGLHelper
    public boolean swapBuffers() {
        return EGL14.eglSwapBuffers(this.mEGLDisplay, this.mEGLSurface);
    }

    @Override // com.tencent.vod.flutter.live.egl.EGLHelper
    public void unmakeCurrent() {
        EGLDisplay eGLDisplay = this.mEGLDisplay;
        if (eGLDisplay != EGL14.EGL_NO_DISPLAY) {
            EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
            EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL14.EGL_NO_CONTEXT);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.tencent.vod.flutter.live.egl.EGLHelper
    public EGLContext getContext() {
        return this.mEGLContext;
    }
}
