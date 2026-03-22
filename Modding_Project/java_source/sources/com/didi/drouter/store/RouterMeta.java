package com.didi.drouter.store;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import com.didi.drouter.router.IRouterHandler;
import com.didi.drouter.router.IRouterInterceptor;
import com.didi.drouter.service.IFeatureMatcher;
import com.didi.drouter.utils.RouterLogger;
import com.didi.drouter.utils.TextUtils;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: Proguard */
@RestrictTo({RestrictTo.Scope.LIBRARY})
/* loaded from: classes3.dex */
public class RouterMeta {

    /* renamed from: Wwwwwwwww  reason: collision with root package name */
    public static Pattern f5787Wwwwwwwww = Pattern.compile("<[a-zA-Z_]+\\w*>");

    /* renamed from: Wwwwwwwwww  reason: collision with root package name */
    public static String f5788Wwwwwwwwww = "<[a-zA-Z_]+\\w*>";

    /* renamed from: Wwwwwwwwwww  reason: collision with root package name */
    public static int f5789Wwwwwwwwwww = 6;

    /* renamed from: Wwwwwwwwwwww  reason: collision with root package name */
    public static int f5790Wwwwwwwwwwww = 5;

    /* renamed from: Wwwwwwwwwwwww  reason: collision with root package name */
    public static int f5791Wwwwwwwwwwwww = 4;

    /* renamed from: Wwwwwwwwwwwwww  reason: collision with root package name */
    public int f5792Wwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f5793Wwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public Object f5794Wwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public IFeatureMatcher<?> f5795Wwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f5796Wwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public IRouterHandler f5797Wwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Intent f5798Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f5799Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f5800Wwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String[] f5801Wwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Class<? extends IRouterInterceptor>[] f5802Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f5803Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Boolean[] f5804Wwwwwwwwwwwwwwwwwwwwwwwwww = new Boolean[3];
    @NonNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f5805Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NonNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f5806Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NonNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f5807Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f5808Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f5809Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public IRouterProxy f5810Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Class<?> f5811Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f5812Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public RouterMeta(int i) {
        this.f5812Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
    }

    public static RouterMeta Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        return new RouterMeta(i);
    }

    public void Wwwww(Object obj) {
        this.f5794Wwwwwwwwwwwwwwww = obj;
        this.f5808Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
    }

    public void Wwwwww(@NonNull IRouterHandler iRouterHandler) {
        this.f5797Wwwwwwwwwwwwwwwwwww = iRouterHandler;
        this.f5808Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = true;
    }

    public boolean Wwwwwww() {
        if (!TextUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5807Wwwwwwwwwwwwwwwwwwwwwwwwwwwww) && !TextUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5806Wwwwwwwwwwwwwwwwwwwwwwwwwwww) && !TextUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5805Wwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            return false;
        }
        return true;
    }

    public boolean Wwwwwwww(Uri uri) {
        String str;
        String str2;
        String str3;
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = TextUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(uri.getScheme());
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = TextUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(uri.getHost());
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 = TextUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(uri.getPath());
        if (Wwwwwwwwwwwwww(0, this.f5807Wwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            str = this.f5807Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.replaceAll(f5788Wwwwwwwwww, "[^/]*");
        } else {
            str = this.f5807Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        if (Wwwwwwwwwwwwww(1, this.f5806Wwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            str2 = this.f5806Wwwwwwwwwwwwwwwwwwwwwwwwwwww.replaceAll(f5788Wwwwwwwwww, "[^/]*");
        } else {
            str2 = this.f5806Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        if (Wwwwwwwwwwwwww(2, this.f5805Wwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            str3 = this.f5805Wwwwwwwwwwwwwwwwwwwwwwwwwww.replaceAll(f5788Wwwwwwwwww, "[^/]*");
        } else {
            str3 = this.f5805Wwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null || !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.matches(str) || Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 == null || !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3.matches(str2) || Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4 == null || !Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww4.matches(str3)) {
            return false;
        }
        return true;
    }

    public boolean Wwwwwwwww() {
        return this.f5799Wwwwwwwwwwwwwwwwwwwww;
    }

    public boolean Wwwwwwwwww() {
        return this.f5793Wwwwwwwwwwwwwww;
    }

    public boolean Wwwwwwwwwww() {
        return this.f5808Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public boolean Wwwwwwwwwwww(Uri uri, Bundle bundle) {
        if (!Wwwwwwwwwwwww(0, this.f5807Wwwwwwwwwwwwwwwwwwwwwwwwwwwww, uri.getScheme(), bundle) || !Wwwwwwwwwwwww(1, this.f5806Wwwwwwwwwwwwwwwwwwwwwwwwwwww, uri.getHost(), bundle) || !Wwwwwwwwwwwww(2, this.f5805Wwwwwwwwwwwwwwwwwwwwwwwwwww, uri.getPath(), bundle)) {
            return false;
        }
        return true;
    }

    public final boolean Wwwwwwwwwwwww(int i, @NonNull String str, @Nullable String str2, Bundle bundle) {
        String str3;
        if (!Wwwwwwwwwwwwww(i, str) || str2 == null) {
            return true;
        }
        Bundle bundle2 = new Bundle();
        String str4 = "@@" + str + "$$";
        String str5 = "@@" + str2 + "$$";
        String[] split = str4.split(f5788Wwwwwwwwww);
        int i2 = 0;
        while (i2 < split.length) {
            int i3 = i2 + 1;
            if (i3 < split.length) {
                String str6 = split[i2];
                String substring = str4.substring(str6.length());
                if (!str5.startsWith(str6)) {
                    break;
                }
                String substring2 = str5.substring(str6.length());
                Matcher matcher = f5787Wwwwwwwww.matcher(substring);
                if (!matcher.find()) {
                    str3 = "";
                } else {
                    str3 = matcher.group();
                }
                String replace = str3.replace("<", "").replace(">", "");
                int indexOf = substring2.indexOf(split[i3]);
                String substring3 = substring2.substring(0, indexOf);
                if (TextUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(replace)) {
                    break;
                }
                bundle2.putString(replace, substring3);
                str4 = substring.substring(str3.length());
                str5 = substring2.substring(indexOf);
            } else if (str5.equals(str4)) {
                RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("inject <> success, annoPart=%s, uriPart=%s, result=%s", str, str2, bundle2);
                bundle.putAll(bundle2);
                return true;
            }
            i2 = i3;
        }
        RouterLogger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("inject place holder error, annoPart=%s, uriPart=%s", str, str2);
        return false;
    }

    public final boolean Wwwwwwwwwwwwww(int i, String str) {
        Boolean bool = this.f5804Wwwwwwwwwwwwwwwwwwwwwwwwww[i];
        if (bool != null && !bool.booleanValue()) {
            return false;
        }
        Boolean[] boolArr = this.f5804Wwwwwwwwwwwwwwwwwwwwwwwwww;
        boolean find = f5787Wwwwwwwww.matcher(str).find();
        boolArr[i] = Boolean.valueOf(find);
        return find;
    }

    public int Wwwwwwwwwwwwwww() {
        return this.f5800Wwwwwwwwwwwwwwwwwwwwww;
    }

    public String Wwwwwwwwwwwwwwww() {
        String str = this.f5803Wwwwwwwwwwwwwwwwwwwwwwwww;
        if (str != null) {
            return str.substring(str.lastIndexOf(".") + 1);
        }
        Class<?> cls = this.f5811Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (cls != null) {
            return cls.getSimpleName();
        }
        IRouterHandler iRouterHandler = this.f5797Wwwwwwwwwwwwwwwwwww;
        if (iRouterHandler != null) {
            return iRouterHandler.getClass().getName().substring(this.f5797Wwwwwwwwwwwwwwwwwww.getClass().getName().lastIndexOf(".") + 1);
        }
        return null;
    }

    public String Wwwwwwwwwwwwwwwww() {
        return this.f5796Wwwwwwwwwwwwwwwwww;
    }

    public int Wwwwwwwwwwwwwwwwww() {
        return this.f5812Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public IRouterProxy Wwwwwwwwwwwwwwwwwww() {
        return this.f5810Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public Class<?> Wwwwwwwwwwwwwwwwwwww() {
        return this.f5811Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public int Wwwwwwwwwwwwwwwwwwwww() {
        return this.f5809Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public Class<? extends IRouterInterceptor>[] Wwwwwwwwwwwwwwwwwwwwww() {
        return this.f5802Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public String[] Wwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5801Wwwwwwwwwwwwwwwwwwwwwww;
    }

    public Intent Wwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5798Wwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public IFeatureMatcher Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5795Wwwwwwwwwwwwwwwww;
    }

    public Object Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5794Wwwwwwwwwwwwwwww;
    }

    public IRouterHandler Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5797Wwwwwwwwwwwwwwwwwww;
    }

    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5792Wwwwwwwwwwwwww;
    }

    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5803Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public RouterMeta Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Class<?> cls, IRouterProxy iRouterProxy, String str, IFeatureMatcher<?> iFeatureMatcher, int i, int i2) {
        this.f5811Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cls;
        this.f5810Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = iRouterProxy;
        this.f5796Wwwwwwwwwwwwwwwwww = str;
        this.f5795Wwwwwwwwwwwwwwwww = iFeatureMatcher;
        this.f5809Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f5792Wwwwwwwwwwwwww = i2;
        return this;
    }

    public RouterMeta Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, String str2, String str3, Class<?> cls, IRouterProxy iRouterProxy, Class<? extends IRouterInterceptor>[] clsArr, String[] strArr, int i, int i2, boolean z) {
        this.f5807Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = TextUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        this.f5806Wwwwwwwwwwwwwwwwwwwwwwwwwwww = TextUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str2);
        this.f5805Wwwwwwwwwwwwwwwwwwwwwwwwwww = TextUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str3);
        this.f5811Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cls;
        this.f5810Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = iRouterProxy;
        this.f5802Wwwwwwwwwwwwwwwwwwwwwwww = clsArr;
        this.f5801Wwwwwwwwwwwwwwwwwwwwwww = strArr;
        this.f5800Wwwwwwwwwwwwwwwwwwwwww = i;
        this.f5809Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i2;
        this.f5799Wwwwwwwwwwwwwwwwwwwww = z;
        return this;
    }

    public RouterMeta Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Intent intent) {
        this.f5798Wwwwwwwwwwwwwwwwwwww = intent;
        return this;
    }

    public RouterMeta Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Class<? extends IRouterInterceptor> cls, IRouterProxy iRouterProxy, int i, boolean z, int i2) {
        this.f5811Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cls;
        this.f5810Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = iRouterProxy;
        this.f5809Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f5793Wwwwwwwwwwwwwww = z;
        this.f5792Wwwwwwwwwwwwww = i2;
        return this;
    }
}
