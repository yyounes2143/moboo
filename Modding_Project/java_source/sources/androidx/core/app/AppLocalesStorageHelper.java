package androidx.core.app;

import androidx.annotation.RestrictTo;
/* compiled from: Proguard */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class AppLocalesStorageHelper {
    static final String APPLICATION_LOCALES_RECORD_FILE = "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file";
    static final boolean DEBUG = false;
    static final String LOCALE_RECORD_ATTRIBUTE_TAG = "application_locales";
    static final String LOCALE_RECORD_FILE_TAG = "locales";
    static final String TAG = "AppLocalesStorageHelper";
    private static final Object sAppLocaleStorageSync = new Object();

    private AppLocalesStorageHelper() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x003c, code lost:
        if (r5 != null) goto L20;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void persistLocales(android.content.Context r5, java.lang.String r6) {
        /*
            r0 = 0
            java.lang.Object r1 = androidx.core.app.AppLocalesStorageHelper.sAppLocaleStorageSync
            monitor-enter(r1)
            java.lang.String r2 = ""
            boolean r2 = r6.equals(r2)     // Catch: java.lang.Throwable -> L13
            if (r2 == 0) goto L15
            java.lang.String r6 = "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"
            r5.deleteFile(r6)     // Catch: java.lang.Throwable -> L13
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L13
            return
        L13:
            r5 = move-exception
            goto L5c
        L15:
            java.lang.String r2 = "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"
            java.io.FileOutputStream r5 = r5.openFileOutput(r2, r0)     // Catch: java.lang.Throwable -> L13 java.io.FileNotFoundException -> L4e
            org.xmlpull.v1.XmlSerializer r0 = android.util.Xml.newSerializer()     // Catch: java.lang.Throwable -> L13
            r2 = 0
            r0.setOutput(r5, r2)     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L49
            java.lang.String r3 = "UTF-8"
            java.lang.Boolean r4 = java.lang.Boolean.TRUE     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L49
            r0.startDocument(r3, r4)     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L49
            java.lang.String r3 = "locales"
            r0.startTag(r2, r3)     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L49
            java.lang.String r3 = "application_locales"
            r0.attribute(r2, r3, r6)     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L49
            java.lang.String r6 = "locales"
            r0.endTag(r2, r6)     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L49
            r0.endDocument()     // Catch: java.lang.Throwable -> L42 java.lang.Exception -> L49
            if (r5 == 0) goto L4c
        L3e:
            r5.close()     // Catch: java.lang.Throwable -> L13 java.io.IOException -> L4c
            goto L4c
        L42:
            r6 = move-exception
            if (r5 == 0) goto L48
            r5.close()     // Catch: java.lang.Throwable -> L13 java.io.IOException -> L48
        L48:
            throw r6     // Catch: java.lang.Throwable -> L13
        L49:
            if (r5 == 0) goto L4c
            goto L3e
        L4c:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L13
            goto L5b
        L4e:
            java.lang.String r5 = "Storing App Locales : FileNotFoundException: Cannot open file %s for writing "
            r6 = 1
            java.lang.Object[] r6 = new java.lang.Object[r6]     // Catch: java.lang.Throwable -> L13
            java.lang.String r2 = "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"
            r6[r0] = r2     // Catch: java.lang.Throwable -> L13
            java.lang.String.format(r5, r6)     // Catch: java.lang.Throwable -> L13
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L13
        L5b:
            return
        L5c:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L13
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.app.AppLocalesStorageHelper.persistLocales(android.content.Context, java.lang.String):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x002e, code lost:
        if (r5 != 4) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x003b, code lost:
        if (r3.getName().equals(androidx.core.app.AppLocalesStorageHelper.LOCALE_RECORD_FILE_TAG) == false) goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x003d, code lost:
        r1 = r3.getAttributeValue(null, androidx.core.app.AppLocalesStorageHelper.LOCALE_RECORD_ATTRIBUTE_TAG);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0044, code lost:
        if (r2 != null) goto L25;
     */
    /* JADX WARN: Removed duplicated region for block: B:35:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x005c A[Catch: all -> 0x004a, TryCatch #5 {, blocks: (B:5:0x0005, B:24:0x0046, B:33:0x0055, B:37:0x0061, B:36:0x005c, B:29:0x004e, B:30:0x0051, B:39:0x0063, B:6:0x000b, B:7:0x0018, B:11:0x0022, B:20:0x0031, B:22:0x003d), top: B:47:0x0005, inners: #2, #6 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String readLocales(android.content.Context r8) {
        /*
            java.lang.Object r0 = androidx.core.app.AppLocalesStorageHelper.sAppLocaleStorageSync
            monitor-enter(r0)
            java.lang.String r1 = ""
            java.lang.String r2 = "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"
            java.io.FileInputStream r2 = r8.openFileInput(r2)     // Catch: java.lang.Throwable -> L4a java.io.FileNotFoundException -> L63
            org.xmlpull.v1.XmlPullParser r3 = android.util.Xml.newPullParser()     // Catch: java.lang.Throwable -> L29 java.lang.Throwable -> L52
            java.lang.String r4 = "UTF-8"
            r3.setInput(r2, r4)     // Catch: java.lang.Throwable -> L29 java.lang.Throwable -> L52
            int r4 = r3.getDepth()     // Catch: java.lang.Throwable -> L29 java.lang.Throwable -> L52
        L18:
            int r5 = r3.next()     // Catch: java.lang.Throwable -> L29 java.lang.Throwable -> L52
            r6 = 1
            if (r5 == r6) goto L44
            r6 = 3
            if (r5 != r6) goto L2b
            int r7 = r3.getDepth()     // Catch: java.lang.Throwable -> L29 java.lang.Throwable -> L52
            if (r7 <= r4) goto L44
            goto L2b
        L29:
            r8 = move-exception
            goto L4c
        L2b:
            if (r5 == r6) goto L18
            r6 = 4
            if (r5 != r6) goto L31
            goto L18
        L31:
            java.lang.String r5 = r3.getName()     // Catch: java.lang.Throwable -> L29 java.lang.Throwable -> L52
            java.lang.String r6 = "locales"
            boolean r5 = r5.equals(r6)     // Catch: java.lang.Throwable -> L29 java.lang.Throwable -> L52
            if (r5 == 0) goto L18
            java.lang.String r4 = "application_locales"
            r5 = 0
            java.lang.String r1 = r3.getAttributeValue(r5, r4)     // Catch: java.lang.Throwable -> L29 java.lang.Throwable -> L52
        L44:
            if (r2 == 0) goto L55
        L46:
            r2.close()     // Catch: java.lang.Throwable -> L4a java.io.IOException -> L55
            goto L55
        L4a:
            r8 = move-exception
            goto L65
        L4c:
            if (r2 == 0) goto L51
            r2.close()     // Catch: java.lang.Throwable -> L4a java.io.IOException -> L51
        L51:
            throw r8     // Catch: java.lang.Throwable -> L4a
        L52:
            if (r2 == 0) goto L55
            goto L46
        L55:
            boolean r2 = r1.isEmpty()     // Catch: java.lang.Throwable -> L4a
            if (r2 != 0) goto L5c
            goto L61
        L5c:
            java.lang.String r2 = "androidx.appcompat.app.AppCompatDelegate.application_locales_record_file"
            r8.deleteFile(r2)     // Catch: java.lang.Throwable -> L4a
        L61:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L4a
            return r1
        L63:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L4a
            return r1
        L65:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L4a
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.app.AppLocalesStorageHelper.readLocales(android.content.Context):java.lang.String");
    }
}
