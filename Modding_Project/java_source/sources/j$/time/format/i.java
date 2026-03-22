package j$.time.format;

import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* loaded from: classes2.dex */
public final class i implements f {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f11753a;
    public final Object b;

    public /* synthetic */ i(Object obj, int i) {
        this.f11753a = i;
        this.b = obj;
    }

    @Override // j$.time.format.f
    public final boolean h(u uVar, StringBuilder sb) {
        switch (this.f11753a) {
            case 0:
                Long a2 = uVar.a(j$.time.temporal.a.OFFSET_SECONDS);
                if (a2 == null) {
                    return false;
                }
                sb.append("GMT");
                long longValue = a2.longValue();
                int i = (int) longValue;
                if (longValue == i) {
                    if (i != 0) {
                        int abs = Math.abs((i / 3600) % 100);
                        int abs2 = Math.abs((i / 60) % 60);
                        int abs3 = Math.abs(i % 60);
                        sb.append(i < 0 ? "-" : "+");
                        if (((B) this.b) == B.FULL) {
                            a(sb, abs);
                            sb.append(AbstractJsonLexerKt.COLON);
                            a(sb, abs2);
                            if (abs3 != 0) {
                                sb.append(AbstractJsonLexerKt.COLON);
                                a(sb, abs3);
                            }
                        } else {
                            if (abs >= 10) {
                                sb.append((char) ((abs / 10) + 48));
                            }
                            sb.append((char) ((abs % 10) + 48));
                            if (abs2 != 0 || abs3 != 0) {
                                sb.append(AbstractJsonLexerKt.COLON);
                                a(sb, abs2);
                                if (abs3 != 0) {
                                    sb.append(AbstractJsonLexerKt.COLON);
                                    a(sb, abs3);
                                }
                            }
                        }
                    }
                    return true;
                }
                throw new ArithmeticException();
            default:
                sb.append((String) this.b);
                return true;
        }
    }

    public final String toString() {
        switch (this.f11753a) {
            case 0:
                return "LocalizedOffset(" + ((B) this.b) + ")";
            default:
                String replace = ((String) this.b).replace("'", "''");
                return "'" + replace + "'";
        }
    }

    public static void a(StringBuilder sb, int i) {
        sb.append((char) ((i / 10) + 48));
        sb.append((char) ((i % 10) + 48));
    }
}
