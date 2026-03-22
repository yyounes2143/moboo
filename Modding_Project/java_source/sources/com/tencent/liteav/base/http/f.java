package com.tencent.liteav.base.http;

import com.tencent.liteav.base.http.HttpClientAndroid;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final /* synthetic */ class f implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final HttpClientAndroid f10220a;
    private final HttpClientAndroid.f b;
    private final long c;

    private f(HttpClientAndroid httpClientAndroid, HttpClientAndroid.f fVar, long j) {
        this.f10220a = httpClientAndroid;
        this.b = fVar;
        this.c = j;
    }

    public static Runnable a(HttpClientAndroid httpClientAndroid, HttpClientAndroid.f fVar, long j) {
        return new f(httpClientAndroid, fVar, j);
    }

    @Override // java.lang.Runnable
    public final void run() {
        HttpClientAndroid.lambda$doReadData$5(this.f10220a, this.b, this.c);
    }
}
