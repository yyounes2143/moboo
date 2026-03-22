package org.joda.time.base;

import java.io.Serializable;
import java.util.Locale;
import org.joda.time.Chronology;
import org.joda.time.DateTimeUtils;
import org.joda.time.ReadablePartial;
import org.joda.time.convert.ConverterManager;
import org.joda.time.convert.PartialConverter;
import org.joda.time.format.DateTimeFormat;
import org.joda.time.format.DateTimeFormatter;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public abstract class BasePartial extends AbstractPartial implements ReadablePartial, Serializable {
    private static final long serialVersionUID = 2353678632973660L;
    private final Chronology iChronology;
    private final int[] iValues;

    public BasePartial() {
        this(DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), (Chronology) null);
    }

    @Override // org.joda.time.ReadablePartial
    public Chronology getChronology() {
        return this.iChronology;
    }

    @Override // org.joda.time.ReadablePartial
    public int getValue(int i) {
        return this.iValues[i];
    }

    @Override // org.joda.time.base.AbstractPartial
    public int[] getValues() {
        return (int[]) this.iValues.clone();
    }

    public void setValue(int i, int i2) {
        int[] iArr = getField(i).set(this, i, this.iValues, i2);
        int[] iArr2 = this.iValues;
        System.arraycopy(iArr, 0, iArr2, 0, iArr2.length);
    }

    public void setValues(int[] iArr) {
        getChronology().validate(this, iArr);
        int[] iArr2 = this.iValues;
        System.arraycopy(iArr, 0, iArr2, 0, iArr2.length);
    }

    @Override // org.joda.time.ReadablePartial
    public abstract /* synthetic */ int size();

    public String toString(String str) {
        if (str == null) {
            return toString();
        }
        return DateTimeFormat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str).Wwwwwwwwwwwwwwwwwwwwwww(this);
    }

    public BasePartial(Chronology chronology) {
        this(DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), chronology);
    }

    public BasePartial(long j) {
        this(j, (Chronology) null);
    }

    public String toString(String str, Locale locale) throws IllegalArgumentException {
        if (str == null) {
            return toString();
        }
        return DateTimeFormat.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str).Wwwwwwwwwwwww(locale).Wwwwwwwwwwwwwwwwwwwwwww(this);
    }

    public BasePartial(long j, Chronology chronology) {
        Chronology Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(chronology);
        this.iChronology = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.withUTC();
        this.iValues = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.get(this, j);
    }

    public BasePartial(Object obj, Chronology chronology) {
        PartialConverter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ConverterManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj);
        Chronology Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj, chronology));
        this.iChronology = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.withUTC();
        this.iValues = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, obj, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
    }

    public BasePartial(Object obj, Chronology chronology, DateTimeFormatter dateTimeFormatter) {
        PartialConverter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ConverterManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj);
        Chronology Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(obj, chronology));
        this.iChronology = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.withUTC();
        this.iValues = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwww(this, obj, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, dateTimeFormatter);
    }

    public BasePartial(int[] iArr, Chronology chronology) {
        Chronology Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DateTimeUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(chronology);
        this.iChronology = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.withUTC();
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.validate(this, iArr);
        this.iValues = iArr;
    }

    public BasePartial(BasePartial basePartial, int[] iArr) {
        this.iChronology = basePartial.iChronology;
        this.iValues = iArr;
    }

    public BasePartial(BasePartial basePartial, Chronology chronology) {
        this.iChronology = chronology.withUTC();
        this.iValues = basePartial.iValues;
    }
}
