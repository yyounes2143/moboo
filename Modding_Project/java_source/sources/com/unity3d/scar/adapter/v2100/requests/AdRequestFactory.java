package com.unity3d.scar.adapter.v2100.requests;

import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdRequest;
import com.unity3d.scar.adapter.common.requests.RequestExtras;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class AdRequestFactory {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public RequestExtras f10896Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public AdRequestFactory(RequestExtras requestExtras) {
        this.f10896Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = requestExtras;
    }

    public AdRequest.Builder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return new AdRequest.Builder().setRequestAgent(this.f10896Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()).addNetworkExtrasBundle(AdMobAdapter.class, this.f10896Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    public AdRequest Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        if (str.isEmpty()) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().setAdString(str).build();
    }

    public AdRequest Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().build();
    }
}
