package j$.time.temporal;
/* loaded from: classes2.dex */
public enum j implements p {
    JULIAN_DAY("JulianDay", 2440588),
    MODIFIED_JULIAN_DAY("ModifiedJulianDay", 40587),
    RATA_DIE("RataDie", 719163);
    
    private static final long serialVersionUID = -7501623920830201812L;

    /* renamed from: a  reason: collision with root package name */
    public final transient String f11787a;
    public final transient t b;
    public final transient long c;

    @Override // j$.time.temporal.p
    public final boolean r() {
        return true;
    }

    static {
        ChronoUnit chronoUnit = ChronoUnit.NANOS;
    }

    j(String str, long j) {
        this.f11787a = str;
        this.b = t.e((-365243219162L) + j, 365241780471L + j);
        this.c = j;
    }

    @Override // j$.time.temporal.p
    public final t h() {
        return this.b;
    }

    @Override // j$.time.temporal.p
    public final boolean k(m mVar) {
        return mVar.e(a.EPOCH_DAY);
    }

    @Override // j$.time.temporal.p
    public final t n(m mVar) {
        if (mVar.e(a.EPOCH_DAY)) {
            return this.b;
        }
        throw new RuntimeException("Unsupported field: " + this);
    }

    @Override // j$.time.temporal.p
    public final long i(m mVar) {
        return mVar.r(a.EPOCH_DAY) + this.c;
    }

    @Override // j$.time.temporal.p
    public final l l(l lVar, long j) {
        if (!this.b.d(j)) {
            throw new RuntimeException("Invalid value: " + this.f11787a + " " + j);
        }
        return lVar.c(j$.com.android.tools.r8.a.P(j, this.c), a.EPOCH_DAY);
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f11787a;
    }
}
