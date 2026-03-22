package com.tencent.liteav.txcvodplayer.b;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class a {

    /* compiled from: Proguard */
    /* renamed from: com.tencent.liteav.txcvodplayer.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public static class C0207a {

        /* renamed from: a  reason: collision with root package name */
        public static final a f10316a = new a((byte) 0);
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface b {
        void a();

        void a(String str, Map<String, String> map);
    }

    public /* synthetic */ a(byte b2) {
        this();
    }

    public static /* synthetic */ Map a(Map map) {
        HashMap hashMap = new HashMap();
        for (Map.Entry entry : map.entrySet()) {
            if (!TextUtils.isEmpty((CharSequence) entry.getKey())) {
                hashMap.put(entry.getKey(), ((List) entry.getValue()).get(0));
            }
        }
        return hashMap;
    }

    private a() {
    }
}
