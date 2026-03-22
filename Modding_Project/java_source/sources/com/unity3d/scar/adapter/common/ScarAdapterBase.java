package com.unity3d.scar.adapter.common;

import android.app.Activity;
import android.content.Context;
import com.unity3d.scar.adapter.common.scarads.IScarFullScreenAd;
import com.unity3d.scar.adapter.common.scarads.UnityAdFormat;
import com.unity3d.scar.adapter.common.signals.ISignalCollectionListener;
import com.unity3d.scar.adapter.common.signals.ISignalsCollector;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.List;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public abstract class ScarAdapterBase implements IScarAdapter {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public IAdsErrorHandler<WebViewAdsError> f10860Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public IScarFullScreenAd f10861Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Map<String, IScarFullScreenAd> f10862Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ConcurrentHashMap();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ISignalsCollector f10863Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public ScarAdapterBase(IAdsErrorHandler<WebViewAdsError> iAdsErrorHandler) {
        this.f10860Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = iAdsErrorHandler;
    }

    @Override // com.unity3d.scar.adapter.common.IScarAdapter
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(final Activity activity, String str, String str2) {
        IScarFullScreenAd iScarFullScreenAd = this.f10862Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(str2);
        if (iScarFullScreenAd == null) {
            IAdsErrorHandler<WebViewAdsError> iAdsErrorHandler = this.f10860Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            iAdsErrorHandler.handleError(GMAAdsError.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(str2, str, "Could not find ad for placement '" + str2 + "'."));
            return;
        }
        this.f10861Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = iScarFullScreenAd;
        Utils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new Runnable() { // from class: com.unity3d.scar.adapter.common.ScarAdapterBase.1
            @Override // java.lang.Runnable
            public void run() {
                ScarAdapterBase.this.f10861Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(activity);
            }
        });
    }

    @Override // com.unity3d.scar.adapter.common.IScarAdapter
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, List<UnityAdFormat> list, ISignalCollectionListener iSignalCollectionListener) {
        this.f10863Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, list, iSignalCollectionListener);
    }

    @Override // com.unity3d.scar.adapter.common.IScarAdapter
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, String str, UnityAdFormat unityAdFormat, ISignalCollectionListener iSignalCollectionListener) {
        this.f10863Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, str, unityAdFormat, iSignalCollectionListener);
    }

    @Override // com.unity3d.scar.adapter.common.IScarAdapter
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, boolean z, ISignalCollectionListener iSignalCollectionListener) {
        this.f10863Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, z, iSignalCollectionListener);
    }
}
