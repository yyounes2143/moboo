package com.google.android.engage.service;

import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import java.util.Locale;
/* compiled from: Proguard */
@KeepForSdk
/* loaded from: classes4.dex */
public class AppEngageException extends ApiException {
    public AppEngageException(int i) {
        super(new Status(i, zza(i)));
        if (i == 0) {
            throw new IllegalArgumentException("errorCode should not be 0.");
        }
    }

    private static String zza(int i) {
        return String.format(Locale.getDefault(), "App Engage Service Error: %d", Integer.valueOf(i));
    }

    public int getErrorCode() {
        return super.getStatusCode();
    }

    @Override // com.google.android.gms.common.api.ApiException
    public int getStatusCode() {
        return super.getStatusCode();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AppEngageException(int r4, @androidx.annotation.NonNull java.lang.String r5) {
        /*
            r3 = this;
            com.google.android.gms.common.api.Status r0 = new com.google.android.gms.common.api.Status
            java.lang.String r1 = zza(r4)
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r1)
            java.lang.String r1 = "\n"
            r2.append(r1)
            r2.append(r5)
            java.lang.String r5 = r2.toString()
            r0.<init>(r4, r5)
            r3.<init>(r0)
            if (r4 == 0) goto L23
            return
        L23:
            java.lang.IllegalArgumentException r4 = new java.lang.IllegalArgumentException
            java.lang.String r5 = "errorCode should not be 0."
            r4.<init>(r5)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.engage.service.AppEngageException.<init>(int, java.lang.String):void");
    }
}
