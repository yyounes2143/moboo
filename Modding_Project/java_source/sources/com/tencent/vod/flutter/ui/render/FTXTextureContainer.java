package com.tencent.vod.flutter.ui.render;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import com.tencent.liteav.base.util.LiteavLog;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class FTXTextureContainer extends FrameLayout {
    private static final String TAG = "FTXTextureContainer";
    private FTXRenderCarrier mTextureHolder;

    public FTXTextureContainer(@NonNull Context context) {
        super(context);
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        FTXRenderCarrier fTXRenderCarrier = this.mTextureHolder;
        if (fTXRenderCarrier != null) {
            fTXRenderCarrier.requestLayoutSizeByContainerSize(i, i2);
        }
    }

    @Override // android.view.ViewGroup
    public void removeAllViews() {
        super.removeAllViews();
        LiteavLog.i(TAG, "target removeAllViews,view:" + hashCode());
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        super.removeView(view);
        LiteavLog.i(TAG, "target removeView, child:" + view + ",view:" + hashCode());
    }

    public synchronized void setCarrier(FTXRenderCarrier fTXRenderCarrier) {
        try {
            LiteavLog.i(TAG, "called setUp new carrier:" + fTXRenderCarrier + ",view:" + hashCode());
            if (this.mTextureHolder != fTXRenderCarrier) {
                if (fTXRenderCarrier == null) {
                    LiteavLog.i(TAG, "start remove old carrier:" + this.mTextureHolder + ",view:" + hashCode());
                    removeView((View) this.mTextureHolder);
                    this.mTextureHolder.destroyRender();
                    this.mTextureHolder.removeAllSurfaceListener();
                } else {
                    LiteavLog.i(TAG, "start add new carrier:" + fTXRenderCarrier + ",view:" + hashCode());
                    removeView((View) this.mTextureHolder);
                    addView((View) fTXRenderCarrier);
                }
                this.mTextureHolder = fTXRenderCarrier;
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
