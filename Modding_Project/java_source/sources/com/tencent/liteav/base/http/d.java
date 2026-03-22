package com.tencent.liteav.base.http;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class d implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final HttpClientAndroid f10218a;
    private final long b;

    private d(HttpClientAndroid httpClientAndroid, long j) {
        this.f10218a = httpClientAndroid;
        this.b = j;
    }

    public static Runnable a(HttpClientAndroid httpClientAndroid, long j) {
        return new d(httpClientAndroid, j);
    }

    @Override // java.lang.Runnable
    public final void run() {
        HttpClientAndroid.lambda$resumeRepeatDownload$3(this.f10218a, this.b);
    }
}
