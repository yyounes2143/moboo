package com.tencent.vod.flutter.live.egl;

import android.view.Surface;
import com.tencent.liteav.base.util.LiteavLog;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class EGL10Helper implements EGLHelper<EGLContext> {
    private static final int EGL_CONTEXT_CLIENT_VERSION = 12440;
    private static final int EGL_OPENGL_ES2_BIT = 4;
    private static final String TAG = "EGL10Helper";
    private EGL10 mEGL;
    private EGLConfig mEGLConfig;
    private final int mHeight;
    private final int mWidth;
    private static final int[] ATTRIBUTES_FOR_OFFSCREEN_SURFACE = {12339, 1, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12326, 0, 12352, 4, 12344};
    private static final int EGL_RECORDABLE_ANDROID = 12610;
    private static final int[] ATTRIBUTES_FOR_SURFACE = {12339, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12326, 0, 12352, 4, EGL_RECORDABLE_ANDROID, 1, 12344};
    private EGLDisplay mEGLDisplay = EGL10.EGL_NO_DISPLAY;
    private EGLContext mEGLContext = EGL10.EGL_NO_CONTEXT;
    private EGLSurface mEGLSurface = EGL10.EGL_NO_SURFACE;

    private EGL10Helper(int i, int i2) {
        this.mWidth = i;
        this.mHeight = i2;
    }

    public static EGL10Helper createEGLSurface(EGLConfig eGLConfig, EGLContext eGLContext, Surface surface, int i, int i2) {
        EGL10Helper eGL10Helper = new EGL10Helper(i, i2);
        if (eGL10Helper.initialize(eGLConfig, eGLContext, surface)) {
            return eGL10Helper;
        }
        return null;
    }

    private boolean initialize(EGLConfig eGLConfig, EGLContext eGLContext, Surface surface) {
        int[] iArr;
        EGL10 egl10 = (EGL10) EGLContext.getEGL();
        this.mEGL = egl10;
        EGLDisplay eglGetDisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        this.mEGLDisplay = eglGetDisplay;
        this.mEGL.eglInitialize(eglGetDisplay, new int[2]);
        if (eGLConfig == null) {
            int[] iArr2 = new int[1];
            EGLConfig[] eGLConfigArr = new EGLConfig[1];
            if (surface == null) {
                iArr = ATTRIBUTES_FOR_OFFSCREEN_SURFACE;
            } else {
                iArr = ATTRIBUTES_FOR_SURFACE;
            }
            this.mEGL.eglChooseConfig(this.mEGLDisplay, iArr, eGLConfigArr, 1, iArr2);
            this.mEGLConfig = eGLConfigArr[0];
        } else {
            this.mEGLConfig = eGLConfig;
        }
        int[] iArr3 = {EGL_CONTEXT_CLIENT_VERSION, 2, 12344};
        EGLContext eGLContext2 = EGL10.EGL_NO_CONTEXT;
        if (eGLContext == null) {
            eGLContext = eGLContext2;
        }
        EGLContext eglCreateContext = this.mEGL.eglCreateContext(this.mEGLDisplay, this.mEGLConfig, eGLContext, iArr3);
        this.mEGLContext = eglCreateContext;
        if (eglCreateContext == eGLContext2) {
            checkEglError();
            return false;
        }
        int[] iArr4 = {12375, this.mWidth, 12374, this.mHeight, 12344};
        if (surface == null) {
            this.mEGLSurface = this.mEGL.eglCreatePbufferSurface(this.mEGLDisplay, this.mEGLConfig, iArr4);
        } else {
            this.mEGLSurface = this.mEGL.eglCreateWindowSurface(this.mEGLDisplay, this.mEGLConfig, surface, null);
        }
        EGLSurface eGLSurface = this.mEGLSurface;
        if (eGLSurface == EGL10.EGL_NO_SURFACE) {
            checkEglError();
            return false;
        } else if (this.mEGL.eglMakeCurrent(this.mEGLDisplay, eGLSurface, eGLSurface, this.mEGLContext)) {
            return true;
        } else {
            checkEglError();
            return false;
        }
    }

    public void checkEglError() {
        int eglGetError = this.mEGL.eglGetError();
        if (eglGetError != 12288) {
            LiteavLog.e(TAG, "EGL error: 0x" + Integer.toHexString(eglGetError));
        }
    }

    @Override // com.tencent.vod.flutter.live.egl.EGLHelper
    public void destroy() {
        EGLDisplay eGLDisplay = this.mEGLDisplay;
        EGLDisplay eGLDisplay2 = EGL10.EGL_NO_DISPLAY;
        if (eGLDisplay != eGLDisplay2) {
            EGL10 egl10 = this.mEGL;
            EGLSurface eGLSurface = EGL10.EGL_NO_SURFACE;
            EGLContext eGLContext = EGL10.EGL_NO_CONTEXT;
            egl10.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, eGLContext);
            EGLSurface eGLSurface2 = this.mEGLSurface;
            if (eGLSurface2 != eGLSurface) {
                this.mEGL.eglDestroySurface(this.mEGLDisplay, eGLSurface2);
                this.mEGLSurface = eGLSurface;
            }
            EGLContext eGLContext2 = this.mEGLContext;
            if (eGLContext2 != eGLContext) {
                this.mEGL.eglDestroyContext(this.mEGLDisplay, eGLContext2);
                this.mEGLContext = eGLContext;
            }
            this.mEGL.eglTerminate(this.mEGLDisplay);
            checkEglError();
        }
        this.mEGLDisplay = eGLDisplay2;
    }

    @Override // com.tencent.vod.flutter.live.egl.EGLHelper
    public void makeCurrent() {
        EGL10 egl10 = this.mEGL;
        EGLDisplay eGLDisplay = this.mEGLDisplay;
        EGLSurface eGLSurface = this.mEGLSurface;
        egl10.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.mEGLContext);
        checkEglError();
    }

    @Override // com.tencent.vod.flutter.live.egl.EGLHelper
    public boolean swapBuffers() {
        boolean eglSwapBuffers = this.mEGL.eglSwapBuffers(this.mEGLDisplay, this.mEGLSurface);
        checkEglError();
        return eglSwapBuffers;
    }

    @Override // com.tencent.vod.flutter.live.egl.EGLHelper
    public void unmakeCurrent() {
        EGLDisplay eGLDisplay = this.mEGLDisplay;
        if (eGLDisplay != EGL10.EGL_NO_DISPLAY) {
            EGL10 egl10 = this.mEGL;
            EGLSurface eGLSurface = EGL10.EGL_NO_SURFACE;
            egl10.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, EGL10.EGL_NO_CONTEXT);
        }
    }

    @Override // com.tencent.vod.flutter.live.egl.EGLHelper
    public EGLContext getContext() {
        return this.mEGLContext;
    }
}
