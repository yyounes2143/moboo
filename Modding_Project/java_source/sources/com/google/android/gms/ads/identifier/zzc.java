package com.google.android.gms.ads.identifier;

import androidx.annotation.WorkerThread;
import com.google.android.gms.internal.ads_identifier.zzi;
import com.tencent.thumbplayer.tcmedia.tplayer.plugins.report.TPReportParams;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzc {
    @WorkerThread
    public static final void zza(String str) {
        try {
            try {
                zzi.zzb(TPReportParams.LIVE_STEP_PLAY);
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                try {
                    int responseCode = httpURLConnection.getResponseCode();
                    if (responseCode < 200 || responseCode >= 300) {
                        new StringBuilder(String.valueOf(str).length() + 65);
                    }
                    zzi.zza();
                } finally {
                    httpURLConnection.disconnect();
                }
            } catch (IOException e) {
                e = e;
                new StringBuilder(String.valueOf(str).length() + 27 + String.valueOf(e.getMessage()).length());
                zzi.zza();
            } catch (IndexOutOfBoundsException e2) {
                new StringBuilder(String.valueOf(str).length() + 32 + String.valueOf(e2.getMessage()).length());
                zzi.zza();
            } catch (RuntimeException e3) {
                e = e3;
                new StringBuilder(String.valueOf(str).length() + 27 + String.valueOf(e.getMessage()).length());
                zzi.zza();
            }
        } catch (Throwable th) {
            zzi.zza();
            throw th;
        }
    }
}
