package org.joda.time.chrono;

import com.vungle.ads.internal.signals.SignalManager;
import org.joda.time.Chronology;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
abstract class BasicGJChronology extends BasicChronology {
    private static final long serialVersionUID = 538276888268L;
    public static final int[] Illlllllllllllllllllll = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
    public static final int[] Illllllllllllllllllll = {31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
    public static final long[] Illlllllllllllllllll = new long[12];
    public static final long[] Illllllllllllllllll = new long[12];

    static {
        long j = 0;
        int i = 0;
        long j2 = 0;
        while (i < 11) {
            j += Illlllllllllllllllllll[i] * SignalManager.TWENTY_FOUR_HOURS_MILLIS;
            int i2 = i + 1;
            Illlllllllllllllllll[i2] = j;
            j2 += Illllllllllllllllllll[i] * SignalManager.TWENTY_FOUR_HOURS_MILLIS;
            Illllllllllllllllll[i2] = j2;
            i = i2;
        }
    }

    public BasicGJChronology(Chronology chronology, Object obj, int i) {
        super(chronology, obj, i);
    }

    @Override // org.joda.time.chrono.BasicChronology
    public int getDaysInMonthMax(int i) {
        return Illllllllllllllllllll[i - 1];
    }

    @Override // org.joda.time.chrono.BasicChronology
    public int getDaysInMonthMaxForSet(long j, int i) {
        if (i <= 28 && i >= 1) {
            return 28;
        }
        return getDaysInMonthMax(j);
    }

    @Override // org.joda.time.chrono.BasicChronology
    public int getDaysInYearMonth(int i, int i2) {
        if (isLeapYear(i)) {
            return Illllllllllllllllllll[i2 - 1];
        }
        return Illlllllllllllllllllll[i2 - 1];
    }

    @Override // org.joda.time.chrono.BasicChronology
    public int getMonthOfYear(long j, int i) {
        int yearMillis = (int) ((j - getYearMillis(i)) >> 10);
        if (isLeapYear(i)) {
            if (yearMillis < 15356250) {
                if (yearMillis < 7678125) {
                    if (yearMillis < 2615625) {
                        return 1;
                    }
                    if (yearMillis >= 5062500) {
                        return 3;
                    }
                    return 2;
                } else if (yearMillis < 10209375) {
                    return 4;
                } else {
                    if (yearMillis >= 12825000) {
                        return 6;
                    }
                    return 5;
                }
            } else if (yearMillis < 23118750) {
                if (yearMillis < 17971875) {
                    return 7;
                }
                if (yearMillis >= 20587500) {
                    return 9;
                }
                return 8;
            } else if (yearMillis < 25734375) {
                return 10;
            } else {
                if (yearMillis >= 28265625) {
                    return 12;
                }
                return 11;
            }
        } else if (yearMillis < 15271875) {
            if (yearMillis < 7593750) {
                if (yearMillis < 2615625) {
                    return 1;
                }
                if (yearMillis >= 4978125) {
                    return 3;
                }
                return 2;
            } else if (yearMillis < 10125000) {
                return 4;
            } else {
                if (yearMillis >= 12740625) {
                    return 6;
                }
                return 5;
            }
        } else if (yearMillis < 23034375) {
            if (yearMillis < 17887500) {
                return 7;
            }
            if (yearMillis >= 20503125) {
                return 9;
            }
            return 8;
        } else if (yearMillis < 25650000) {
            return 10;
        } else {
            if (yearMillis >= 28181250) {
                return 12;
            }
            return 11;
        }
    }

    @Override // org.joda.time.chrono.BasicChronology
    public long getTotalMillisByYearMonth(int i, int i2) {
        if (isLeapYear(i)) {
            return Illllllllllllllllll[i2 - 1];
        }
        return Illlllllllllllllllll[i2 - 1];
    }

    @Override // org.joda.time.chrono.BasicChronology
    public long getYearDifference(long j, long j2) {
        int year = getYear(j);
        int year2 = getYear(j2);
        long yearMillis = j - getYearMillis(year);
        long yearMillis2 = j2 - getYearMillis(year2);
        if (yearMillis2 >= 5097600000L) {
            if (isLeapYear(year2)) {
                if (!isLeapYear(year)) {
                    yearMillis2 -= SignalManager.TWENTY_FOUR_HOURS_MILLIS;
                }
            } else if (yearMillis >= 5097600000L && isLeapYear(year)) {
                yearMillis -= SignalManager.TWENTY_FOUR_HOURS_MILLIS;
            }
        }
        int i = year - year2;
        if (yearMillis < yearMillis2) {
            i--;
        }
        return i;
    }

    @Override // org.joda.time.chrono.BasicChronology
    public boolean isLeapDay(long j) {
        if (dayOfMonth().get(j) == 29 && monthOfYear().isLeap(j)) {
            return true;
        }
        return false;
    }

    @Override // org.joda.time.chrono.BasicChronology
    public long setYear(long j, int i) {
        int year = getYear(j);
        int dayOfYear = getDayOfYear(j, year);
        int millisOfDay = getMillisOfDay(j);
        if (dayOfYear > 59) {
            if (isLeapYear(year)) {
                if (!isLeapYear(i)) {
                    dayOfYear--;
                }
            } else if (isLeapYear(i)) {
                dayOfYear++;
            }
        }
        return getYearMonthDayMillis(i, 1, dayOfYear) + millisOfDay;
    }
}
