package com.unity3d.scar.adapter.v2100.signals;

import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
import com.unity3d.scar.adapter.common.signals.ISignalCallbackListener;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class QueryInfoCallback extends QueryInfoGenerationCallback {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ISignalCallbackListener f10926Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f10927Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public QueryInfoCallback(String str, ISignalCallbackListener iSignalCallbackListener) {
        this.f10927Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
        this.f10926Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = iSignalCallbackListener;
    }

    @Override // com.google.android.gms.ads.query.QueryInfoGenerationCallback
    public void onFailure(String str) {
        this.f10926Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.onFailure(str);
    }

    @Override // com.google.android.gms.ads.query.QueryInfoGenerationCallback
    public void onSuccess(QueryInfo queryInfo) {
        this.f10926Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f10927Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, queryInfo.getQuery(), queryInfo);
    }
}
