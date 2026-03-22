package com.unity3d.services.ads.gmascar.listeners;

import com.unity3d.services.ads.gmascar.models.BiddingSignals;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public interface IBiddingSignalsListener {
    void onSignalsFailure(String str);

    void onSignalsReady(@Nullable BiddingSignals biddingSignals);
}
