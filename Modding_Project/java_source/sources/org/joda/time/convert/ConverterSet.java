package org.joda.time.convert;

import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
class ConverterSet {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Entry[] f13795Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new Entry[16];

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Converter[] f13796Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class Entry {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Converter f13797Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Class<?> f13798Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public Entry(Class<?> cls, Converter converter) {
            this.f13798Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cls;
            this.f13797Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = converter;
        }
    }

    public ConverterSet(Converter[] converterArr) {
        this.f13796Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = converterArr;
    }

    public static Converter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ConverterSet converterSet, Class<?> cls) {
        String name;
        Converter[] converterArr = converterSet.f13796Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int length = converterArr.length;
        int i = length;
        while (true) {
            length--;
            if (length >= 0) {
                Converter converter = converterArr[length];
                Class<?> Wwwwwwwwwwwwwwwwwwwwwwwww2 = converter.Wwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwww2 == cls) {
                    return converter;
                }
                if (Wwwwwwwwwwwwwwwwwwwwwwwww2 == null || (cls != null && !Wwwwwwwwwwwwwwwwwwwwwwwww2.isAssignableFrom(cls))) {
                    converterSet = converterSet.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(length, null);
                    converterArr = converterSet.f13796Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    i = converterArr.length;
                }
            } else if (cls == null || i == 0) {
                return null;
            } else {
                if (i == 1) {
                    return converterArr[0];
                }
                int i2 = i;
                while (true) {
                    i--;
                    if (i < 0) {
                        break;
                    }
                    Class<?> Wwwwwwwwwwwwwwwwwwwwwwwww3 = converterArr[i].Wwwwwwwwwwwwwwwwwwwwwwwww();
                    int i3 = i2;
                    while (true) {
                        i2--;
                        if (i2 >= 0) {
                            if (i2 != i && converterArr[i2].Wwwwwwwwwwwwwwwwwwwwwwwww().isAssignableFrom(Wwwwwwwwwwwwwwwwwwwwwwwww3)) {
                                converterSet = converterSet.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i2, null);
                                converterArr = converterSet.f13796Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                                i3 = converterArr.length;
                                i = i3 - 1;
                            }
                        }
                    }
                    i2 = i3;
                }
                if (i2 == 1) {
                    return converterArr[0];
                }
                StringBuilder sb = new StringBuilder();
                sb.append("Unable to find best converter for type \"");
                sb.append(cls.getName());
                sb.append("\" from remaining set: ");
                for (int i4 = 0; i4 < i2; i4++) {
                    Converter converter2 = converterArr[i4];
                    Class<?> Wwwwwwwwwwwwwwwwwwwwwwwww4 = converter2.Wwwwwwwwwwwwwwwwwwwwwwwww();
                    sb.append(converter2.getClass().getName());
                    sb.append(AbstractJsonLexerKt.BEGIN_LIST);
                    if (Wwwwwwwwwwwwwwwwwwwwwwwww4 == null) {
                        name = null;
                    } else {
                        name = Wwwwwwwwwwwwwwwwwwwwwwwww4.getName();
                    }
                    sb.append(name);
                    sb.append("], ");
                }
                throw new IllegalStateException(sb.toString());
            }
        }
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f13796Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.length;
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
        */
    /* JADX WARN: Removed duplicated region for block: B:36:0x001f A[EDGE_INSN: B:36:0x001f->B:15:0x001f ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0012  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x001d -> B:6:0x000e). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x005a -> B:28:0x0052). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.joda.time.convert.Converter Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(java.lang.Class<?> r10) throws java.lang.IllegalStateException {
        /*
            r9 = this;
            org.joda.time.convert.ConverterSet$Entry[] r0 = r9.f13795Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            int r1 = r0.length
            r2 = 0
            if (r10 != 0) goto L7
            goto L1d
        L7:
            int r3 = r10.hashCode()
            int r4 = r1 + (-1)
            r3 = r3 & r4
        Le:
            r4 = r0[r3]
            if (r4 == 0) goto L1f
            java.lang.Class<?> r5 = r4.f13798Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            if (r5 != r10) goto L19
            org.joda.time.convert.Converter r10 = r4.f13797Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            return r10
        L19:
            int r3 = r3 + 1
            if (r3 < r1) goto Le
        L1d:
            r3 = r2
            goto Le
        L1f:
            org.joda.time.convert.Converter r4 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r9, r10)
            org.joda.time.convert.ConverterSet$Entry r5 = new org.joda.time.convert.ConverterSet$Entry
            r5.<init>(r10, r4)
            java.lang.Object r10 = r0.clone()
            org.joda.time.convert.ConverterSet$Entry[] r10 = (org.joda.time.convert.ConverterSet.Entry[]) r10
            r10[r3] = r5
            r0 = r2
        L31:
            if (r0 >= r1) goto L3d
            r3 = r10[r0]
            if (r3 != 0) goto L3a
            r9.f13795Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = r10
            return r4
        L3a:
            int r0 = r0 + 1
            goto L31
        L3d:
            int r0 = r1 << 1
            org.joda.time.convert.ConverterSet$Entry[] r3 = new org.joda.time.convert.ConverterSet.Entry[r0]
            r5 = r2
        L42:
            if (r5 >= r1) goto L61
            r6 = r10[r5]
            java.lang.Class<?> r7 = r6.f13798Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            if (r7 != 0) goto L4b
            goto L5a
        L4b:
            int r7 = r7.hashCode()
            int r8 = r0 + (-1)
            r7 = r7 & r8
        L52:
            r8 = r3[r7]
            if (r8 == 0) goto L5c
            int r7 = r7 + 1
            if (r7 < r0) goto L52
        L5a:
            r7 = r2
            goto L52
        L5c:
            r3[r7] = r6
            int r5 = r5 + 1
            goto L42
        L61:
            r9.f13795Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = r3
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: org.joda.time.convert.ConverterSet.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(java.lang.Class):org.joda.time.convert.Converter");
    }

    public ConverterSet Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, Converter[] converterArr) {
        Converter[] converterArr2 = this.f13796Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        int length = converterArr2.length;
        if (i < length) {
            if (converterArr != null) {
                converterArr[0] = converterArr2[i];
            }
            Converter[] converterArr3 = new Converter[length - 1];
            int i2 = 0;
            for (int i3 = 0; i3 < length; i3++) {
                if (i3 != i) {
                    converterArr3[i2] = converterArr2[i3];
                    i2++;
                }
            }
            return new ConverterSet(converterArr3);
        }
        throw new IndexOutOfBoundsException();
    }
}
