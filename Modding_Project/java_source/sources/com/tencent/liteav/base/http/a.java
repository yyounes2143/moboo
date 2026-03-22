package com.tencent.liteav.base.http;

import com.tencent.liteav.base.http.HttpClientAndroid;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final HttpClientAndroid f10215a;
    private final HttpClientAndroid.e b;

    private a(HttpClientAndroid httpClientAndroid, HttpClientAndroid.e eVar) {
        this.f10215a = httpClientAndroid;
        this.b = eVar;
    }

    public static Runnable a(HttpClientAndroid httpClientAndroid, HttpClientAndroid.e eVar) {
        return new a(httpClientAndroid, eVar);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10215a.doRequest(this.b);
    }
}
