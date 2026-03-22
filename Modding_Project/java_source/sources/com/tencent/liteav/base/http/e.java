package com.tencent.liteav.base.http;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final HttpClientAndroid f10219a;

    private e(HttpClientAndroid httpClientAndroid) {
        this.f10219a = httpClientAndroid;
    }

    public static Runnable a(HttpClientAndroid httpClientAndroid) {
        return new e(httpClientAndroid);
    }

    @Override // java.lang.Runnable
    public final void run() {
        HttpClientAndroid.lambda$destroy$4(this.f10219a);
    }
}
