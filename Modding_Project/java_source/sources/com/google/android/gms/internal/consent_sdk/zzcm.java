package com.google.android.gms.internal.consent_sdk;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.mbridge.msdk.foundation.tools.SameMD5;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcm {
    @Nullable
    @GuardedBy("DeviceId.class")
    private static String zza;

    public static synchronized String zza(Context context) {
        String str;
        String string;
        synchronized (zzcm.class) {
            try {
                if (zza == null) {
                    ContentResolver contentResolver = context.getContentResolver();
                    if (contentResolver == null) {
                        string = null;
                    } else {
                        string = Settings.Secure.getString(contentResolver, "android_id");
                    }
                    if (string != null) {
                        if (zzcu.zza(true)) {
                        }
                        zza = zzb(string);
                    }
                    string = "emulator";
                    zza = zzb(string);
                }
                str = zza;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }

    private static String zzb(String str) {
        for (int i = 0; i < 3; i++) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance(SameMD5.TAG);
                messageDigest.update(str.getBytes());
                return String.format("%032X", new BigInteger(1, messageDigest.digest()));
            } catch (ArithmeticException unused) {
                return "";
            } catch (NoSuchAlgorithmException unused2) {
            }
        }
        return "";
    }
}
