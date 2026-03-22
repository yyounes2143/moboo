package com.tencent.vod.flutter.ui.render;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.vod.flutter.FTXEvent;
import com.tencent.vod.flutter.player.render.FTXPlayerRenderHost;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.plugin.platform.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class FTXRenderView implements PlatformView {
    private static final String TAG = "FTXRenderView";
    private FTXPlayerRenderHost mBasePlayer;
    private final FTXTextureContainer mContainer;
    private final Context mContext;
    private FTXRenderViewFactory mFactory;
    private final int mRenderType;
    private FTXRenderCarrier mTextureView;
    private final int mViewId;

    public FTXRenderView(@NonNull Context context, int i, @Nullable Map<String, Object> map, FTXRenderViewFactory fTXRenderViewFactory) {
        if (map != null) {
            Object obj = map.get(FTXEvent.RENDER_TYPE_KEY);
            if (obj instanceof Integer) {
                this.mRenderType = ((Integer) obj).intValue();
            } else {
                this.mRenderType = 0;
            }
        } else {
            this.mRenderType = 0;
        }
        this.mFactory = fTXRenderViewFactory;
        this.mContext = context;
        FTXTextureContainer fTXTextureContainer = new FTXTextureContainer(context);
        this.mContainer = fTXTextureContainer;
        fTXTextureContainer.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        resetRenderView();
        LiteavLog.i(TAG, "view " + i + " is created， renderType:" + this.mRenderType);
        this.mViewId = i;
    }

    private void resetRenderView() {
        int i = this.mRenderType;
        if (i == 0) {
            this.mTextureView = new FTXTextureView(this.mContext);
        } else if (i != 1 && i != 2) {
            LiteavLog.e(TAG, "unknown view type :" + this.mRenderType + ", use default type TEXTURE_TYPE");
            this.mTextureView = new FTXTextureView(this.mContext);
        } else {
            this.mTextureView = new FTXSurfaceView(this.mContext);
        }
        this.mContainer.setCarrier(this.mTextureView);
    }

    public void clearTexture() {
        resetRenderView();
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public void dispose() {
        this.mFactory.removeByViewId(this.mViewId);
        this.mContainer.setCarrier(null);
        LiteavLog.i(TAG, "render view is dispose, id:" + this.mViewId + ", view:" + hashCode());
    }

    public FTXRenderCarrier getRenderView() {
        return this.mTextureView;
    }

    @Override // io.flutter.plugin.platform.PlatformView
    @Nullable
    public View getView() {
        return this.mContainer;
    }

    public int getViewId() {
        return this.mViewId;
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public /* synthetic */ void onFlutterViewAttached(View view) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, view);
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public /* synthetic */ void onFlutterViewDetached() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public /* synthetic */ void onInputConnectionLocked() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public /* synthetic */ void onInputConnectionUnlocked() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
    }

    public void setPlayer(FTXPlayerRenderHost fTXPlayerRenderHost) {
        LiteavLog.i(TAG, "start setPlayer, viewId:" + this.mViewId);
        if (this.mBasePlayer != fTXPlayerRenderHost) {
            LiteavLog.i(TAG, "setPlayer, player is not equal, old:" + this.mBasePlayer + ",new:" + fTXPlayerRenderHost + ", view:" + hashCode());
            FTXPlayerRenderHost fTXPlayerRenderHost2 = this.mBasePlayer;
            if (fTXPlayerRenderHost2 != null) {
                fTXPlayerRenderHost2.setRenderView(null);
                this.mTextureView.removeAllSurfaceListener();
                clearTexture();
            }
            this.mBasePlayer = fTXPlayerRenderHost;
        } else {
            LiteavLog.i(TAG, "setPlayer, player is same, player:" + fTXPlayerRenderHost + " refresh it, view:" + hashCode());
        }
        fTXPlayerRenderHost.setRenderView(this.mTextureView);
    }
}
