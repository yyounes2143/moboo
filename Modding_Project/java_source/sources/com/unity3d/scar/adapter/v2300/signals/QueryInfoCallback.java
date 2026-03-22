package com.unity3d.scar.adapter.v2300.signals;

import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
import com.unity3d.scar.adapter.common.signals.ISignalCallbackListener;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class QueryInfoCallback extends QueryInfoGenerationCallback {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ISignalCallbackListener f10971Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f10972Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public QueryInfoCallback(String str, ISignalCallbackListener iSignalCallbackListener) {
        this.f10972Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f10971Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = iSignalCallbackListener;
    }

    @Override // com.google.android.gms.ads.query.QueryInfoGenerationCallback
    public void onFailure(String str) {
        this.f10971Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.onFailure(str);
    }

    @Override // com.google.android.gms.ads.query.QueryInfoGenerationCallback
    public void onSuccess(QueryInfo queryInfo) {
        this.f10971Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f10972Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, queryInfo.getQuery(), queryInfo);
    }
}
