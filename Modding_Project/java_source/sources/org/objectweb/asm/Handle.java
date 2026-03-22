package org.objectweb.asm;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class Handle {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f14074Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f14075Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f14076Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f14077Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f14078Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Handle)) {
            return false;
        }
        Handle handle = (Handle) obj;
        if (this.f14078Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == handle.f14078Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f14074Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww == handle.f14074Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f14077Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(handle.f14077Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && this.f14076Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(handle.f14076Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && this.f14075Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(handle.f14075Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        int i;
        int i2 = this.f14078Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (this.f14074Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            i = 64;
        } else {
            i = 0;
        }
        return i2 + i + (this.f14077Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode() * this.f14076Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode() * this.f14075Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.hashCode());
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(this.f14077Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        sb.append('.');
        sb.append(this.f14076Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        sb.append(this.f14075Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        sb.append(" (");
        sb.append(this.f14078Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        if (this.f14074Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            str = " itf";
        } else {
            str = "";
        }
        sb.append(str);
        sb.append(')');
        return sb.toString();
    }
}
