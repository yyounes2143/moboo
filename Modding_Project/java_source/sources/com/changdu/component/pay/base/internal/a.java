package com.changdu.component.pay.base.internal;

import android.content.Context;
import android.os.Build;
import android.util.Base64;
import com.mbridge.msdk.foundation.tools.SameMD5;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.util.Locale;
import kotlin.text.Charsets;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f5342a = new a();

    public static String a(String str) {
        byte[] bArr;
        try {
            try {
                bArr = Base64.decode(str, 0);
            } catch (Exception unused) {
                bArr = new byte[0];
            }
            return new String(bArr, Charset.forName("UTF-8"));
        } catch (Exception unused2) {
            return "";
        }
    }

    public static String b(String str) {
        try {
            byte[] digest = MessageDigest.getInstance(SameMD5.TAG).digest(str.getBytes(Charsets.UTF_8));
            StringBuilder sb = new StringBuilder();
            for (byte b : digest) {
                int i = b & 255;
                if (i < 16) {
                    sb.append(0);
                }
                sb.append(Integer.toHexString(i));
            }
            return sb.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    public static String c() {
        return Build.VERSION.RELEASE;
    }

    public static String d() {
        return Build.VERSION.SDK;
    }

    public static int a(Context context) {
        return context.getResources().getDisplayMetrics().heightPixels;
    }

    public static String a() {
        return Locale.getDefault().getCountry();
    }

    public static int b(Context context) {
        return context.getResources().getDisplayMetrics().widthPixels;
    }

    public static String b() {
        return Build.MODEL;
    }
}
