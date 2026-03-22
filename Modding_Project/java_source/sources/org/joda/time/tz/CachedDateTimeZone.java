package org.joda.time.tz;

import io.flutter.embedding.android.KeyboardMap;
import org.joda.time.DateTimeZone;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class CachedDateTimeZone extends DateTimeZone {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final int f13998Wwwwwwwwwwwwwwwwwwwww;
    private static final long serialVersionUID = 5472298452022250685L;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final transient Info[] f13999Wwwwwwwwwwwwwwwwwwwwww;
    private final DateTimeZone iZone;

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class Info {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f14002Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public Info f14003Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final DateTimeZone f14004Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final long f14005Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f14001Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Integer.MIN_VALUE;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f14000Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = Integer.MIN_VALUE;

        public Info(DateTimeZone dateTimeZone, long j) {
            this.f14005Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = j;
            this.f14004Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = dateTimeZone;
        }

        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
            Info info = this.f14003Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (info != null && j >= info.f14005Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                return info.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j);
            }
            if (this.f14000Wwwwwwwwwwwwwwwwwwwwwwwwwwwww == Integer.MIN_VALUE) {
                this.f14000Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = this.f14004Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getStandardOffset(this.f14005Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            }
            return this.f14000Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
            Info info = this.f14003Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (info != null && j >= info.f14005Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                return info.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j);
            }
            if (this.f14001Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww == Integer.MIN_VALUE) {
                this.f14001Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = this.f14004Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getOffset(this.f14005Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            }
            return this.f14001Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
            Info info = this.f14003Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (info != null && j >= info.f14005Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                return info.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j);
            }
            if (this.f14002Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                this.f14002Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = this.f14004Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getNameKey(this.f14005Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            }
            return this.f14002Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    static {
        Integer num;
        int i;
        try {
            num = Integer.getInteger("org.joda.time.tz.CachedDateTimeZone.size");
        } catch (SecurityException unused) {
            num = null;
        }
        if (num == null) {
            i = 512;
        } else {
            int i2 = 0;
            for (int intValue = num.intValue() - 1; intValue > 0; intValue >>= 1) {
                i2++;
            }
            i = 1 << i2;
        }
        f13998Wwwwwwwwwwwwwwwwwwwww = i - 1;
    }

    public CachedDateTimeZone(DateTimeZone dateTimeZone) {
        super(dateTimeZone.getID());
        this.f13999Wwwwwwwwwwwwwwwwwwwwww = new Info[f13998Wwwwwwwwwwwwwwwwwwwww + 1];
        this.iZone = dateTimeZone;
    }

    public static CachedDateTimeZone forZone(DateTimeZone dateTimeZone) {
        if (dateTimeZone instanceof CachedDateTimeZone) {
            return (CachedDateTimeZone) dateTimeZone;
        }
        return new CachedDateTimeZone(dateTimeZone);
    }

    public final Info Wwwwwwwwwwwwwwwwwwwwwwwww(long j) {
        int i = (int) (j >> 32);
        Info[] infoArr = this.f13999Wwwwwwwwwwwwwwwwwwwwww;
        int i2 = f13998Wwwwwwwwwwwwwwwwwwwww & i;
        Info info = infoArr[i2];
        if (info != null && ((int) (info.f14005Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww >> 32)) == i) {
            return info;
        }
        Info Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwww(j);
        infoArr[i2] = Wwwwwwwwwwwwwwwwwwwwwwwwww2;
        return Wwwwwwwwwwwwwwwwwwwwwwwwww2;
    }

    public final Info Wwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
        long j2 = j & (-4294967296L);
        Info info = new Info(this.iZone, j2);
        long j3 = KeyboardMap.kValueMask | j2;
        Info info2 = info;
        while (true) {
            long nextTransition = this.iZone.nextTransition(j2);
            if (nextTransition == j2 || nextTransition > j3) {
                break;
            }
            Info info3 = new Info(this.iZone, nextTransition);
            info2.f14003Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = info3;
            info2 = info3;
            j2 = nextTransition;
        }
        return info;
    }

    @Override // org.joda.time.DateTimeZone
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof CachedDateTimeZone) {
            return this.iZone.equals(((CachedDateTimeZone) obj).iZone);
        }
        return false;
    }

    @Override // org.joda.time.DateTimeZone
    public String getNameKey(long j) {
        return Wwwwwwwwwwwwwwwwwwwwwwwww(j).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j);
    }

    @Override // org.joda.time.DateTimeZone
    public int getOffset(long j) {
        return Wwwwwwwwwwwwwwwwwwwwwwwww(j).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j);
    }

    @Override // org.joda.time.DateTimeZone
    public int getStandardOffset(long j) {
        return Wwwwwwwwwwwwwwwwwwwwwwwww(j).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j);
    }

    public DateTimeZone getUncachedZone() {
        return this.iZone;
    }

    @Override // org.joda.time.DateTimeZone
    public int hashCode() {
        return this.iZone.hashCode();
    }

    @Override // org.joda.time.DateTimeZone
    public boolean isFixed() {
        return this.iZone.isFixed();
    }

    @Override // org.joda.time.DateTimeZone
    public long nextTransition(long j) {
        return this.iZone.nextTransition(j);
    }

    @Override // org.joda.time.DateTimeZone
    public long previousTransition(long j) {
        return this.iZone.previousTransition(j);
    }
}
