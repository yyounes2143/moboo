package com.tencent.rtmp.ui;

import android.content.Context;
import android.graphics.Point;
import android.graphics.SurfaceTexture;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.Surface;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.widget.FrameLayout;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.base.util.h;
import com.tencent.liteav.base.util.i;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class TXCloudVideoView extends FrameLayout implements ScaleGestureDetector.OnScaleGestureListener {
    private static final int FOCUS_AREA_SIZE_IN_DP = 70;
    private WeakReference<b> mCallback;
    private TextureView.SurfaceTextureListener mClientTextureViewListener;
    private final a mDelayedTapRunnable;
    private boolean mEnableShowLog;
    private boolean mEnableTouchToFocus;
    private boolean mEnableZoom;
    private FocusIndicatorView mFocusIndicatorView;
    protected Object mGLContext;
    private final Runnable mHideIndicatorViewRunnable;
    private final List<TextureView.SurfaceTextureListener> mInactiveClientListeners;
    private SurfaceTexture mInnerSurfaceTexture;
    private int mInnerSurfaceTextureHeight;
    private int mInnerSurfaceTextureWidth;
    private TextureView mInnerTextureView;
    private final TextureView.SurfaceTextureListener mInnerTextureViewListener;
    private float mLastScaleFactor;
    private float mScaleFactor;
    private ScaleGestureDetector mScaleGestureDetector;
    private final WeakReference<Surface> mSurface;
    private final WeakReference<SurfaceView> mSurfaceView;
    private final String mTAG;
    private String mUserId;
    private TextureView mUserTextureView;
    private AndroidViewEventListener mViewEventListener;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface b {
        void onShowLog(boolean z);
    }

    public TXCloudVideoView(Context context) {
        this(context, null, null);
    }

    private TextureView getInnerTextureView() {
        return this.mInnerTextureView;
    }

    private TextureView getTextureViewSetByUser() {
        return this.mUserTextureView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void hideIndicatorView() {
        FocusIndicatorView focusIndicatorView = this.mFocusIndicatorView;
        if (focusIndicatorView != null) {
            focusIndicatorView.setVisibility(8);
        }
    }

    private boolean isShowLogEnabled() {
        return this.mEnableShowLog;
    }

    private synchronized void releaseRenderClient(TextureView.SurfaceTextureListener surfaceTextureListener, boolean z) {
        SurfaceTexture surfaceTexture;
        TextureView textureView;
        if (surfaceTextureListener == null) {
            LiteavLog.w(this.mTAG, "releaseRenderClient: null client.");
            return;
        }
        String str = this.mTAG;
        LiteavLog.i(str, "releaseRenderClient: " + surfaceTextureListener + ", clearLastImage=" + z);
        if (i.a(this.mClientTextureViewListener, surfaceTextureListener)) {
            this.mClientTextureViewListener = null;
        } else {
            this.mInactiveClientListeners.remove(surfaceTextureListener);
        }
        if (z && this.mClientTextureViewListener == null && (textureView = this.mInnerTextureView) != null && textureView.getParent() == this) {
            resetInnerTextureView();
        }
        if (this.mClientTextureViewListener == null && !this.mInactiveClientListeners.isEmpty()) {
            this.mClientTextureViewListener = this.mInactiveClientListeners.get(0);
            this.mInactiveClientListeners.remove(0);
            String str2 = this.mTAG;
            LiteavLog.i(str2, "releaseRenderClient: activate last client: " + this.mClientTextureViewListener);
        }
        TextureView.SurfaceTextureListener surfaceTextureListener2 = this.mClientTextureViewListener;
        if (surfaceTextureListener2 != null && (surfaceTexture = this.mInnerSurfaceTexture) != null) {
            surfaceTextureListener2.onSurfaceTextureAvailable(surfaceTexture, this.mInnerSurfaceTextureWidth, this.mInnerSurfaceTextureHeight);
        }
    }

    private void resetInnerTextureView() {
        try {
            removeView(this.mInnerTextureView);
            addView(this.mInnerTextureView, 0);
        } catch (Exception e) {
            LiteavLog.e(this.mTAG, "reset texture view error: ", e);
        }
    }

    private void setAndroidViewEventListener(AndroidViewEventListener androidViewEventListener) {
        this.mViewEventListener = androidViewEventListener;
    }

    private void setBackgroundColorForInternalView(int i) {
        LiteavLog.i(this.mTAG, "setBackgroundColorForInternalView color:".concat(String.valueOf(i)));
        if (this.mSurface == null && this.mSurfaceView == null) {
            int i2 = (i >> 16) & 255;
            post(com.tencent.rtmp.ui.b.a(this, i & 255, (i >> 24) & 255, i2, (i >> 8) & 255));
        }
    }

    private synchronized void setRenderClient(TextureView.SurfaceTextureListener surfaceTextureListener) {
        if (surfaceTextureListener == null) {
            LiteavLog.w(this.mTAG, "setRenderClient: null client, ignore.");
            return;
        }
        TextureView.SurfaceTextureListener surfaceTextureListener2 = this.mClientTextureViewListener;
        if (surfaceTextureListener2 != null && i.a(surfaceTextureListener2, surfaceTextureListener)) {
            LiteavLog.w(this.mTAG, "setRenderClient: same client, ignore.");
            return;
        }
        if (this.mClientTextureViewListener != null) {
            String str = this.mTAG;
            LiteavLog.w(str, "setRenderClient: inactivate last client, " + this.mClientTextureViewListener);
            this.mClientTextureViewListener.onSurfaceTextureDestroyed(this.mInnerSurfaceTexture);
            this.mInactiveClientListeners.add(0, this.mClientTextureViewListener);
            this.mClientTextureViewListener = null;
        }
        LiteavLog.i(this.mTAG, "setRenderClient: ".concat(String.valueOf(surfaceTextureListener)));
        this.mClientTextureViewListener = surfaceTextureListener;
        SurfaceTexture surfaceTexture = this.mInnerSurfaceTexture;
        if (surfaceTexture != null) {
            surfaceTextureListener.onSurfaceTextureAvailable(surfaceTexture, this.mInnerSurfaceTextureWidth, this.mInnerSurfaceTextureHeight);
        }
    }

    private void setShowLogCallback(WeakReference<b> weakReference) {
        this.mCallback = weakReference;
    }

    private void setTouchToFocusEnabled(boolean z) {
        this.mEnableTouchToFocus = z;
    }

    private void setZoomEnabled(boolean z) {
        LiteavLog.i(this.mTAG, "setZoomEnabled: ".concat(String.valueOf(z)));
        this.mEnableZoom = z;
    }

    private void showFocusView(int i, int i2, int i3, int i4) {
        post(c.a(this, i, i2, i3, i4));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showFocusViewInternal(int i, int i2, int i3, int i4) {
        if ((i3 != 0 && i3 != getWidth()) || (i4 != 0 && i4 != getHeight())) {
            LiteavLog.i(this.mTAG, "ignore show indicator view when view size changed");
            return;
        }
        LiteavLog.v(this.mTAG, "show indicator view at (%d,%d)", Integer.valueOf(i), Integer.valueOf(i2));
        removeCallbacks(this.mHideIndicatorViewRunnable);
        int i5 = (int) ((getResources().getDisplayMetrics().density * 70.0f) + 0.5f);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i5, i5);
        int i6 = i5 / 2;
        layoutParams.leftMargin = h.a(i - i6, getWidth() - i5);
        layoutParams.topMargin = h.a(i2 - i6, getHeight() - i5);
        View view = this.mFocusIndicatorView;
        if (view == null) {
            FocusIndicatorView focusIndicatorView = new FocusIndicatorView(getContext());
            this.mFocusIndicatorView = focusIndicatorView;
            addView(focusIndicatorView, layoutParams);
        } else if (indexOfChild(view) != getChildCount() - 1) {
            try {
                removeView(this.mFocusIndicatorView);
            } catch (Exception e) {
                LiteavLog.e(this.mTAG, "removeView focus indicator view error: ", e);
            }
            addView(this.mFocusIndicatorView, layoutParams);
        } else {
            this.mFocusIndicatorView.setLayoutParams(layoutParams);
        }
        this.mFocusIndicatorView.setVisibility(0);
        FocusIndicatorView focusIndicatorView2 = this.mFocusIndicatorView;
        focusIndicatorView2.startAnimation(focusIndicatorView2.f10476a);
        postDelayed(this.mHideIndicatorViewRunnable, TimeUnit.SECONDS.toMillis(1L));
    }

    public void addVideoView(TextureView textureView) {
        if (textureView == null) {
            LiteavLog.w(this.mTAG, "addVideoView: null");
        } else if (i.a(this.mUserTextureView, textureView)) {
            LiteavLog.i(this.mTAG, "addVideoView: same view");
        } else {
            removeVideoView();
            LiteavLog.i(this.mTAG, "addVideoView: ".concat(String.valueOf(textureView)));
            if (textureView.getParent() == null) {
                addView(textureView);
            } else if (textureView.getParent() == this) {
                LiteavLog.i(this.mTAG, "addVideoView: already added.");
            } else {
                String str = this.mTAG;
                LiteavLog.w(str, "addVideoView: has other parent:" + textureView.getParent());
            }
            this.mUserTextureView = textureView;
        }
    }

    public void clearLastFrame(boolean z) {
        if (z) {
            setVisibility(8);
        }
    }

    @Deprecated
    public TextureView getHWVideoView() {
        return getVideoView();
    }

    public Object getOpenGLContext() {
        return this.mGLContext;
    }

    public Surface getSurface() {
        WeakReference<Surface> weakReference = this.mSurface;
        if (weakReference == null) {
            return null;
        }
        Surface surface = weakReference.get();
        if (surface == null) {
            LiteavLog.w(this.mTAG, "surface is null.");
        }
        return surface;
    }

    public SurfaceView getSurfaceView() {
        WeakReference<SurfaceView> weakReference = this.mSurfaceView;
        if (weakReference == null) {
            return null;
        }
        SurfaceView surfaceView = weakReference.get();
        if (surfaceView == null) {
            LiteavLog.w(this.mTAG, "surfaceView is null.");
        }
        return surfaceView;
    }

    public String getUserId() {
        return this.mUserId;
    }

    @Deprecated
    public TextureView getVideoView() {
        TextureView textureView = this.mUserTextureView;
        if (textureView != null) {
            return textureView;
        }
        return this.mInnerTextureView;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        LiteavLog.i(this.mTAG, "onAttachedToWindow");
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        LiteavLog.i(this.mTAG, "onDetachedFromWindow");
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0021, code lost:
        if (r4 > 1.0f) goto L7;
     */
    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onScale(android.view.ScaleGestureDetector r4) {
        /*
            r3 = this;
            boolean r0 = r3.mEnableZoom
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            float r0 = r4.getScaleFactor()
            float r2 = r3.mLastScaleFactor
            float r0 = r0 - r2
            float r4 = r4.getScaleFactor()
            r3.mLastScaleFactor = r4
            float r4 = r3.mScaleFactor
            float r4 = r4 + r0
            r0 = 0
            int r2 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r2 >= 0) goto L1d
        L1b:
            r4 = r0
            goto L24
        L1d:
            r0 = 1065353216(0x3f800000, float:1.0)
            int r2 = (r4 > r0 ? 1 : (r4 == r0 ? 0 : -1))
            if (r2 <= 0) goto L24
            goto L1b
        L24:
            r3.mScaleFactor = r4
            com.tencent.rtmp.ui.AndroidViewEventListener r0 = r3.mViewEventListener
            if (r0 == 0) goto L2d
            r0.onZoom(r4)
        L2d:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.rtmp.ui.TXCloudVideoView.onScale(android.view.ScaleGestureDetector):boolean");
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
        this.mLastScaleFactor = scaleGestureDetector.getScaleFactor();
        return this.mEnableZoom;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        AndroidViewEventListener androidViewEventListener = this.mViewEventListener;
        if (androidViewEventListener != null) {
            androidViewEventListener.onSizeChanged(i, i2, i3, i4);
        }
        super.onSizeChanged(i, i2, i3, i4);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getPointerCount() == 1 && motionEvent.getAction() == 0) {
            if (this.mEnableTouchToFocus) {
                a aVar = this.mDelayedTapRunnable;
                int width = getWidth();
                int height = getHeight();
                Point point = aVar.f10478a;
                point.x = (int) motionEvent.getX();
                point.y = (int) motionEvent.getY();
                aVar.b = width;
                aVar.c = height;
                removeCallbacks(this.mDelayedTapRunnable);
                postDelayed(this.mDelayedTapRunnable, 100L);
            }
        } else if (motionEvent.getPointerCount() > 1 && motionEvent.getAction() == 2 && this.mEnableZoom) {
            removeCallbacks(this.mDelayedTapRunnable);
            hideIndicatorView();
            if (this.mScaleGestureDetector == null) {
                this.mScaleGestureDetector = new ScaleGestureDetector(getContext(), this);
            }
            this.mScaleGestureDetector.onTouchEvent(motionEvent);
        }
        if (this.mEnableZoom) {
            if (motionEvent.getAction() == 0) {
                performClick();
            }
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void removeVideoView() {
        if (this.mUserTextureView == null) {
            return;
        }
        LiteavLog.i(this.mTAG, "removeVideoView");
        try {
            removeView(this.mUserTextureView);
        } catch (Exception e) {
            LiteavLog.e(this.mTAG, "removeVideoView error: ", e);
        }
        this.mUserTextureView = null;
    }

    public void setOpenGLContext(Object obj) {
        this.mGLContext = obj;
    }

    public void setUserId(String str) {
        this.mUserId = str;
    }

    public void showLog(boolean z) {
        b bVar;
        this.mEnableShowLog = z;
        WeakReference<b> weakReference = this.mCallback;
        if (weakReference == null) {
            bVar = null;
        } else {
            bVar = weakReference.get();
        }
        if (bVar != null) {
            bVar.onShowLog(z);
        }
    }

    public TXCloudVideoView(SurfaceView surfaceView) {
        this(surfaceView.getContext(), null, surfaceView);
    }

    public TXCloudVideoView(Context context, Surface surface) {
        this(context, null, null, surface);
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final Point f10478a;
        int b;
        int c;

        private a() {
            this.f10478a = new Point();
            this.b = 0;
            this.c = 0;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (TXCloudVideoView.this.mViewEventListener != null) {
                AndroidViewEventListener androidViewEventListener = TXCloudVideoView.this.mViewEventListener;
                Point point = this.f10478a;
                androidViewEventListener.onTap(point.x, point.y, this.b, this.c);
            }
        }

        public /* synthetic */ a(TXCloudVideoView tXCloudVideoView, byte b) {
            this();
        }
    }

    public TXCloudVideoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, null);
    }

    public TXCloudVideoView(Context context, AttributeSet attributeSet, SurfaceView surfaceView) {
        this(context, attributeSet, surfaceView, null);
    }

    private TXCloudVideoView(Context context, AttributeSet attributeSet, SurfaceView surfaceView, Surface surface) {
        super(context, attributeSet);
        this.mTAG = "TXCloudVideoView_" + hashCode();
        this.mEnableTouchToFocus = false;
        this.mDelayedTapRunnable = new a(this, (byte) 0);
        this.mEnableZoom = false;
        this.mUserId = "";
        this.mInactiveClientListeners = new ArrayList();
        this.mHideIndicatorViewRunnable = com.tencent.rtmp.ui.a.a(this);
        TextureView.SurfaceTextureListener surfaceTextureListener = new TextureView.SurfaceTextureListener() { // from class: com.tencent.rtmp.ui.TXCloudVideoView.1
            @Override // android.view.TextureView.SurfaceTextureListener
            public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
                String str = TXCloudVideoView.this.mTAG;
                LiteavLog.i(str, "onSurfaceTextureAvailable: " + surfaceTexture + ", " + i + "x" + i2);
                synchronized (this) {
                    try {
                        TXCloudVideoView.this.mInnerSurfaceTexture = surfaceTexture;
                        TXCloudVideoView.this.mInnerSurfaceTextureWidth = i;
                        TXCloudVideoView.this.mInnerSurfaceTextureHeight = i2;
                        if (TXCloudVideoView.this.mClientTextureViewListener != null) {
                            TXCloudVideoView.this.mClientTextureViewListener.onSurfaceTextureAvailable(TXCloudVideoView.this.mInnerSurfaceTexture, TXCloudVideoView.this.mInnerSurfaceTextureWidth, TXCloudVideoView.this.mInnerSurfaceTextureHeight);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
                LiteavLog.i(TXCloudVideoView.this.mTAG, "onSurfaceTextureDestroyed: ".concat(String.valueOf(surfaceTexture)));
                if (!surfaceTexture.equals(TXCloudVideoView.this.mInnerSurfaceTexture)) {
                    return true;
                }
                synchronized (this) {
                    try {
                        TXCloudVideoView.this.mInnerSurfaceTexture = null;
                        TXCloudVideoView.this.mInnerSurfaceTextureWidth = 0;
                        TXCloudVideoView.this.mInnerSurfaceTextureHeight = 0;
                        if (TXCloudVideoView.this.mClientTextureViewListener != null) {
                            TXCloudVideoView.this.mClientTextureViewListener.onSurfaceTextureDestroyed(surfaceTexture);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return true;
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
                if (!surfaceTexture.equals(TXCloudVideoView.this.mInnerSurfaceTexture)) {
                    return;
                }
                synchronized (this) {
                    try {
                        TXCloudVideoView.this.mInnerSurfaceTextureWidth = i;
                        TXCloudVideoView.this.mInnerSurfaceTextureHeight = i2;
                        if (TXCloudVideoView.this.mClientTextureViewListener != null) {
                            TXCloudVideoView.this.mClientTextureViewListener.onSurfaceTextureSizeChanged(surfaceTexture, i, i2);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
                if (!surfaceTexture.equals(TXCloudVideoView.this.mInnerSurfaceTexture)) {
                    return;
                }
                synchronized (this) {
                    try {
                        if (TXCloudVideoView.this.mClientTextureViewListener != null) {
                            TXCloudVideoView.this.mClientTextureViewListener.onSurfaceTextureUpdated(surfaceTexture);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        };
        this.mInnerTextureViewListener = surfaceTextureListener;
        this.mSurfaceView = surfaceView != null ? new WeakReference<>(surfaceView) : null;
        this.mSurface = surface != null ? new WeakReference<>(surface) : null;
        if (surfaceView == null && surface == null) {
            TextureView textureView = new TextureView(context);
            this.mInnerTextureView = textureView;
            textureView.setSurfaceTextureListener(surfaceTextureListener);
            addView(this.mInnerTextureView);
        }
    }

    public void clearLog() {
    }

    public void onDestroy() {
    }

    public void onPause() {
    }

    public void onResume() {
    }

    public void disableLog(boolean z) {
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
    }

    public void setDashBoardMarginInPx(int i, int i2, int i3, int i4) {
    }

    public void setDashBoardMarginInRatio(float f, float f2, float f3, float f4) {
    }

    public void setLogMargin(float f, float f2, float f3, float f4) {
    }
}
