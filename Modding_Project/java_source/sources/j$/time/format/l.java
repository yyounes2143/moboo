package j$.time.format;
/* loaded from: classes2.dex */
public final class l implements f {

    /* renamed from: a  reason: collision with root package name */
    public final f f11756a;
    public final int b;
    public final char c;

    public l(f fVar, int i, char c) {
        this.f11756a = fVar;
        this.b = i;
        this.c = c;
    }

    @Override // j$.time.format.f
    public final boolean h(u uVar, StringBuilder sb) {
        int length = sb.length();
        if (this.f11756a.h(uVar, sb)) {
            int length2 = sb.length() - length;
            int i = this.b;
            if (length2 <= i) {
                for (int i2 = 0; i2 < i - length2; i2++) {
                    sb.insert(length, this.c);
                }
                return true;
            }
            throw new RuntimeException("Cannot print as output of " + length2 + " characters exceeds pad width of " + i);
        }
        return false;
    }

    public final String toString() {
        String str;
        char c = this.c;
        if (c == ' ') {
            str = ")";
        } else {
            str = ",'" + c + "')";
        }
        return "Pad(" + this.f11756a + "," + this.b + str;
    }
}
