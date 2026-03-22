package com.facebook.ads.internal.api;

import android.content.Context;
import androidx.annotation.Keep;
import androidx.annotation.WorkerThread;
/* compiled from: Proguard */
@Keep
/* loaded from: classes3.dex */
public interface BidderTokenProviderApi {
    @WorkerThread
    String getBidderToken(Context context);
}
