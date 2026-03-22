package com.mbridge.msdk.preload.listenter;

import com.mbridge.msdk.out.PreloadListener;
import java.lang.ref.WeakReference;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class a implements PreloadListener {

    /* renamed from: a  reason: collision with root package name */
    WeakReference<PreloadListener> f9357a;
    private int b = 0;
    private boolean c = false;

    public a(PreloadListener preloadListener) {
        if (preloadListener != null) {
            this.f9357a = new WeakReference<>(preloadListener);
        }
    }

    public boolean a() {
        return this.c;
    }

    @Override // com.mbridge.msdk.out.PreloadListener
    public void onPreloadFaild(String str) {
        WeakReference<PreloadListener> weakReference = this.f9357a;
        if (weakReference != null && weakReference.get() != null) {
            this.f9357a.get().onPreloadFaild(str);
        }
    }

    @Override // com.mbridge.msdk.out.PreloadListener
    public void onPreloadSucceed() {
        WeakReference<PreloadListener> weakReference = this.f9357a;
        if (weakReference != null && weakReference.get() != null) {
            this.f9357a.get().onPreloadSucceed();
        }
    }

    public void a(boolean z) {
        this.c = z;
    }
}
