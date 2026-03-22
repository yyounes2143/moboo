package com.google.android.play.integrity.internal;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
final class e extends f {

    /* renamed from: a  reason: collision with root package name */
    private final int f7743a;
    private final long b;

    public e(int i, long j) {
        this.f7743a = i;
        this.b = j;
    }

    @Override // com.google.android.play.integrity.internal.f
    public final int a() {
        return this.f7743a;
    }

    @Override // com.google.android.play.integrity.internal.f
    public final long b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f) {
            f fVar = (f) obj;
            if (this.f7743a == fVar.a() && this.b == fVar.b()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long j = this.b;
        return ((int) (j ^ (j >>> 32))) ^ ((this.f7743a ^ 1000003) * 1000003);
    }

    public final String toString() {
        return "EventRecord{eventType=" + this.f7743a + ", eventTimestamp=" + this.b + "}";
    }
}
