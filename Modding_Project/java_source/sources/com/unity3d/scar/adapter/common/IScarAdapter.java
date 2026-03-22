package com.unity3d.scar.adapter.common;

import android.app.Activity;
import android.content.Context;
import android.widget.RelativeLayout;
import com.unity3d.scar.adapter.common.scarads.ScarAdMetadata;
import com.unity3d.scar.adapter.common.scarads.UnityAdFormat;
import com.unity3d.scar.adapter.common.signals.ISignalCollectionListener;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public interface IScarAdapter {
    void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, ScarAdMetadata scarAdMetadata, IScarInterstitialAdListenerWrapper iScarInterstitialAdListenerWrapper);

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, ScarAdMetadata scarAdMetadata, IScarRewardedAdListenerWrapper iScarRewardedAdListenerWrapper);

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Activity activity, String str, String str2);

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, RelativeLayout relativeLayout, ScarAdMetadata scarAdMetadata, int i, int i2, IScarBannerAdListenerWrapper iScarBannerAdListenerWrapper);

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, List<UnityAdFormat> list, ISignalCollectionListener iSignalCollectionListener);

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, String str, UnityAdFormat unityAdFormat, ISignalCollectionListener iSignalCollectionListener);

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, boolean z, ISignalCollectionListener iSignalCollectionListener);
}
