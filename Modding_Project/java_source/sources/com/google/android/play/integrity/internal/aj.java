package com.google.android.play.integrity.internal;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public final class aj implements an {

    /* renamed from: a  reason: collision with root package name */
    private static final Object f7740a = new Object();
    private volatile an b;
    private volatile Object c = f7740a;

    private aj(an anVar) {
        this.b = anVar;
    }

    public static an b(an anVar) {
        if (anVar instanceof aj) {
            return anVar;
        }
        return new aj(anVar);
    }

    @Override // com.google.android.play.integrity.internal.an
    public final Object a() {
        Object obj;
        Object obj2 = this.c;
        Object obj3 = f7740a;
        if (obj2 == obj3) {
            synchronized (this) {
                try {
                    obj = this.c;
                    if (obj == obj3) {
                        obj = this.b.a();
                        Object obj4 = this.c;
                        if (obj4 != obj3 && obj4 != obj) {
                            throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj4 + " & " + obj + ". This is likely due to a circular dependency.");
                        }
                        this.c = obj;
                        this.b = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return obj;
        }
        return obj2;
    }
}
