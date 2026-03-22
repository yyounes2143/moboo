package com.facebook.appevents.aam;

import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import com.facebook.appevents.codeless.internal.ViewHierarchy;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.google.firebase.crashlytics.internal.metadata.UserMetadata;
import com.mbridge.msdk.MBridgeConstans;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u000b\bÁ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\b\u0010\tJ\u001d\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\n\u0010\tJ+\u0010\u000e\u001a\u00020\r2\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0007H\u0007¢\u0006\u0004\b\u0012\u0010\u0013J%\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u00072\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u001d\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0017\u0010\t¨\u0006\u0018"}, d2 = {"Lcom/facebook/appevents/aam/MetadataMatcher;", "", "<init>", "()V", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/view/View;)Ljava/util/List;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "indicators", UserMetadata.KEYDATA_FILENAME, "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/List;Ljava/util/List;)Z", "text", "rule", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;)Z", "indicator", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/util/List;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class MetadataMatcher {
    @NotNull
    public static final MetadataMatcher INSTANCE = new MetadataMatcher();

    @JvmStatic
    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull String str2) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MetadataMatcher.class)) {
            return false;
        }
        try {
            return new Regex(str2).matches(str);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, MetadataMatcher.class);
            return false;
        }
    }

    @JvmStatic
    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull List<String> list, @NotNull List<String> list2) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MetadataMatcher.class)) {
            return false;
        }
        try {
            for (String str : list) {
                if (INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, list2)) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, MetadataMatcher.class);
            return false;
        }
    }

    @JvmStatic
    @NotNull
    public static final List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull View view) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MetadataMatcher.class)) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            arrayList.add(ViewHierarchy.Wwwwwwwwwwwwwwwwwwwwwwwwww(view));
            Object tag = view.getTag();
            if (tag != null) {
                arrayList.add(tag.toString());
            }
            CharSequence contentDescription = view.getContentDescription();
            if (contentDescription != null) {
                arrayList.add(contentDescription.toString());
            }
            int i = 0;
            try {
                if (view.getId() != -1) {
                    Object[] array = new Regex("/").split(view.getResources().getResourceName(view.getId()), 0).toArray(new String[0]);
                    if (array != null) {
                        String[] strArr = (String[]) array;
                        if (strArr.length == 2) {
                            arrayList.add(strArr[1]);
                        }
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                    }
                }
            } catch (Resources.NotFoundException unused) {
            }
            ArrayList arrayList2 = new ArrayList();
            int size = arrayList.size();
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                String str = (String) obj;
                if (str.length() > 0 && str.length() <= 100) {
                    arrayList2.add(str.toLowerCase());
                }
            }
            return arrayList2;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, MetadataMatcher.class);
            return null;
        }
    }

    @JvmStatic
    @NotNull
    public static final List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull View view) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(MetadataMatcher.class)) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            ViewGroup Wwwwwwwwwwwwwwwwwwwwwwwww2 = ViewHierarchy.Wwwwwwwwwwwwwwwwwwwwwwwww(view);
            if (Wwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                for (View view2 : ViewHierarchy.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwww2)) {
                    if (view != view2) {
                        arrayList.addAll(INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view2));
                    }
                }
            }
            return arrayList;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, MetadataMatcher.class);
            return null;
        }
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, List<String> list) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return false;
        }
        try {
            for (String str2 : list) {
                if (StringsKt.contains$default((CharSequence) str, (CharSequence) str2, false, 2, (Object) null)) {
                    return true;
                }
            }
            return false;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return false;
        }
    }

    public final List<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(View view) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            ArrayList arrayList = new ArrayList();
            if (view instanceof EditText) {
                return arrayList;
            }
            if (view instanceof TextView) {
                String obj = ((TextView) view).getText().toString();
                if (obj.length() > 0) {
                    if (obj.length() < 100) {
                        arrayList.add(obj.toLowerCase());
                        return arrayList;
                    }
                } else {
                    return arrayList;
                }
            } else {
                for (View view2 : ViewHierarchy.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view)) {
                    arrayList.addAll(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(view2));
                }
            }
            return arrayList;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }
}
