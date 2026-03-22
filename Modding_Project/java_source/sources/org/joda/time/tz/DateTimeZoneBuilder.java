package org.joda.time.tz;

import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.io.DataInput;
import java.io.DataInputStream;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintStream;
import java.text.DateFormatSymbols;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Locale;
import kotlinx.coroutines.internal.LockFreeTaskQueueCore;
import org.joda.time.Chronology;
import org.joda.time.DateTime;
import org.joda.time.DateTimeUtils;
import org.joda.time.DateTimeZone;
import org.joda.time.Period;
import org.joda.time.PeriodType;
import org.joda.time.chrono.ISOChronology;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class DateTimeZoneBuilder {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ArrayList<RuleSet> f14006Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList<>(10);

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class DSTZone extends DateTimeZone {
        private static final long serialVersionUID = 6941492635554961361L;
        final Recurrence iEndRecurrence;
        final int iStandardOffset;
        final Recurrence iStartRecurrence;

        public DSTZone(String str, int i, Recurrence recurrence, Recurrence recurrence2) {
            super(str);
            this.iStandardOffset = i;
            this.iStartRecurrence = recurrence;
            this.iEndRecurrence = recurrence2;
        }

        public static DSTZone readFrom(DataInput dataInput, String str) throws IOException {
            return new DSTZone(str, (int) DateTimeZoneBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dataInput), Recurrence.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dataInput), Recurrence.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dataInput));
        }

        public final Recurrence Wwwwwwwwwwwwwwwwwwwwwwwwww(long j) {
            long j2;
            int i = this.iStandardOffset;
            Recurrence recurrence = this.iStartRecurrence;
            Recurrence recurrence2 = this.iEndRecurrence;
            try {
                j2 = recurrence.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j, i, recurrence2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            } catch (ArithmeticException | IllegalArgumentException unused) {
                j2 = j;
            }
            try {
                j = recurrence2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j, i, recurrence.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            } catch (ArithmeticException | IllegalArgumentException unused2) {
            }
            if (j2 <= j) {
                return recurrence2;
            }
            return recurrence;
        }

        @Override // org.joda.time.DateTimeZone
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof DSTZone) {
                DSTZone dSTZone = (DSTZone) obj;
                if (getID().equals(dSTZone.getID()) && this.iStandardOffset == dSTZone.iStandardOffset && this.iStartRecurrence.equals(dSTZone.iStartRecurrence) && this.iEndRecurrence.equals(dSTZone.iEndRecurrence)) {
                    return true;
                }
            }
            return false;
        }

        @Override // org.joda.time.DateTimeZone
        public String getNameKey(long j) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwww(j).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        @Override // org.joda.time.DateTimeZone
        public int getOffset(long j) {
            return this.iStandardOffset + Wwwwwwwwwwwwwwwwwwwwwwwwww(j).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }

        @Override // org.joda.time.DateTimeZone
        public int getStandardOffset(long j) {
            return this.iStandardOffset;
        }

        @Override // org.joda.time.DateTimeZone
        public boolean isFixed() {
            return false;
        }

        /* JADX WARN: Code restructure failed: missing block: B:7:0x0016, code lost:
            if (r5 < 0) goto L8;
         */
        /* JADX WARN: Removed duplicated region for block: B:18:0x002f  */
        /* JADX WARN: Removed duplicated region for block: B:26:? A[RETURN, SYNTHETIC] */
        @Override // org.joda.time.DateTimeZone
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long nextTransition(long r9) {
            /*
                r8 = this;
                int r0 = r8.iStandardOffset
                org.joda.time.tz.DateTimeZoneBuilder$Recurrence r1 = r8.iStartRecurrence
                org.joda.time.tz.DateTimeZoneBuilder$Recurrence r2 = r8.iEndRecurrence
                r3 = 0
                int r5 = r2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L18
                long r5 = r1.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r9, r0, r5)     // Catch: java.lang.Throwable -> L18
                int r7 = (r9 > r3 ? 1 : (r9 == r3 ? 0 : -1))
                if (r7 <= 0) goto L19
                int r7 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
                if (r7 >= 0) goto L19
            L18:
                r5 = r9
            L19:
                int r1 = r1.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L2b
                long r0 = r2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r9, r0, r1)     // Catch: java.lang.Throwable -> L2b
                int r2 = (r9 > r3 ? 1 : (r9 == r3 ? 0 : -1))
                if (r2 <= 0) goto L2a
                int r2 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
                if (r2 >= 0) goto L2a
                goto L2b
            L2a:
                r9 = r0
            L2b:
                int r0 = (r5 > r9 ? 1 : (r5 == r9 ? 0 : -1))
                if (r0 <= 0) goto L30
                r5 = r9
            L30:
                return r5
            */
            throw new UnsupportedOperationException("Method not decompiled: org.joda.time.tz.DateTimeZoneBuilder.DSTZone.nextTransition(long):long");
        }

        /* JADX WARN: Code restructure failed: missing block: B:7:0x0019, code lost:
            if (r7 > 0) goto L8;
         */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0033  */
        @Override // org.joda.time.DateTimeZone
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long previousTransition(long r11) {
            /*
                r10 = this;
                r0 = 1
                long r11 = r11 + r0
                int r2 = r10.iStandardOffset
                org.joda.time.tz.DateTimeZoneBuilder$Recurrence r3 = r10.iStartRecurrence
                org.joda.time.tz.DateTimeZoneBuilder$Recurrence r4 = r10.iEndRecurrence
                r5 = 0
                int r7 = r4.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L1b
                long r7 = r3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r11, r2, r7)     // Catch: java.lang.Throwable -> L1b
                int r9 = (r11 > r5 ? 1 : (r11 == r5 ? 0 : -1))
                if (r9 >= 0) goto L1c
                int r9 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
                if (r9 <= 0) goto L1c
            L1b:
                r7 = r11
            L1c:
                int r3 = r3.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: java.lang.Throwable -> L2e
                long r2 = r4.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r11, r2, r3)     // Catch: java.lang.Throwable -> L2e
                int r4 = (r11 > r5 ? 1 : (r11 == r5 ? 0 : -1))
                if (r4 >= 0) goto L2d
                int r4 = (r2 > r5 ? 1 : (r2 == r5 ? 0 : -1))
                if (r4 <= 0) goto L2d
                goto L2e
            L2d:
                r11 = r2
            L2e:
                int r2 = (r7 > r11 ? 1 : (r7 == r11 ? 0 : -1))
                if (r2 <= 0) goto L33
                goto L34
            L33:
                r7 = r11
            L34:
                long r7 = r7 - r0
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: org.joda.time.tz.DateTimeZoneBuilder.DSTZone.previousTransition(long):long");
        }

        public void writeTo(DataOutput dataOutput) throws IOException {
            DateTimeZoneBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dataOutput, this.iStandardOffset);
            this.iStartRecurrence.Wwwwwwwwwwwwwwwwwwwwwwwwwww(dataOutput);
            this.iEndRecurrence.Wwwwwwwwwwwwwwwwwwwwwwwwwww(dataOutput);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class OfYear {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f14007Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final boolean f14008Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f14009Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f14010Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f14011Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final char f14012Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public OfYear(char c, int i, int i2, int i3, boolean z, int i4) {
            if (c != 'u' && c != 'w' && c != 's') {
                throw new IllegalArgumentException("Unknown mode: " + c);
            }
            this.f14012Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = c;
            this.f14011Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
            this.f14010Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i2;
            this.f14009Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i3;
            this.f14008Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
            this.f14007Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = i4;
        }

        public static OfYear Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DataInput dataInput) throws IOException {
            return new OfYear((char) dataInput.readUnsignedByte(), dataInput.readUnsignedByte(), dataInput.readByte(), dataInput.readUnsignedByte(), dataInput.readBoolean(), (int) DateTimeZoneBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dataInput));
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwww(DataOutput dataOutput) throws IOException {
            dataOutput.writeByte(this.f14012Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            dataOutput.writeByte(this.f14011Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            dataOutput.writeByte(this.f14010Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            dataOutput.writeByte(this.f14009Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            dataOutput.writeBoolean(this.f14008Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            DateTimeZoneBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dataOutput, this.f14007Wwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }

        public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Chronology chronology, long j) {
            int i = this.f14009Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww - chronology.dayOfWeek().get(j);
            if (i != 0) {
                if (this.f14008Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    if (i < 0) {
                        i += 7;
                    }
                } else if (i > 0) {
                    i -= 7;
                }
                return chronology.dayOfWeek().add(j, i);
            }
            return j;
        }

        public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Chronology chronology, long j) {
            try {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(chronology, j);
            } catch (IllegalArgumentException e) {
                if (this.f14011Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == 2 && this.f14010Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == 29) {
                    while (!chronology.year().isLeap(j)) {
                        j = chronology.year().add(j, -1);
                    }
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(chronology, j);
                }
                throw e;
            }
        }

        public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Chronology chronology, long j) {
            try {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(chronology, j);
            } catch (IllegalArgumentException e) {
                if (this.f14011Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == 2 && this.f14010Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == 29) {
                    while (!chronology.year().isLeap(j)) {
                        j = chronology.year().add(j, 1);
                    }
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(chronology, j);
                }
                throw e;
            }
        }

        public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Chronology chronology, long j) {
            if (this.f14010Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww >= 0) {
                return chronology.dayOfMonth().set(j, this.f14010Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            }
            return chronology.dayOfMonth().add(chronology.monthOfYear().add(chronology.dayOfMonth().set(j, 1), 1), this.f14010Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }

        public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j, int i, int i2) {
            char c = this.f14012Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (c == 'w') {
                i += i2;
            } else if (c != 's') {
                i = 0;
            }
            long j2 = i;
            long j3 = j + j2;
            ISOChronology instanceUTC = ISOChronology.getInstanceUTC();
            long Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(instanceUTC, instanceUTC.millisOfDay().add(instanceUTC.millisOfDay().set(instanceUTC.monthOfYear().set(j3, this.f14011Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww), 0), this.f14007Wwwwwwwwwwwwwwwwwwwwwwwwwwwww));
            if (this.f14009Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == 0) {
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 >= j3) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(instanceUTC, instanceUTC.year().add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2, -1));
                }
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww(instanceUTC, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 >= j3) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww(instanceUTC, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(instanceUTC, instanceUTC.monthOfYear().set(instanceUTC.year().add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2, -1), this.f14011Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)));
                }
            }
            return instanceUTC.millisOfDay().add(instanceUTC.millisOfDay().set(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2, 0), this.f14007Wwwwwwwwwwwwwwwwwwwwwwwwwwwww) - j2;
        }

        public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j, int i, int i2) {
            char c = this.f14012Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (c == 'w') {
                i += i2;
            } else if (c != 's') {
                i = 0;
            }
            long j2 = i;
            long j3 = j + j2;
            ISOChronology instanceUTC = ISOChronology.getInstanceUTC();
            long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(instanceUTC, instanceUTC.millisOfDay().add(instanceUTC.millisOfDay().set(instanceUTC.monthOfYear().set(j3, this.f14011Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww), 0), Math.min(this.f14007Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, 86399999)));
            if (this.f14009Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == 0) {
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 <= j3) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(instanceUTC, instanceUTC.year().add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, 1));
                }
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww(instanceUTC, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 <= j3) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwww(instanceUTC, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(instanceUTC, instanceUTC.monthOfYear().set(instanceUTC.year().add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, 1), this.f14011Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)));
                }
            }
            return instanceUTC.millisOfDay().add(instanceUTC.millisOfDay().set(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, 0), this.f14007Wwwwwwwwwwwwwwwwwwwwwwwwwwwww) - j2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof OfYear) {
                OfYear ofYear = (OfYear) obj;
                if (this.f14012Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == ofYear.f14012Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f14011Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == ofYear.f14011Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f14010Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == ofYear.f14010Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f14009Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == ofYear.f14009Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f14008Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww == ofYear.f14008Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f14007Wwwwwwwwwwwwwwwwwwwwwwwwwwwww == ofYear.f14007Wwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            return "[OfYear]\nMode: " + this.f14012Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + "\nMonthOfYear: " + this.f14011Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + "\nDayOfMonth: " + this.f14010Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + "\nDayOfWeek: " + this.f14009Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + "\nAdvanceDayOfWeek: " + this.f14008Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww + "\nMillisOfDay: " + this.f14007Wwwwwwwwwwwwwwwwwwwwwwwwwwwww + '\n';
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class PrecalculatedZone extends DateTimeZone {
        private static final long serialVersionUID = 7811976468055766265L;
        private final String[] iNameKeys;
        private final int[] iStandardOffsets;
        private final DSTZone iTailZone;
        private final long[] iTransitions;
        private final int[] iWallOffsets;

        public PrecalculatedZone(String str, long[] jArr, int[] iArr, int[] iArr2, String[] strArr, DSTZone dSTZone) {
            super(str);
            this.iTransitions = jArr;
            this.iWallOffsets = iArr;
            this.iStandardOffsets = iArr2;
            this.iNameKeys = strArr;
            this.iTailZone = dSTZone;
        }

        public static PrecalculatedZone create(String str, boolean z, ArrayList<Transition> arrayList, DSTZone dSTZone) {
            Object[][] zoneStrings;
            DSTZone dSTZone2;
            String str2;
            DSTZone dSTZone3;
            int[] iArr;
            int[] iArr2;
            int i;
            int size = arrayList.size();
            if (size != 0) {
                long[] jArr = new long[size];
                int[] iArr3 = new int[size];
                int[] iArr4 = new int[size];
                String[] strArr = new String[size];
                int i2 = 0;
                Transition transition = null;
                int i3 = 0;
                while (i3 < size) {
                    Transition transition2 = arrayList.get(i3);
                    if (transition2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(transition)) {
                        jArr[i3] = transition2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        iArr3[i3] = transition2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        iArr4[i3] = transition2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        strArr[i3] = transition2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        i3++;
                        transition = transition2;
                    } else {
                        throw new IllegalArgumentException(str);
                    }
                }
                Object[] objArr = new String[5];
                for (Object[] objArr2 : new DateFormatSymbols(Locale.ENGLISH).getZoneStrings()) {
                    if (objArr2 != null && objArr2.length == 5 && str.equals(objArr2[0])) {
                        objArr = objArr2;
                    }
                }
                ISOChronology instanceUTC = ISOChronology.getInstanceUTC();
                while (i2 < size - 1) {
                    String str3 = strArr[i2];
                    int i4 = i2 + 1;
                    String str4 = strArr[i4];
                    int i5 = size;
                    int i6 = i2;
                    long j = iArr3[i4];
                    long j2 = iArr4[i6];
                    long j3 = iArr4[i4];
                    Period period = new Period(jArr[i6], jArr[i4], PeriodType.yearMonthDay(), instanceUTC);
                    ISOChronology iSOChronology = instanceUTC;
                    int i7 = (iArr3[i2] > j ? 1 : (iArr3[i2] == j ? 0 : -1));
                    if (i7 != 0 && j2 == j3 && str3.equals(str4) && period.getYears() == 0 && period.getMonths() > 4 && period.getMonths() < 8 && str3.equals(objArr[2]) && str3.equals(objArr[4])) {
                        if (ZoneInfoLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                            System.out.getClass();
                            PrintStream printStream = System.out;
                            iArr = iArr3;
                            iArr2 = iArr4;
                            new DateTime(jArr[i6], iSOChronology).toString();
                            new DateTime(jArr[i4], iSOChronology).toString();
                            printStream.getClass();
                        } else {
                            iArr = iArr3;
                            iArr2 = iArr4;
                        }
                        if (i7 > 0) {
                            strArr[i6] = (str3 + "-Summer").intern();
                        } else if (i7 < 0) {
                            strArr[i4] = (str4 + "-Summer").intern();
                            i = i4;
                            i2 = i + 1;
                            instanceUTC = iSOChronology;
                            iArr3 = iArr;
                            iArr4 = iArr2;
                            size = i5;
                        }
                    } else {
                        iArr = iArr3;
                        iArr2 = iArr4;
                    }
                    i = i6;
                    i2 = i + 1;
                    instanceUTC = iSOChronology;
                    iArr3 = iArr;
                    iArr4 = iArr2;
                    size = i5;
                }
                int[] iArr5 = iArr3;
                int[] iArr6 = iArr4;
                if (dSTZone != null && dSTZone.iStartRecurrence.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().equals(dSTZone.iEndRecurrence.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
                    if (ZoneInfoLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                        PrintStream printStream2 = System.out;
                        dSTZone.iStartRecurrence.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                        printStream2.getClass();
                    }
                    if (dSTZone.iStartRecurrence.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() > 0) {
                        dSTZone3 = new DSTZone(dSTZone.getID(), dSTZone.iStandardOffset, dSTZone.iStartRecurrence.Wwwwwwwwwwwwwwwwwwwwwwwwwwww("-Summer"), dSTZone.iEndRecurrence);
                    } else {
                        dSTZone3 = new DSTZone(dSTZone.getID(), dSTZone.iStandardOffset, dSTZone.iStartRecurrence, dSTZone.iEndRecurrence.Wwwwwwwwwwwwwwwwwwwwwwwwwwww("-Summer"));
                    }
                    dSTZone2 = dSTZone3;
                } else {
                    dSTZone2 = dSTZone;
                }
                if (z) {
                    str2 = str;
                } else {
                    str2 = "";
                }
                return new PrecalculatedZone(str2, jArr, iArr5, iArr6, strArr, dSTZone2);
            }
            throw new IllegalArgumentException();
        }

        public static PrecalculatedZone readFrom(DataInput dataInput, String str) throws IOException {
            DSTZone dSTZone;
            int readUnsignedByte;
            int readUnsignedShort = dataInput.readUnsignedShort();
            String[] strArr = new String[readUnsignedShort];
            for (int i = 0; i < readUnsignedShort; i++) {
                strArr[i] = dataInput.readUTF();
            }
            int readInt = dataInput.readInt();
            long[] jArr = new long[readInt];
            int[] iArr = new int[readInt];
            int[] iArr2 = new int[readInt];
            String[] strArr2 = new String[readInt];
            for (int i2 = 0; i2 < readInt; i2++) {
                jArr[i2] = DateTimeZoneBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dataInput);
                iArr[i2] = (int) DateTimeZoneBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dataInput);
                iArr2[i2] = (int) DateTimeZoneBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dataInput);
                if (readUnsignedShort < 256) {
                    try {
                        readUnsignedByte = dataInput.readUnsignedByte();
                    } catch (ArrayIndexOutOfBoundsException unused) {
                        throw new IOException("Invalid encoding");
                    }
                } else {
                    readUnsignedByte = dataInput.readUnsignedShort();
                }
                strArr2[i2] = strArr[readUnsignedByte];
            }
            if (dataInput.readBoolean()) {
                dSTZone = DSTZone.readFrom(dataInput, str);
            } else {
                dSTZone = null;
            }
            return new PrecalculatedZone(str, jArr, iArr, iArr2, strArr2, dSTZone);
        }

        @Override // org.joda.time.DateTimeZone
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof PrecalculatedZone) {
                PrecalculatedZone precalculatedZone = (PrecalculatedZone) obj;
                if (getID().equals(precalculatedZone.getID()) && Arrays.equals(this.iTransitions, precalculatedZone.iTransitions) && Arrays.equals(this.iNameKeys, precalculatedZone.iNameKeys) && Arrays.equals(this.iWallOffsets, precalculatedZone.iWallOffsets) && Arrays.equals(this.iStandardOffsets, precalculatedZone.iStandardOffsets)) {
                    DSTZone dSTZone = this.iTailZone;
                    DSTZone dSTZone2 = precalculatedZone.iTailZone;
                    if (dSTZone != null ? dSTZone.equals(dSTZone2) : dSTZone2 == null) {
                        return true;
                    }
                }
            }
            return false;
        }

        @Override // org.joda.time.DateTimeZone
        public String getNameKey(long j) {
            long[] jArr = this.iTransitions;
            int binarySearch = Arrays.binarySearch(jArr, j);
            if (binarySearch >= 0) {
                return this.iNameKeys[binarySearch];
            }
            int i = ~binarySearch;
            if (i < jArr.length) {
                if (i > 0) {
                    return this.iNameKeys[i - 1];
                }
                return "UTC";
            }
            DSTZone dSTZone = this.iTailZone;
            if (dSTZone == null) {
                return this.iNameKeys[i - 1];
            }
            return dSTZone.getNameKey(j);
        }

        @Override // org.joda.time.DateTimeZone
        public int getOffset(long j) {
            long[] jArr = this.iTransitions;
            int binarySearch = Arrays.binarySearch(jArr, j);
            if (binarySearch >= 0) {
                return this.iWallOffsets[binarySearch];
            }
            int i = ~binarySearch;
            if (i < jArr.length) {
                if (i > 0) {
                    return this.iWallOffsets[i - 1];
                }
                return 0;
            }
            DSTZone dSTZone = this.iTailZone;
            if (dSTZone == null) {
                return this.iWallOffsets[i - 1];
            }
            return dSTZone.getOffset(j);
        }

        @Override // org.joda.time.DateTimeZone
        public int getStandardOffset(long j) {
            long[] jArr = this.iTransitions;
            int binarySearch = Arrays.binarySearch(jArr, j);
            if (binarySearch >= 0) {
                return this.iStandardOffsets[binarySearch];
            }
            int i = ~binarySearch;
            if (i < jArr.length) {
                if (i > 0) {
                    return this.iStandardOffsets[i - 1];
                }
                return 0;
            }
            DSTZone dSTZone = this.iTailZone;
            if (dSTZone == null) {
                return this.iStandardOffsets[i - 1];
            }
            return dSTZone.getStandardOffset(j);
        }

        public boolean isCachable() {
            if (this.iTailZone != null) {
                return true;
            }
            long[] jArr = this.iTransitions;
            if (jArr.length <= 1) {
                return false;
            }
            double d = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
            int i = 0;
            for (int i2 = 1; i2 < jArr.length; i2++) {
                long j = jArr[i2] - jArr[i2 - 1];
                if (j < 63158400000L) {
                    d += j;
                    i++;
                }
            }
            if (i > 0 && (d / i) / 8.64E7d >= 25.0d) {
                return true;
            }
            return false;
        }

        @Override // org.joda.time.DateTimeZone
        public boolean isFixed() {
            return false;
        }

        @Override // org.joda.time.DateTimeZone
        public long nextTransition(long j) {
            int i;
            long[] jArr = this.iTransitions;
            int binarySearch = Arrays.binarySearch(jArr, j);
            if (binarySearch >= 0) {
                i = binarySearch + 1;
            } else {
                i = ~binarySearch;
            }
            if (i < jArr.length) {
                return jArr[i];
            }
            DSTZone dSTZone = this.iTailZone;
            if (dSTZone == null) {
                return j;
            }
            long j2 = jArr[jArr.length - 1];
            if (j < j2) {
                j = j2;
            }
            return dSTZone.nextTransition(j);
        }

        @Override // org.joda.time.DateTimeZone
        public long previousTransition(long j) {
            long[] jArr = this.iTransitions;
            int binarySearch = Arrays.binarySearch(jArr, j);
            if (binarySearch >= 0) {
                if (j > Long.MIN_VALUE) {
                    return j - 1;
                }
            } else {
                int i = ~binarySearch;
                if (i < jArr.length) {
                    if (i > 0) {
                        long j2 = jArr[i - 1];
                        if (j2 > Long.MIN_VALUE) {
                            return j2 - 1;
                        }
                    }
                } else {
                    DSTZone dSTZone = this.iTailZone;
                    if (dSTZone != null) {
                        long previousTransition = dSTZone.previousTransition(j);
                        if (previousTransition < j) {
                            return previousTransition;
                        }
                    }
                    long j3 = jArr[i - 1];
                    if (j3 > Long.MIN_VALUE) {
                        return j3 - 1;
                    }
                }
            }
            return j;
        }

        public void writeTo(DataOutput dataOutput) throws IOException {
            int length = this.iTransitions.length;
            HashSet<String> hashSet = new HashSet();
            boolean z = false;
            for (int i = 0; i < length; i++) {
                hashSet.add(this.iNameKeys[i]);
            }
            int size = hashSet.size();
            if (size <= 65535) {
                String[] strArr = new String[size];
                int i2 = 0;
                for (String str : hashSet) {
                    strArr[i2] = str;
                    i2++;
                }
                dataOutput.writeShort(size);
                for (int i3 = 0; i3 < size; i3++) {
                    dataOutput.writeUTF(strArr[i3]);
                }
                dataOutput.writeInt(length);
                for (int i4 = 0; i4 < length; i4++) {
                    DateTimeZoneBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dataOutput, this.iTransitions[i4]);
                    DateTimeZoneBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dataOutput, this.iWallOffsets[i4]);
                    DateTimeZoneBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dataOutput, this.iStandardOffsets[i4]);
                    String str2 = this.iNameKeys[i4];
                    int i5 = 0;
                    while (true) {
                        if (i5 >= size) {
                            break;
                        } else if (strArr[i5].equals(str2)) {
                            if (size < 256) {
                                dataOutput.writeByte(i5);
                            } else {
                                dataOutput.writeShort(i5);
                            }
                        } else {
                            i5++;
                        }
                    }
                }
                if (this.iTailZone != null) {
                    z = true;
                }
                dataOutput.writeBoolean(z);
                DSTZone dSTZone = this.iTailZone;
                if (dSTZone != null) {
                    dSTZone.writeTo(dataOutput);
                    return;
                }
                return;
            }
            throw new UnsupportedOperationException("String pool is too large");
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class Recurrence {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f14013Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f14014Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final OfYear f14015Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Recurrence(OfYear ofYear, String str, int i) {
            this.f14015Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = ofYear;
            this.f14014Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
            this.f14013Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        }

        public static Recurrence Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DataInput dataInput) throws IOException {
            return new Recurrence(OfYear.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dataInput), dataInput.readUTF(), (int) DateTimeZoneBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dataInput));
        }

        public void Wwwwwwwwwwwwwwwwwwwwwwwwwww(DataOutput dataOutput) throws IOException {
            this.f14015Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww(dataOutput);
            dataOutput.writeUTF(this.f14014Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            DateTimeZoneBuilder.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dataOutput, this.f14013Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }

        public Recurrence Wwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwww((this.f14014Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + str).intern());
        }

        public Recurrence Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
            return new Recurrence(this.f14015Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, str, this.f14013Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        }

        public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j, int i, int i2) {
            return this.f14015Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j, i, i2);
        }

        public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j, int i, int i2) {
            return this.f14015Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(j, i, i2);
        }

        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f14013Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f14014Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Recurrence) {
                Recurrence recurrence = (Recurrence) obj;
                if (this.f14013Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == recurrence.f14013Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f14014Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(recurrence.f14014Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && this.f14015Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(recurrence.f14015Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                    return true;
                }
            }
            return false;
        }

        public String toString() {
            return this.f14015Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + " named " + this.f14014Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + " at " + this.f14013Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class Rule {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f14016Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f14017Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Recurrence f14018Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public String toString() {
            return this.f14017Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + " to " + this.f14016Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + " using " + this.f14018Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class RuleSet {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public static final int f14019Wwwwwwwwwwwwwwwwwwwwwwwwwwww = ISOChronology.getInstanceUTC().year().get(DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) + 100;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public OfYear f14020Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f14022Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public String f14023Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f14025Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public ArrayList<Rule> f14024Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ArrayList<>(10);

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f14021Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Integer.MAX_VALUE;

        public String toString() {
            return this.f14023Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + " initial: " + this.f14022Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + " std: " + this.f14025Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + " upper: " + this.f14021Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww + " " + this.f14020Wwwwwwwwwwwwwwwwwwwwwwwwwwwww + " " + this.f14024Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class Transition {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f14026Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final int f14027Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f14028Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final long f14029Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Transition transition) {
            if (transition == null) {
                return true;
            }
            if (this.f14029Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww > transition.f14029Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                if (this.f14027Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != transition.f14027Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww || this.f14026Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != transition.f14026Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww || !this.f14028Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.equals(transition.f14028Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
                    return true;
                }
                return false;
            }
            return false;
        }

        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f14027Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f14026Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f14028Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f14029Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public String toString() {
            return new DateTime(this.f14029Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, DateTimeZone.UTC) + " " + this.f14026Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + " " + this.f14027Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DataOutput dataOutput, long j) throws IOException {
        int i;
        if (j % 1800000 == 0) {
            long j2 = j / 1800000;
            if (((j2 << 58) >> 58) == j2) {
                dataOutput.writeByte((int) (j2 & 63));
                return;
            }
        }
        if (j % 60000 == 0) {
            long j3 = j / 60000;
            if (((j3 << 34) >> 34) == j3) {
                dataOutput.writeInt(((int) (LockFreeTaskQueueCore.HEAD_MASK & j3)) | 1073741824);
                return;
            }
        }
        if (j % 1000 == 0) {
            long j4 = j / 1000;
            if (((j4 << 26) >> 26) == j4) {
                dataOutput.writeByte(((int) ((j4 >> 32) & 63)) | 128);
                dataOutput.writeInt((int) j4);
                return;
            }
        }
        if (j < 0) {
            i = 255;
        } else {
            i = 192;
        }
        dataOutput.writeByte(i);
        dataOutput.writeLong(j);
    }

    public static long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DataInput dataInput) throws IOException {
        long readUnsignedByte;
        long j;
        int readUnsignedByte2 = dataInput.readUnsignedByte();
        int i = readUnsignedByte2 >> 6;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    readUnsignedByte = (readUnsignedByte2 << 26) >> 26;
                    j = 1800000;
                } else {
                    return dataInput.readLong();
                }
            } else {
                readUnsignedByte = ((readUnsignedByte2 << 58) >> 26) | (dataInput.readUnsignedByte() << 24) | (dataInput.readUnsignedByte() << 16) | (dataInput.readUnsignedByte() << 8) | dataInput.readUnsignedByte();
                j = 1000;
            }
        } else {
            readUnsignedByte = dataInput.readUnsignedByte() | ((readUnsignedByte2 << 26) >> 2) | (dataInput.readUnsignedByte() << 16) | (dataInput.readUnsignedByte() << 8);
            j = 60000;
        }
        return readUnsignedByte * j;
    }

    public static DateTimeZone Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InputStream inputStream, String str) throws IOException {
        if (inputStream instanceof DataInput) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww((DataInput) inputStream, str);
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new DataInputStream(inputStream), str);
    }

    public static DateTimeZone Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(DataInput dataInput, String str) throws IOException {
        int readUnsignedByte = dataInput.readUnsignedByte();
        if (readUnsignedByte != 67) {
            if (readUnsignedByte != 70) {
                if (readUnsignedByte == 80) {
                    return PrecalculatedZone.readFrom(dataInput, str);
                }
                throw new IOException("Invalid encoding");
            }
            FixedDateTimeZone fixedDateTimeZone = new FixedDateTimeZone(str, dataInput.readUTF(), (int) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dataInput), (int) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dataInput));
            DateTimeZone dateTimeZone = DateTimeZone.UTC;
            if (fixedDateTimeZone.equals(dateTimeZone)) {
                return dateTimeZone;
            }
            return fixedDateTimeZone;
        }
        return CachedDateTimeZone.forZone(PrecalculatedZone.readFrom(dataInput, str));
    }
}
