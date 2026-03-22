package com.unity3d.scar.adapter.v2300.scarads;

import android.content.Context;
import com.google.android.gms.ads.AdRequest;
import com.unity3d.scar.adapter.common.IAdsErrorHandler;
import com.unity3d.scar.adapter.common.scarads.IScarAd;
import com.unity3d.scar.adapter.common.scarads.IScarLoadListener;
import com.unity3d.scar.adapter.common.scarads.ScarAdMetadata;
import com.unity3d.scar.adapter.v2300.requests.AdRequestFactory;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public abstract class ScarAdBase<T> implements IScarAd {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public IAdsErrorHandler f10942Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ScarAdListener f10943Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public AdRequestFactory f10944Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ScarAdMetadata f10945Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Context f10946Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public T f10947Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public ScarAdBase(Context context, ScarAdMetadata scarAdMetadata, AdRequestFactory adRequestFactory, IAdsErrorHandler iAdsErrorHandler) {
        this.f10946Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context;
        this.f10945Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = scarAdMetadata;
        this.f10944Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = adRequestFactory;
        this.f10942Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = iAdsErrorHandler;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(T t) {
        this.f10947Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = t;
    }

    public abstract void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AdRequest adRequest, IScarLoadListener iScarLoadListener);

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(IScarLoadListener iScarLoadListener) {
        AdRequest Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f10944Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f10945Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        if (iScarLoadListener != null) {
            this.f10943Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(iScarLoadListener);
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, iScarLoadListener);
    }
}
