package com.tencent.liteav.base.http;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
final /* synthetic */ class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final HttpClientAndroid f10217a;
    private final Long b;

    private c(HttpClientAndroid httpClientAndroid, Long l) {
        this.f10217a = httpClientAndroid;
        this.b = l;
    }

    public static Runnable a(HttpClientAndroid httpClientAndroid, Long l) {
        return new c(httpClientAndroid, l);
    }

    @Override // java.lang.Runnable
    public final void run() {
        HttpClientAndroid.lambda$resumeRepeatDownload$2(this.f10217a, this.b);
    }
}
