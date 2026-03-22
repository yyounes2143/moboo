package com.unity3d.scar.adapter.v2300.signals;

import android.content.Context;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.query.QueryInfo;
import com.unity3d.scar.adapter.common.DispatchGroup;
import com.unity3d.scar.adapter.common.scarads.UnityAdFormat;
import com.unity3d.scar.adapter.common.signals.ISignalsCollector;
import com.unity3d.scar.adapter.common.signals.SignalCallbackListener;
import com.unity3d.scar.adapter.common.signals.SignalsCollectorBase;
import com.unity3d.scar.adapter.common.signals.SignalsResult;
import com.unity3d.scar.adapter.v2300.requests.AdRequestFactory;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class SignalsCollector extends SignalsCollectorBase implements ISignalsCollector {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public AdRequestFactory f10973Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* renamed from: com.unity3d.scar.adapter.v2300.signals.SignalsCollector$1  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final /* synthetic */ int[] f10974Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        static {
            int[] iArr = new int[UnityAdFormat.values().length];
            f10974Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = iArr;
            try {
                iArr[UnityAdFormat.BANNER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f10974Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[UnityAdFormat.REWARDED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public SignalsCollector(AdRequestFactory adRequestFactory) {
        this.f10973Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = adRequestFactory;
    }

    public AdFormat Wwwwwwwwwwwwwwwwwwwwwwwwwwww(UnityAdFormat unityAdFormat) {
        int i = AnonymousClass1.f10974Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[unityAdFormat.ordinal()];
        if (i != 1) {
            if (i != 2) {
                return AdFormat.INTERSTITIAL;
            }
            return AdFormat.REWARDED;
        }
        return AdFormat.BANNER;
    }

    @Override // com.unity3d.scar.adapter.common.signals.ISignalsCollector
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, String str, UnityAdFormat unityAdFormat, DispatchGroup dispatchGroup, SignalsResult signalsResult) {
        QueryInfo.generate(context, Wwwwwwwwwwwwwwwwwwwwwwwwwwww(unityAdFormat), this.f10973Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), new QueryInfoCallback(str, new SignalCallbackListener(dispatchGroup, signalsResult)));
    }

    @Override // com.unity3d.scar.adapter.common.signals.ISignalsCollector
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, UnityAdFormat unityAdFormat, DispatchGroup dispatchGroup, SignalsResult signalsResult) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(unityAdFormat), unityAdFormat, dispatchGroup, signalsResult);
    }
}
