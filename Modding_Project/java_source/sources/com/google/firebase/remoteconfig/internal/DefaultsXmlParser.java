package com.google.firebase.remoteconfig.internal;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class DefaultsXmlParser {
    private static final String XML_TAG_ENTRY = "entry";
    private static final String XML_TAG_KEY = "key";
    private static final String XML_TAG_VALUE = "value";

    /* JADX WARN: Removed duplicated region for block: B:37:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0070 A[Catch: IOException | XmlPullParserException -> 0x0079, TryCatch #0 {IOException | XmlPullParserException -> 0x0079, blocks: (B:3:0x0005, B:6:0x000c, B:11:0x001e, B:41:0x0074, B:14:0x0026, B:18:0x0036, B:24:0x0042, B:39:0x006b, B:40:0x0070, B:29:0x0051, B:32:0x005b), top: B:45:0x0005 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.Map<java.lang.String, java.lang.String> getDefaultsFromXml(android.content.Context r7, int r8) {
        /*
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            android.content.res.Resources r7 = r7.getResources()     // Catch: java.lang.Throwable -> L79
            if (r7 != 0) goto Lc
            return r0
        Lc:
            android.content.res.XmlResourceParser r7 = r7.getXml(r8)     // Catch: java.lang.Throwable -> L79
            int r8 = r7.getEventType()     // Catch: java.lang.Throwable -> L79
            r1 = 0
            r2 = r1
            r3 = r2
            r4 = r3
        L18:
            r5 = 1
            if (r8 == r5) goto L79
            r6 = 2
            if (r8 != r6) goto L23
            java.lang.String r2 = r7.getName()     // Catch: java.lang.Throwable -> L79
            goto L74
        L23:
            r6 = 3
            if (r8 != r6) goto L3d
            java.lang.String r8 = r7.getName()     // Catch: java.lang.Throwable -> L79
            java.lang.String r2 = "entry"
            boolean r8 = r8.equals(r2)     // Catch: java.lang.Throwable -> L79
            if (r8 == 0) goto L3b
            if (r3 == 0) goto L39
            if (r4 == 0) goto L39
            r0.put(r3, r4)     // Catch: java.lang.Throwable -> L79
        L39:
            r3 = r1
            r4 = r3
        L3b:
            r2 = r1
            goto L74
        L3d:
            r6 = 4
            if (r8 != r6) goto L74
            if (r2 == 0) goto L74
            int r8 = r2.hashCode()     // Catch: java.lang.Throwable -> L79
            r6 = 106079(0x19e5f, float:1.48648E-40)
            if (r8 == r6) goto L5b
            r6 = 111972721(0x6ac9171, float:6.4912916E-35)
            if (r8 == r6) goto L51
            goto L65
        L51:
            java.lang.String r8 = "value"
            boolean r8 = r2.equals(r8)     // Catch: java.lang.Throwable -> L79
            if (r8 == 0) goto L65
            r8 = r5
            goto L66
        L5b:
            java.lang.String r8 = "key"
            boolean r8 = r2.equals(r8)     // Catch: java.lang.Throwable -> L79
            if (r8 == 0) goto L65
            r8 = 0
            goto L66
        L65:
            r8 = -1
        L66:
            if (r8 == 0) goto L70
            if (r8 == r5) goto L6b
            goto L74
        L6b:
            java.lang.String r4 = r7.getText()     // Catch: java.lang.Throwable -> L79
            goto L74
        L70:
            java.lang.String r3 = r7.getText()     // Catch: java.lang.Throwable -> L79
        L74:
            int r8 = r7.next()     // Catch: java.lang.Throwable -> L79
            goto L18
        L79:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.remoteconfig.internal.DefaultsXmlParser.getDefaultsFromXml(android.content.Context, int):java.util.Map");
    }
}
