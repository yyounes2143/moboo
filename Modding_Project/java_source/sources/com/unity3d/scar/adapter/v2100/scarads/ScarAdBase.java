package com.unity3d.scar.adapter.v2100.scarads;

import android.content.Context;
import com.google.android.gms.ads.AdRequest;
import com.unity3d.scar.adapter.common.IAdsErrorHandler;
import com.unity3d.scar.adapter.common.scarads.IScarAd;
import com.unity3d.scar.adapter.common.scarads.IScarLoadListener;
import com.unity3d.scar.adapter.common.scarads.ScarAdMetadata;
import com.unity3d.scar.adapter.v2100.requests.AdRequestFactory;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public abstract class ScarAdBase<T> implements IScarAd {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public IAdsErrorHandler f10897Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ScarAdListener f10898Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public AdRequestFactory f10899Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ScarAdMetadata f10900Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Context f10901Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public T f10902Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public ScarAdBase(Context context, ScarAdMetadata scarAdMetadata, AdRequestFactory adRequestFactory, IAdsErrorHandler iAdsErrorHandler) {
        this.f10901Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context;
        this.f10900Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = scarAdMetadata;
        this.f10899Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = adRequestFactory;
        this.f10897Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = iAdsErrorHandler;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(T t) {
        this.f10902Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = t;
    }

    public abstract void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AdRequest adRequest, IScarLoadListener iScarLoadListener);

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IScarLoadListener iScarLoadListener) {
        AdRequest Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f10899Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f10900Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (iScarLoadListener != null) {
            this.f10898Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(iScarLoadListener);
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, iScarLoadListener);
    }
}
