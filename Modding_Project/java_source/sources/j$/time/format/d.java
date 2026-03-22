package j$.time.format;
/* loaded from: classes2.dex */
public final class d implements f {

    /* renamed from: a  reason: collision with root package name */
    public final char f11751a;

    public d(char c) {
        this.f11751a = c;
    }

    @Override // j$.time.format.f
    public final boolean h(u uVar, StringBuilder sb) {
        sb.append(this.f11751a);
        return true;
    }

    public final String toString() {
        char c = this.f11751a;
        if (c == '\'') {
            return "''";
        }
        return "'" + c + "'";
    }
}
