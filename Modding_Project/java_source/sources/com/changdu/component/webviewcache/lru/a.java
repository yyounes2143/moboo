package com.changdu.component.webviewcache.lru;

import java.util.Map;
import java.util.concurrent.Callable;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class a implements Callable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ g f5416a;

    public a(g gVar) {
        this.f5416a = gVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        synchronized (this.f5416a) {
            try {
                g gVar = this.f5416a;
                if (gVar.i != null) {
                    while (gVar.h > gVar.f) {
                        gVar.d((String) ((Map.Entry) gVar.j.entrySet().iterator().next()).getKey());
                    }
                    if (this.f5416a.b()) {
                        this.f5416a.e();
                        this.f5416a.k = 0;
                    }
                    return null;
                }
                return null;
            } finally {
            }
        }
    }
}
