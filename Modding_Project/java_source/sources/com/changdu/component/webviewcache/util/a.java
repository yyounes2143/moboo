package com.changdu.component.webviewcache.util;

import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import androidx.collection.ArraySet;
import androidx.core.os.ConfigurationCompat;
import com.changdu.component.core.CDComponent;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import okhttp3.Headers;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    public static int f5434a;
    public static int b;
    public static int c;

    public static HashMap a(Headers headers) {
        HashMap hashMap = new HashMap();
        for (String str : headers.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            StringBuilder sb = new StringBuilder();
            List<String> Wwwwwwwwwwwwwwwwwwwwwwwww2 = headers.Wwwwwwwwwwwwwwwwwwwwwwwww(str);
            ArraySet arraySet = new ArraySet(Wwwwwwwwwwwwwwwwwwwwwwwww2.size());
            arraySet.addAll(Wwwwwwwwwwwwwwwwwwwwwwwww2);
            Iterator it = arraySet.iterator();
            while (it.hasNext()) {
                String str2 = (String) it.next();
                if (!TextUtils.isEmpty(sb)) {
                    sb.append(" ");
                }
                sb.append(str2);
            }
            hashMap.put(str, sb.toString().trim());
        }
        return hashMap;
    }

    public static String a() {
        Locale locale;
        try {
            Context context = CDComponent.getInstance().getContext();
            if (f5434a == 0 || b == 0) {
                try {
                    DisplayMetrics displayMetrics = new DisplayMetrics();
                    ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRealMetrics(displayMetrics);
                    float f = displayMetrics.density;
                    f5434a = (int) (displayMetrics.widthPixels / f);
                    b = (int) (displayMetrics.heightPixels / f);
                    Resources resources = context.getResources();
                    c = (int) (resources.getDimensionPixelSize(resources.getIdentifier("status_bar_height", "dimen", "android")) / displayMetrics.density);
                } catch (Exception unused) {
                }
            }
            StringBuilder sb = new StringBuilder("changdu/1.0 (");
            sb.append(CDComponent.getInstance().getSid());
            sb.append(" ");
            sb.append(Uri.encode(CDComponent.getInstance().getUserNickname()));
            sb.append(" ");
            sb.append(CDComponent.getInstance().getAndroidId());
            sb.append(" ");
            sb.append(CDComponent.getInstance().getGoogleAdId());
            sb.append(" ;");
            sb.append(Uri.encode(CDComponent.getInstance().getAppName()));
            sb.append(" ");
            sb.append(CDComponent.getInstance().getAppVersion());
            sb.append(" ");
            sb.append(context.getPackageName());
            sb.append(" ");
            sb.append(CDComponent.getInstance().getChannel());
            sb.append(";");
            sb.append(CDComponent.getInstance().getCoreVersion());
            sb.append(" ");
            sb.append(CDComponent.getInstance().getAppId());
            sb.append(" ");
            sb.append(CDComponent.getInstance().getServerProtocolVersion());
            sb.append(" ");
            sb.append(CDComponent.getInstance().getLangId());
            sb.append(" ");
            sb.append(CDComponent.getInstance().getMt());
            sb.append(" ");
            sb.append(CDComponent.getInstance().getProductX());
            sb.append(";");
            sb.append(Uri.encode(Build.MANUFACTURER));
            sb.append(" ");
            sb.append(Uri.encode(Build.MODEL));
            sb.append(" ");
            sb.append(Build.VERSION.RELEASE);
            sb.append(" ");
            try {
                locale = ConfigurationCompat.getLocales(Resources.getSystem().getConfiguration()).get(0);
            } catch (Exception unused2) {
                locale = Locale.getDefault();
            }
            sb.append(locale.toString());
            sb.append(";");
            sb.append(f5434a);
            sb.append(" ");
            sb.append(b);
            sb.append(" ");
            sb.append(c);
            sb.append(" ");
            sb.append(CDComponent.getInstance().getWebViewToolbarHeightInDP());
            sb.append(") pandora/0.1");
            return sb.toString();
        } catch (Exception unused3) {
            return "";
        }
    }
}
