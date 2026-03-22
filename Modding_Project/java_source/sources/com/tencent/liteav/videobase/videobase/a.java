package com.tencent.liteav.videobase.videobase;

import android.view.View;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final View f10408a;
    private final int b;

    private a(View view, int i) {
        this.f10408a = view;
        this.b = i;
    }

    public static Runnable a(View view, int i) {
        return new a(view, i);
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f10408a.setVisibility(this.b);
    }
}
