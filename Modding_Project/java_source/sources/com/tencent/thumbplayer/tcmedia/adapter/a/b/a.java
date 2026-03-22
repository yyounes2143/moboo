package com.tencent.thumbplayer.tcmedia.adapter.a.b;

import android.content.Context;
import android.content.SharedPreferences;
import com.tencent.thumbplayer.tcmedia.adapter.strategy.utils.TPNativeKeyMap;
import com.tencent.thumbplayer.tcmedia.adapter.strategy.utils.TPNativeKeyMapUtil;
import com.tencent.thumbplayer.tcmedia.api.TPCommonEnum;
import com.tencent.thumbplayer.tcmedia.core.common.TPNativeLibraryException;
import com.tencent.thumbplayer.tcmedia.core.common.TPThumbplayerCapabilityHelper;
import com.tencent.thumbplayer.tcmedia.utils.TPLogUtil;
import com.tencent.thumbplayer.tcmedia.utils.o;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes6.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static Set<String> f10511a = new HashSet();
    private static Set<String> b = new HashSet();

    public static synchronized void a(Context context) {
        synchronized (a.class) {
            TPLogUtil.i("TPDrmCapability", "TPDrmCapability, init");
            TPLogUtil.i("TPDrmCapability", "TPDrmCapability, get shared preferences.");
            SharedPreferences sharedPreferences = context.getSharedPreferences("TP_DRM_CAPABILITY", 0);
            try {
                f10511a = sharedPreferences.getStringSet("DRM_CAPABILITY_LIST", f10511a);
            } catch (ClassCastException e) {
                TPLogUtil.e("TPDrmCapability", e);
            }
            f10511a.removeAll(b);
            a(sharedPreferences);
        }
    }

    public static synchronized void b(@TPCommonEnum.TP_DRM_TYPE int i) {
        synchronized (a.class) {
            if (i == -1) {
                return;
            }
            b.add(String.valueOf(i));
            f10511a.removeAll(b);
        }
    }

    private static void a(final SharedPreferences sharedPreferences) {
        o.a().d().execute(new Runnable() { // from class: com.tencent.thumbplayer.tcmedia.adapter.a.b.a.1
            @Override // java.lang.Runnable
            public final void run() {
                int[] iArr = new int[0];
                try {
                    iArr = TPThumbplayerCapabilityHelper.getDRMCapabilities();
                } catch (TPNativeLibraryException unused) {
                }
                TPLogUtil.i("TPDrmCapability", "TPThumbPlayerCapabilityHelper, DRM capability:" + Arrays.toString(iArr));
                if (iArr.length != 0) {
                    HashSet hashSet = new HashSet();
                    for (int i : iArr) {
                        hashSet.add(String.valueOf(TPNativeKeyMapUtil.toTPIntValue(TPNativeKeyMap.MapDrmType.class, i)));
                    }
                    SharedPreferences.Editor edit = sharedPreferences.edit();
                    edit.putStringSet("DRM_CAPABILITY_LIST", hashSet);
                    edit.apply();
                    synchronized (a.class) {
                        Set unused2 = a.f10511a = hashSet;
                        a.f10511a.removeAll(a.b);
                    }
                }
            }
        });
    }

    public static synchronized boolean a(@TPCommonEnum.TP_DRM_TYPE int i) {
        synchronized (a.class) {
            if (i == -1) {
                return false;
            }
            for (String str : f10511a) {
                if (com.tencent.thumbplayer.tcmedia.utils.b.a(str, -1) == i) {
                    return true;
                }
            }
            return false;
        }
    }

    public static synchronized int[] a() {
        int[] iArr;
        synchronized (a.class) {
            iArr = new int[f10511a.size()];
            int i = 0;
            for (String str : f10511a) {
                int i2 = i + 1;
                iArr[i] = com.tencent.thumbplayer.tcmedia.utils.b.a(str, -1);
                i = i2;
            }
        }
        return iArr;
    }
}
