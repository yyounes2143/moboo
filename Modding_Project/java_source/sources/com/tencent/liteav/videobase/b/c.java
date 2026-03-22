package com.tencent.liteav.videobase.b;

import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final /* synthetic */ class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final b f10361a;
    private final List b;
    private final List c;

    private c(b bVar, List list, List list2) {
        this.f10361a = bVar;
        this.b = list;
        this.c = list2;
    }

    public static Runnable a(b bVar, List list, List list2) {
        return new c(bVar, list, list2);
    }

    @Override // java.lang.Runnable
    public final void run() {
        b.a(this.f10361a, this.b, this.c);
    }
}
