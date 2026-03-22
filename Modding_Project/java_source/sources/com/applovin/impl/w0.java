package com.applovin.impl;

import android.os.Handler;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class w0 {

    /* renamed from: a  reason: collision with root package name */
    private final com.applovin.impl.sdk.o f3797a;
    private final Handler b;
    private final Set c = new HashSet();
    private final AtomicInteger d = new AtomicInteger();

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface b {
        void a();

        boolean b();
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class c {

        /* renamed from: a  reason: collision with root package name */
        private final String f3798a;
        private final b b;
        private final long c;

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            String str = this.f3798a;
            String str2 = ((c) obj).f3798a;
            if (str != null) {
                return str.equalsIgnoreCase(str2);
            }
            if (str2 == null) {
                return true;
            }
            return false;
        }

        public int hashCode() {
            String str = this.f3798a;
            if (str != null) {
                return str.hashCode();
            }
            return 0;
        }

        public String toString() {
            return "CountdownProxy{identifier='" + this.f3798a + "', countdownStepMillis=" + this.c + AbstractJsonLexerKt.END_OBJ;
        }

        private c(String str, long j, b bVar) {
            this.f3798a = str;
            this.c = j;
            this.b = bVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public b a() {
            return this.b;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public long b() {
            return this.c;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public String c() {
            return this.f3798a;
        }
    }

    public w0(Handler handler, com.applovin.impl.sdk.k kVar) {
        if (handler != null) {
            if (kVar != null) {
                this.b = handler;
                this.f3797a = kVar.O();
                return;
            }
            throw new IllegalArgumentException("No sdk specified.");
        }
        throw new IllegalArgumentException("No handler specified.");
    }

    public void a() {
        if (com.applovin.impl.sdk.o.a()) {
            this.f3797a.a("CountdownManager", "Removing all countdowns...");
        }
        c();
        this.c.clear();
    }

    public void b() {
        HashSet<c> hashSet = new HashSet(this.c);
        if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar = this.f3797a;
            oVar.a("CountdownManager", "Starting " + hashSet.size() + " countdowns...");
        }
        int incrementAndGet = this.d.incrementAndGet();
        for (c cVar : hashSet) {
            if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar2 = this.f3797a;
                oVar2.a("CountdownManager", "Starting countdown: " + cVar.c() + " for generation " + incrementAndGet + "...");
            }
            a(cVar, incrementAndGet);
        }
    }

    public void c() {
        if (com.applovin.impl.sdk.o.a()) {
            this.f3797a.a("CountdownManager", "Stopping countdowns...");
        }
        this.d.incrementAndGet();
        this.b.removeCallbacksAndMessages(null);
    }

    public void a(String str, long j, b bVar) {
        if (j > 0) {
            if (this.b != null) {
                if (com.applovin.impl.sdk.o.a()) {
                    com.applovin.impl.sdk.o oVar = this.f3797a;
                    oVar.a("CountdownManager", "Adding countdown: " + str);
                }
                this.c.add(new c(str, j, bVar));
                return;
            }
            throw new IllegalArgumentException("No handler specified.");
        }
        throw new IllegalArgumentException("Invalid step specified.");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(c cVar, int i) {
        b a2 = cVar.a();
        if (a2.b()) {
            if (this.d.get() == i) {
                try {
                    a2.a();
                    a(cVar, i);
                } catch (Throwable th) {
                    if (com.applovin.impl.sdk.o.a()) {
                        com.applovin.impl.sdk.o oVar = this.f3797a;
                        oVar.a("CountdownManager", "Encountered error on countdown step for: " + cVar.c(), th);
                    }
                    a();
                }
            } else if (com.applovin.impl.sdk.o.a()) {
                com.applovin.impl.sdk.o oVar2 = this.f3797a;
                oVar2.k("CountdownManager", "Killing duplicate countdown from previous generation: " + cVar.c());
            }
        } else if (com.applovin.impl.sdk.o.a()) {
            com.applovin.impl.sdk.o oVar3 = this.f3797a;
            oVar3.a("CountdownManager", "Ending countdown for " + cVar.c());
        }
    }

    private void a(final c cVar, final int i) {
        this.b.postDelayed(new Runnable() { // from class: com.applovin.impl.Xxxxxxxxxx
            @Override // java.lang.Runnable
            public final void run() {
                w0.this.b(cVar, i);
            }
        }, cVar.b());
    }
}
