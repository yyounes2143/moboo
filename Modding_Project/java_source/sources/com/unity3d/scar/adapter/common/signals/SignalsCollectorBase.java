package com.unity3d.scar.adapter.common.signals;

import android.content.Context;
import com.unity3d.scar.adapter.common.DispatchGroup;
import com.unity3d.scar.adapter.common.scarads.UnityAdFormat;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public abstract class SignalsCollectorBase implements ISignalsCollector {

    /* compiled from: Proguard */
    /* renamed from: com.unity3d.scar.adapter.common.signals.SignalsCollectorBase$1  reason: invalid class name */
    /* loaded from: classes6.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final /* synthetic */ int[] f10878Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        static {
            int[] iArr = new int[UnityAdFormat.values().length];
            f10878Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = iArr;
            try {
                iArr[UnityAdFormat.BANNER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f10878Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[UnityAdFormat.INTERSTITIAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f10878Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[UnityAdFormat.REWARDED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class GMAScarDispatchCompleted implements Runnable {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public SignalsResult f10880Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public ISignalCollectionListener f10881Wwwwwwwwwwwwwwwwwwwwwwwww;

        public GMAScarDispatchCompleted(ISignalCollectionListener iSignalCollectionListener, SignalsResult signalsResult) {
            this.f10881Wwwwwwwwwwwwwwwwwwwwwwwww = iSignalCollectionListener;
            this.f10880Wwwwwwwwwwwwwwwwwwwwwwww = signalsResult;
        }

        @Override // java.lang.Runnable
        public void run() {
            Map<String, String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f10880Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.size() > 0) {
                this.f10881Wwwwwwwwwwwwwwwwwwwwwwwww.onSignalsCollected(new JSONObject(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2).toString());
            } else if (this.f10880Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() == null) {
                this.f10881Wwwwwwwwwwwwwwwwwwwwwwwww.onSignalsCollected("");
            } else {
                this.f10881Wwwwwwwwwwwwwwwwwwwwwwwww.onSignalsCollectionFailed(this.f10880Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            }
        }
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(UnityAdFormat unityAdFormat) {
        int i = AnonymousClass1.f10878Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww[unityAdFormat.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return "";
                }
                return "gmaScarBiddingRewardedSignal";
            }
            return "gmaScarBiddingInterstitialSignal";
        }
        return "gmaScarBiddingBannerSignal";
    }

    @Override // com.unity3d.scar.adapter.common.signals.ISignalsCollector
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, List<UnityAdFormat> list, ISignalCollectionListener iSignalCollectionListener) {
        DispatchGroup dispatchGroup = new DispatchGroup();
        SignalsResult signalsResult = new SignalsResult();
        for (UnityAdFormat unityAdFormat : list) {
            dispatchGroup.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, unityAdFormat, dispatchGroup, signalsResult);
        }
        dispatchGroup.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new GMAScarDispatchCompleted(iSignalCollectionListener, signalsResult));
    }

    @Override // com.unity3d.scar.adapter.common.signals.ISignalsCollector
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, String str, UnityAdFormat unityAdFormat, ISignalCollectionListener iSignalCollectionListener) {
        DispatchGroup dispatchGroup = new DispatchGroup();
        SignalsResult signalsResult = new SignalsResult();
        dispatchGroup.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, str, unityAdFormat, dispatchGroup, signalsResult);
        dispatchGroup.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new GMAScarDispatchCompleted(iSignalCollectionListener, signalsResult));
    }

    @Override // com.unity3d.scar.adapter.common.signals.ISignalsCollector
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, boolean z, ISignalCollectionListener iSignalCollectionListener) {
        DispatchGroup dispatchGroup = new DispatchGroup();
        SignalsResult signalsResult = new SignalsResult();
        dispatchGroup.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, UnityAdFormat.INTERSTITIAL, dispatchGroup, signalsResult);
        dispatchGroup.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, UnityAdFormat.REWARDED, dispatchGroup, signalsResult);
        if (z) {
            dispatchGroup.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, UnityAdFormat.BANNER, dispatchGroup, signalsResult);
        }
        dispatchGroup.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new GMAScarDispatchCompleted(iSignalCollectionListener, signalsResult));
    }
}
